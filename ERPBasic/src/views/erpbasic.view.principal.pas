unit erpbasic.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, erpbasic.provider.constants;

type
  TfrmViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlRodape: TPanel;
    pnlBack: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlConteudoUsuario: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlImgUsuario: TPanel;
    ImgUsuarioOuro: TImage;
    pnlLiciando: TPanel;
    pnlLineLicenciado: TPanel;
    pnlDadosLicenciado: TPanel;
    Label1: TLabel;
    lblLicenciado: TLabel;
    pnlMenuSair: TPanel;
    pnlMenuShape: TPanel;
    shapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnMenuCliente: TSpeedButton;
    btnMenuCaixa: TSpeedButton;
    btnMenuFornecedores: TSpeedButton;
    btnMenuProdutos: TSpeedButton;
    btnMenuConfiguracoes: TSpeedButton;
    btnMenuSair: TSpeedButton;
    ImgUsuarioBranco: TImage;
    imgBackGround: TImage;
    procedure btnMenuSairClick(Sender: TObject);
    procedure btnMenuClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure ImgUsuarioBrancoMouseEnter(Sender: TObject);
    procedure ImgUsuarioOuroMouseLeave(Sender: TObject);
    procedure btnMenuCaixaClick(Sender: TObject);
    procedure btnMenuFornecedoresClick(Sender: TObject);
    procedure btnMenuProdutosClick(Sender: TObject);
    procedure btnMenuConfiguracoesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Get_LineMenu(Sender : TObject);
    procedure AbrirSplash;
  public
    { Public declarations }
  end;

var
  frmViewPrincipal: TfrmViewPrincipal;

implementation

{$R *.dfm}

uses
  erpbasic.view.clientes,
  erpbasic.view.splash;

procedure TfrmViewPrincipal.AbrirSplash;
begin
  frmViewSplash := TfrmViewSplash.Create(nil);
  try
    frmViewSplash.ShowModal;
  finally
    FreeAndNIl(frmViewSplash);
  end;
end;

procedure TfrmViewPrincipal.btnMenuCaixaClick(Sender: TObject);
begin
  Get_LineMenu(Sender);
end;

procedure TfrmViewPrincipal.btnMenuClienteClick(Sender: TObject);
begin
  Get_LineMenu(Sender);
  frmViewClientes := TfrmViewClientes.Create(Self);
  try
    frmViewClientes.showmodal;
  finally
    FreeAndNil(frmViewClientes);
  end;
end;

procedure TfrmViewPrincipal.btnMenuConfiguracoesClick(Sender: TObject);
begin
  Get_LineMenu(Sender);
end;

procedure TfrmViewPrincipal.btnMenuFornecedoresClick(Sender: TObject);
begin
  Get_LineMenu(Sender);
end;

procedure TfrmViewPrincipal.btnMenuProdutosClick(Sender: TObject);
begin
  Get_LineMenu(Sender);
end;

procedure TfrmViewPrincipal.btnMenuSairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmViewPrincipal.FormCreate(Sender: TObject);
begin
  AbrirSplash;
end;

procedure TfrmViewPrincipal.FormShow(Sender: TObject);
begin
  shapeMenu.Visible := False;
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TfrmViewPrincipal.Get_LineMenu(Sender: TObject);
begin
  if  not shapeMenu.Visible then
    shapemenu.Visible := True;
// Controla a linha de acordo com o botão escolhido
  with shapemenu do
  begin
    Left   := 0;
    Top    := 0;
    Height := TSpeedButton(Sender).Height;
    Top    := TSpeedButton(Sender).Top;
  end;
  pnlMenuShape.Repaint;
end;

procedure TfrmViewPrincipal.ImgUsuarioBrancoMouseEnter(Sender: TObject);
begin
  ImgUsuarioBranco.Visible := False;
  ImgUsuarioOuro.Visible   := True;
end;

procedure TfrmViewPrincipal.ImgUsuarioOuroMouseLeave(Sender: TObject);
begin
    ImgUsuarioOuro.Visible   := False;
    ImgUsuarioBranco.Visible := True;
end;

procedure TfrmViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TfrmViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;

end;

end.
