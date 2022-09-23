unit erpbasic.view.splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmViewSplash = class(TForm)
    pnlFundo: TPanel;
    lblStatus: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    imgDll: TImage;
    imgBanco: TImage;
    imgConfig: TImage;
    imgIniciar: TImage;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlLineLogo: TPanel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarStatus(Msg : String; aImagem : TImage);
  public
    { Public declarations }
  end;

var
  frmViewSplash: TfrmViewSplash;

implementation

{$R *.dfm}

procedure TfrmViewSplash.AtualizarStatus(Msg: String; aImagem: TImage);
begin
  lblStatus.Caption := Msg;
  aImagem.Visible := True;
end;

procedure TfrmViewSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.StepIt;
    case ProgressBar1.Position of
      10: AtualizarStatus('Carregando dependências...', imgDll);
      25: AtualizarStatus('Conectando ao banco de dados...', imgBanco);
      45: AtualizarStatus('Carregando as configurações...', imgConfig);
      75: AtualizarStatus('Iniciando o sistema...', imgIniciar);
    end;
  end;
  if ProgressBar1.Position = 100 then
    Close;
end;

end.
