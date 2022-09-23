program ERPBasic;

uses
  Vcl.Forms,
  erpbasic.view.principal in 'src\views\erpbasic.view.principal.pas' {frmViewPrincipal},
  erpbasic.service.conexao in 'src\services\erpbasic.service.conexao.pas' {ServiceConexao: TDataModule},
  erpbasic.service.cadastros in 'src\services\erpbasic.service.cadastros.pas' {ServiceCadastros: TDataModule},
  erpbasic.provider.constants in 'src\providers\erpbasic.provider.constants.pas',
  erpbasic.view.base in 'src\views\erpbasic.view.base.pas' {frmViewBase},
  erpbasic.view.base.listas in 'src\views\erpbasic.view.base.listas.pas' {frmViewBaseListas},
  erpbasic.view.clientes in 'src\views\erpbasic.view.clientes.pas' {frmViewClientes},
  erpbasic.view.splash in 'src\views\erpbasic.view.splash.pas' {frmViewSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastros, ServiceCadastros);
  Application.CreateForm(TfrmViewPrincipal, frmViewPrincipal);
  Application.Run;
end.
