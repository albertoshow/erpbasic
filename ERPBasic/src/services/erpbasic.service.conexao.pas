unit erpbasic.service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase,
  FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  erpbasic.provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    qryFilial: TFDQuery;
    qryFilialFIL_CODIGO: TIntegerField;
    qryFilialFIL_RAZAO_SOCIAL: TStringField;
    qryFilialFIL_FANTASIA: TStringField;
    qryFilialFIL_CNPJ: TStringField;
    qryFilialFIL_TELEFONE: TStringField;
    qryFilialFIL_DT_CADASTRO: TDateField;
    qryFilialFIL_SITUACAO: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Cripto(aSenha, aChave: string): string;
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
  System.IniFiles;

function TServiceConexao.Cripto(aSenha, aChave: string): string;
var
  x, y : integer;
  lNovaSenha : string;
begin
  for x := 1 to Length(AChave) do
  begin
    lNovaSenha := '';
    for y := 1 to Length(ASenha) do
    begin
      lNovaSenha := lNovaSenha + chr((Ord(AChave[x]) xor Ord(ASenha[y])));
    end;
    ASenha := lNovaSenha;
  end;
  Result := ASenha;
end;

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  lIniFile : TIniFile;
  lDatabase,
  lUser_Name,
  lPassword,
  lServidor,
  lCaminho,
  lProtocol,
  lDll : String;
  lPorta : integer;
begin
  try
    try
      FDConn.Connected := False;
      lCaminho   := ExtractFileDir(ParamStr(0)) + '\ERPBasic.ini';
      lIniFile   := TIniFile.Create(lCaminho);
      lDatabase  := lIniFile.ReadString('Conexao','Database',lDatabase);
      lUser_Name := lIniFile.ReadString('Conexao','User_Name',lUser_Name);
      lPassword  := lIniFile.ReadString('Conexao','Password',lPassword);
//      lPassword  := Cripto(lIniFile.ReadString('Conexao','Password',lPassword),'41ADRSistemasTop12');
      lServidor  := lIniFile.ReadString('Conexao','Server',lServidor);
      lPorta     := lIniFile.ReadInteger('Conexao','Porta',lPorta);
      lProtocol  := lIniFile.ReadString('Conexao','Protocol',lProtocol);
      lDll       := lIniFile.ReadString('Conexao','VendorLib',lDll);

      FDConn.Params.DriverID := 'FB';
      FDConn.Params.Database := lDatabase;
      FDConn.Params.UserName := lUser_Name;
      FDConn.Params.Password := lPassword;
      FDConn.Params.Add('Protocol=' +lProtocol);
      FDConn.Params.Add('Server=' + lServidor);
      FDConn.Params.Add('Port=' + lPorta.ToString);
      FDConn.Params.Add('CharacterSet=ISO8859_1');
      FDConn.LoginPrompt := False;

      FBDriverLink.VendorLib := lDll;

      FDConn.Connected := True;
      FDConn.Connected := False;
    except
      on e: exception do
      begin
        raise Exception.Create('Erro na conexão ' + e.Message);
      end;
    end;
  finally
    FreeAndNil(lIniFile);
  end;
  //Carrega a filial
  qryFilial.Close;
  qryFilial.Params[0].AsInteger := 1;
  qryFilial.Open();

  iCOD_FILIAL   := qryFilialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := qryFilialFIL_RAZAO_SOCIAL.AsString;
end;
end.
