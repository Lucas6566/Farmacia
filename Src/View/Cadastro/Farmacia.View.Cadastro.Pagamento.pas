unit Farmacia.View.Cadastro.Pagamento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Farmacia.View.Cadastro.Pai, Data.DB,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinBlack,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  cxDBData,
  cxImageComboBox,
  cxContainer,
  Vcl.StdCtrls,
  cxLabel,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridCardView,
  cxGridDBCardView,
  cxClasses,
  cxGridCustomView,
  cxGridCustomLayoutView,
  cxGrid,
  Farmacia.Controller.Cadastros.Interfaces,
  Farmacia.Controller.Cadastros,
  Farmacia.Util.Types, Farmacia.Util.FunctionSQL, cxCurrencyEdit;

type
  TFormCadastroPagamento = class(TFormCadastroPai)
    pnlParcelas: TPanel;
    pnlFormaPagto: TPanel;
    pnlFiltro: TPanel;
    Panel3: TPanel;
    GridForma: TcxGrid;
    GridFormaDBCard: TcxGridDBCardView;
    GridDescricao: TcxGridDBCardViewRow;
    GridFormaLevel: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    lblSubTotal: TLabel;
    lblVlrDesconto: TLabel;
    lblVlrAcrescimo: TLabel;
    lblRecebido: TLabel;
    lblReceber: TLabel;
    lblVlrTotal: TLabel;
    Bevel3: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    lblVlrFrete: TLabel;
    cxLabel5: TcxLabel;
    GridTipo: TcxGridDBCardViewRow;
    procedure GridFormaDBCardCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SpbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FSeqPagamento : Integer;
    FSeqMovimento : Integer;

    FSubTotal   : Double;
    FFrete      : Double;
    FDesconto   : Double;
    FAcrescimo  : Double;
    FTotal      : Double;
    FPagar      : Double;
    FPago       : Double;

    procedure OpenRegister;
    procedure LoadTotais;
    procedure LoadCaption;
    procedure IncludeData;
    procedure IncludeRegister;
    procedure SetCodigoPag;
    procedure VerCondPagamento;
  public
    class function PagamentoShow(pTypeOperation : TTypeOperation; pDados: iControllerCadastros): Boolean;
  end;

var
  FormCadastroPagamento: TFormCadastroPagamento;

implementation

{$R *.dfm}

{ TFormCadastroPagamento }

procedure TFormCadastroPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  FSeqMovimento := 0;
end;

procedure TFormCadastroPagamento.GridFormaDBCardCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  VerCondPagamento;
end;

procedure TFormCadastroPagamento.IncludeData;
begin
  FDados
    .MovimentoPag
	    .Cadastro
        .SeqPagamento(FSeqPagamento)
        .CodMovimento(FDados.MovimentoCab.Cadastro.GetCodMovimento)
        .SeqMovimento(FSeqMovimento)
        .CodPagamento(DS.DataSet.FieldByName('COD_PAGAMENTO').AsInteger)
        .DesPagamento(DS.DataSet.FieldByName('DES_PAGAMENTO').AsString)
        .VlrReceber(FPago);
end;

procedure TFormCadastroPagamento.IncludeRegister;
begin
  case FTypeOperation of
    TpInsert : begin
      FDados
        .MovimentoPag
          .Insert;
    end;

    TpUpdate : begin
      FDados
        .MovimentoPag
          .Update;
    end;

    TpDelete : begin
      FDados
        .MovimentoPag
          .Delete;
    end;
  end;
end;

procedure TFormCadastroPagamento.LoadCaption;
begin
  lblSubTotal.Caption     := FormatFloat('R$ #,###,##0.00', FSubTotal);
  lblVlrFrete.Caption     := FormatFloat('R$ #,###,##0.00', FFrete);
  lblVlrDesconto.Caption  := FormatFloat('R$ #,###,##0.00', FDesconto);
  lblVlrAcrescimo.Caption := FormatFloat('R$ #,###,##0.00', FAcrescimo);
  lblVlrTotal.Caption     := FormatFloat('R$ #,###,##0.00', FTotal);

  lblReceber.Caption      := FormatFloat('R$ #,###,##0.00', FPagar);
  lblRecebido.Caption     := FormatFloat('R$ #,###,##0.00', FPago);
end;

procedure TFormCadastroPagamento.LoadTotais;
begin
  FSubTotal   := FDados.MovimentoCab.Cadastro.GetVlrSubtotal;
  FFrete      := FDados.MovimentoCab.Cadastro.GetVlrFrete;
  FDesconto   := FDados.MovimentoCab.Cadastro.GetVlrDesconto;
  FAcrescimo  := FDados.MovimentoCab.Cadastro.GetVlrAcrescimo;
  FTotal      := FDados.MovimentoCab.Cadastro.GetVlrTotal;
  FPagar      := FDados.MovimentoCab.Cadastro.GetVlrTotal;
  FPago       := 0;
end;

procedure TFormCadastroPagamento.OpenRegister;
begin
  case FTypeOperation of
    TpDelete: begin
      //
    end
    else begin
      if FTypeOperation = TpInsert then
        SetCodigoPag;
      LoadTotais;
      LoadCaption;
      DS.DataSet := FDados.FormaPagamento.DataSet;
      FDados.FormaPagamento.Select;
    end;
  end;

end;

class function TFormCadastroPagamento.PagamentoShow(
  pTypeOperation: TTypeOperation; pDados: iControllerCadastros): Boolean;
begin
  Result := False;
  FormCadastroPagamento := TFormCadastroPagamento.Create(nil);
  try
    FormCadastroPagamento.FTypeOperation := pTypeOperation;
    FormCadastroPagamento.FDados := pDados;
    FormCadastroPagamento.OpenRegister;
    FormCadastroPagamento.ShowModal;
    if FormCadastroPagamento.ModalResult = mrOk then
      Result := True;
  finally
    FreeAndNil(FormCadastroPagamento);
  end;
end;

procedure TFormCadastroPagamento.SetCodigoPag;
begin
  Inc(FSeqMovimento);
  FSeqPagamento := GetCodigoSql('Movimento_Pagamento', 'Seq_Pagamento');
end;

procedure TFormCadastroPagamento.SpbGravarClick(Sender: TObject);
begin
  IncludeData;
  if FDados.MovimentoPag.Cadastro.GetCodPagamento > 0 then
    IncludeRegister
  else begin
    ShowMessage('Forma de pagamento n�o preenchida');
    exit;
  end;
  inherited;
end;

procedure TFormCadastroPagamento.VerCondPagamento;
begin
  if DS.DataSet.FieldByName('TIP_PAGAMENTO').AsInteger = 1 then begin
    FPagar  := 0;
    FPago   := FDados.MovimentoCab.Cadastro.GetVlrTotal
  end
  else begin
    FPagar := FDados.MovimentoCab.Cadastro.GetVlrTotal;
    FPago  := 0;
  end;
  LoadCaption;
end;

end.
