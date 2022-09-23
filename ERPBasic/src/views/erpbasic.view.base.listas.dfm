inherited frmViewBaseListas: TfrmViewBaseListas
  Cursor = crHandPoint
  BorderStyle = bsNone
  Caption = 'frmViewBaseListas'
  ClientHeight = 551
  ClientWidth = 763
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 687
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Caption = 'lblTitulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      OnMouseDown = pnlTopoMouseDown
      ExplicitWidth = 70
      ExplicitHeight = 25
    end
    object pnlIcon: TPanel
      Left = 0
      Top = 0
      Width = 35
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object imgIcon: TImage
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          0020080300000044A48AC60000000467414D410000B18F0BFC6105000000ED50
          4C5445000000FF9A00FF9B00FF98004CAF50FF9900FF9A00FF9A00FF9A00FF98
          00FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9700FF
          98004CAF5049AF5270AA40E49B0CE49B0C7CA93B2BB35FD39E1448AF524CAF50
          4CAF504CAF504DAF505CAD495DAD484DAF4F4BAF5055AE4C4CAF504CAF504CAF
          504CAF504CAF50FF920071AA40FF9800FF9800FF93004CAF504CAF50FF98004C
          AF504CAF5049AF51FF9800EA9B0962AC4661AC464CAF504BAF504BAF51EA9B0A
          4BAB50417B4F3C604F3C614F4CB050479850384C4F37454F4CB150479550384A
          4F37474F384B4F417A4F417A50FFFFFF8EC0FA270000003774524E5300000000
          0000020301067FAD820845A909C0C50C69041826C7CC291A7B181A93D9E2F8F8
          E2E0ED1B039719D80726C3C80B1EE1A8981C1851EAEAAF00000001624B47444E
          196171DF000000097048597300021BEF00021BEF0149171B830000000774494D
          4507E40B020D19382702887B000001564944415478DA8D936F4FC23010C6EF58
          37E618092464C485049321F1857EFF8FC10B7D6190454D0C86C508511863763B
          AF889BFC31DDBDB835EBAFED73D7A7089AC0E26B2249AA13E00605D217D03E60
          58C811371068E510479A1D004D1C3EE0A21D40386FD1E5983EF700D1E6E517CF
          9C7AF0C2CBFB4F6425735900C257FB77234E1D7863C09B71B243B903C460DDE3
          11122B640DF43384779AC81D30C4D689021734568029ED0097FE0960EA529808
          34510C22C7A7E30E4D636F2209CD9A7D559746AE8E2A2695BA5A2636F749CE3B
          5841E49C1308AE6137CF2548C0D7D80B53E2BF0D06BA6097F35B228119032BDA
          56718367E01E004B58D3EDB60AC3B26CC723178D522866B4C4284ED2346391D7
          42893C02944879975700744768456ACB2C1BD55C158D723FCA465568B5EEB274
          D7AD354C15CB81086AEB23D37670F46B5A657B3B3DB07DFFF18FEDF50FA7C2D3
          D33EDE7FE31B948C0D6EA61DC76B0000002574455874646174653A6372656174
          6500323032302D31312D30325431333A32353A35362B30303A30308C093CEC00
          00002574455874646174653A6D6F6469667900323032302D31312D3032543133
          3A32353A35362B30303A3030FD5484500000002074455874736F667477617265
          0068747470733A2F2F696D6167656D616769636B2E6F7267BCCF1D9D00000018
          744558745468756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F
          00000018744558745468756D623A3A496D6167653A3A48656967687400353132
          8F8D538100000017744558745468756D623A3A496D6167653A3A576964746800
          3531321C7C03DC00000019744558745468756D623A3A4D696D65747970650069
          6D6167652F706E673FB2564E00000017744558745468756D623A3A4D54696D65
          00313630343332333535368A7E46CB00000012744558745468756D623A3A5369
          7A6500363136334242D66231C00000004C744558745468756D623A3A55524900
          66696C653A2F2F2E2F75706C6F6164732F35362F584E724946746D2F32363231
          2F746563685F656C656374726F6E6963735F69636F6E5F3135363935342E706E
          67BE0DA5540000000049454E44AE426082}
        OnMouseDown = pnlTopoMouseDown
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 728
      Top = 0
      Width = 35
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 578
      object imgFechar: TImage
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000000467414D410000B18F0BFC61050000000662
          4B4744000000000000F943BB7F0000000970485973000000600000006000F06B
          42CF000002EE4944415478DAED985B6B134114C7CF6C40347D282958D2D81711
          F42B48D32A7E017D3154DF44925DBC5088625B8A18FA505AED0DEAA5B988CFD6
          E0837E0125F4F21D147D6949302FA10FADF4C1ACFFD9AEB8D9CC6C2671B706F1
          C0309BB9ED6FCF3973E64C187599B0BF0DF0EF0199894488FAFAE254AF5F21C6
          E2683A8D12B1BB6B68FB4AA6B981FE77B4BBBBC98AC51F810099BA1E46358672
          0FE5A4E2B42A0097281C5E61CBCBDF7D03320D63145FBD88C753ED6AD4961DFE
          212C9F2FFE1190C9FB753D83C747AAF02D64850606D26C7ABADE369099C96854
          2EAF41E5577D00714A1150D7645072A0546A0E30133EC3D86F65B32C979B5206
          B27DE6752030F62B5046453ED50464A6D327686FEF33C91DB884328CA2B57829
          37C93ACA0549FF0EF5F49C75EFBE66205DE7AA9C912CF20AF64FC1B76E40ED05
          0F28AE813B94CF67C9309E41DBB785A3189B84E91E4B81ACA0178954481C674A
          80B9F4CB19019E44951340F17E03E678698DE39BA352F920D154956AB5983378
          3602A5521741FD51FAD5A67997150A2F1CE36FBA3465690630AB1E63DC3282F1
          EB62205D5F429526B97841B10E60B8D91660B6076220C3D8C20BCF93B73498C4
          613E12B4894CEA964DCC8BCB345425B573AA09CAB58E2A0C976F58272A033A40
          754C61116BB8DB7C56A38A991AE50040C7FD0172F94C10405D66B22E74EA0554
          F73D267BC519A610A744328FF5C6C540C9E408695AA90398DF81B15D284D1B66
          D9EC8618E8F0E828E3B15F30F5E88F0E6B01C398C057CE49B4A47EB842535428
          AC22E37C8EDFB724E3C6013EEF6C90A51F9FF0382859C4AFF4631BE9C7B996E9
          876D8E04AA350AEEDEC6359880AFBD7577C853585D9F45351910D00C4CF550D4
          E19DE4572A3C8D4DF88AC2D81B8A46AFB79DE45B50FE5E83B8999E502C36D5D1
          35A861A5439FE2B9D2A0CA78816C03262DF2998E802C28BEFBF6F7C7B030BF4A
          F72B4EE367E32276D3535FAFD20D603C78F6F60E512874197043683A43CE3F1B
          88BEA0F0C8FB1E416F2BB03F1B8E4AFE03B5929F37867734EE0FD04D00000025
          74455874646174653A63726561746500323032322D30392D31305431383A3534
          3A33382B30303A303079F98E4B0000002574455874646174653A6D6F64696679
          00323032322D30392D31305431383A35343A33382B30303A303008A436F70000
          000049454E44AE426082}
        ExplicitLeft = 16
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnFechar: TSpeedButton
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Align = alClient
        Flat = True
        OnClick = btnFecharClick
        ExplicitLeft = 16
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 763
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 516
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 256
      Top = 3
      Width = 96
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 536
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 358
      Top = 3
      Width = 96
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 664
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 460
      Top = 3
      Width = 96
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 714
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 562
      Top = 3
      Width = 96
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 706
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 664
      Top = 3
      Width = 96
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 698
    end
  end
  object pnlLinhaFundo: TPanel
    Left = 0
    Top = 35
    Width = 763
    Height = 476
    Align = alClient
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 0
    object cpLista: TCardPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 761
      Height = 476
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = cardPesquisa
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 35
      ExplicitWidth = 763
      object cardPesquisa: TCard
        Left = 0
        Top = 0
        Width = 761
        Height = 476
        Caption = 'cardPesquisa'
        CardIndex = 0
        TabOrder = 0
        ExplicitTop = -6
        object pnlPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 761
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 0
          object lblPesquisa: TLabel
            Left = 37
            Top = 6
            Width = 70
            Height = 25
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5987163
            Font.Height = -19
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 37
            Top = 36
            Width = 687
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui sua pesquisa'
          end
          object Panel2: TPanel
            Left = 37
            Top = 65
            Width = 687
            Height = 2
            BevelOuter = bvNone
            Caption = 'Panel2'
            Color = 5395026
            ParentBackground = False
            TabOrder = 1
          end
        end
        object dbgDados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 94
          Width = 751
          Height = 377
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object cardCadastro: TCard
        Left = 0
        Top = 0
        Width = 761
        Height = 476
        Caption = 'cardCadastro'
        CardIndex = 1
        TabOrder = 1
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
  object dsDados: TDataSource
    Left = 377
    Top = 315
  end
end
