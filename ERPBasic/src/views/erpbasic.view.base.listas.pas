unit erpbasic.view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, erpbasic.view.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmViewBaseListas = class(TfrmViewBase)
    pnlTopo: TPanel;
    Panel1: TPanel;
    pnlIcon: TPanel;
    imgIcon: TImage;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    imgFechar: TImage;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    cpLista: TCardPanel;
    pnlLinhaFundo: TPanel;
    cardPesquisa: TCard;
    cardCadastro: TCard;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    Panel2: TPanel;
    dbgDados: TDBGrid;
    dsDados: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure GET_Titulo(sTitulo : String);
  end;

var
  frmViewBaseListas: TfrmViewBaseListas;

implementation

{$R *.dfm}

procedure TfrmViewBaseListas.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmViewBaseListas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsDados.DataSet.Close;
end;

procedure TfrmViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpLista.ActiveCard := cardPesquisa;
end;

procedure TfrmViewBaseListas.GET_Titulo(sTitulo: String);
begin
  Self.lblTitulo.Caption := sTitulo;
end;

procedure TfrmViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
  begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
