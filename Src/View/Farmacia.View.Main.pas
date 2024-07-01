unit Farmacia.View.Main;

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
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Router4D,
  Farmacia.View.Cadastro.TipoServico,
  Farmacia.Util.Types,
  Farmacia.View.Cadastro.Servico,
  Farmacia.View.Cadastro.Cliente,
  Farmacia.Service.Conexao;

type
  TFormMain = class(TForm, iRouter4DComponent)
    PnlMain: TPanel;
    PnlBackground: TPanel;
    PnlTopMain: TPanel;
    PnlTopMainBtn: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    procedure ApplyStyle;
  public
    function Render : TForm;
    procedure unRender;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

{ TFormMain }

procedure TFormMain.ApplyStyle;
begin
  PnlBackground.Color        := $00FCF3E9;
  PnlTopMain.Color           := $00FCF3E9;
  PnlTopMainBtn.Color        := $00FCF3E9;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TFormMain.Render: TForm;
begin
  Result := Self;
end;

procedure TFormMain.unRender;
begin
  //
end;

end.
