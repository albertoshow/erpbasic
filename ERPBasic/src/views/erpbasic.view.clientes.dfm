inherited frmViewClientes: TfrmViewClientes
  Caption = 'frmViewClientes'
  ClientHeight = 550
  ClientWidth = 1024
  ExplicitWidth = 1024
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    Width = 1024
    inherited lblTitulo: TLabel
      Width = 948
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
    inherited pnlFechar: TPanel
      Left = 989
    end
  end
  inherited Panel1: TPanel
    Top = 510
    Width = 1024
    inherited btnNovo: TSpeedButton
      Left = 517
    end
    inherited btnEditar: TSpeedButton
      Left = 619
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TSpeedButton
      Left = 721
    end
    inherited btnSalvar: TSpeedButton
      Left = 823
    end
    inherited btnExcluir: TSpeedButton
      Left = 925
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1024
    Height = 475
    inherited cpLista: TCardPanel
      Width = 1022
      Height = 475
      inherited cardPesquisa: TCard
        Width = 1022
        Height = 475
        inherited pnlPesquisa: TPanel
          Width = 1022
          inherited edtPesquisa: TSearchBox
            Width = 948
            Anchors = [akLeft, akTop, akRight]
            ExplicitWidth = 948
          end
          inherited Panel2: TPanel
            Width = 948
            Anchors = [akLeft, akTop, akRight]
            ExplicitWidth = 948
          end
        end
        inherited dbgDados: TDBGrid
          Width = 1012
          Height = 376
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do cliente'
              Width = 309
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_FANTASIA'
              Title.Caption = 'Nome fantasia'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 80
              Visible = True
            end>
        end
      end
      inherited cardCadastro: TCard
        Width = 1022
        Height = 475
        ExplicitWidth = 761
        ExplicitHeight = 476
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastros.qryPessoas
  end
end
