unit erpbasic.service.cadastros;

interface

uses
  System.SysUtils, System.Classes, erpbasic.service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastros = class(TDataModule)
    qryPessoas: TFDQuery;
    qryPessoasPES_CODIGO: TIntegerField;
    qryPessoasPES_RAZAO: TStringField;
    qryPessoasPES_FANTASIA: TStringField;
    qryPessoasPES_CNPJCPF: TStringField;
    qryPessoasPES_TELEFONE: TStringField;
    qryPessoasPES_TIPOPESSOA: TIntegerField;
    qryPessoasPES_DT_CADASTRO: TDateField;
    qryPessoasPES_SITIACAO: TBooleanField;
    qryPessoasPES_OBSERVACAO: TStringField;
    qryEnderecos: TFDQuery;
    qryEnderecosEND_CODIGO: TIntegerField;
    qryEnderecosEND_PESSOA: TIntegerField;
    qryEnderecosEND_CEP: TStringField;
    qryEnderecosEND_CIDADE: TStringField;
    qryEnderecosEND_ENDERECO: TStringField;
    qryEnderecosEND_BAIRRO: TStringField;
    qryEnderecosEND_OBSERVACAO: TStringField;
    qryEnderecosEND_NUMERO: TStringField;
    qryEnderecosEND_COMPLEMENTO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastros: TServiceCadastros;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
