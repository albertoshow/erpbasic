unit erpbasic.view.clientes;

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
  erpbasic.view.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, erpbasic.service.cadastros;

type
  TfrmViewClientes = class(TfrmViewBaseListas)
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GET_Pessoas(iTipo: integer);
  end;

var
  frmViewClientes: TfrmViewClientes;

implementation

{$R *.dfm}

{ TfrmViewClientes }

procedure TfrmViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := cardCadastro;
  GET_Titulo('Clientes - Cadastro');
end;

procedure TfrmViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GET_Titulo('Clientes - Pesquisa');
  GET_Pessoas(1);
end;

procedure TfrmViewClientes.GET_Pessoas(iTipo: integer);
begin
  with ServiceCadastros.qryPessoas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa');
    Params[0].AsInteger := iTipo;
    Open();
  end;
end;

end.
