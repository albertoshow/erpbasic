object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 205
  Width = 251
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=E:\Projetos\ERPBasic\DB\ERPBASIC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3054'
      'CharacterSet=iso8859_1'
      'DriverID=FB')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 32
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 136
    Top = 96
  end
  object qryFilial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 56
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryFilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFilialFIL_RAZAO_SOCIAL: TStringField
      FieldName = 'FIL_RAZAO_SOCIAL'
      Origin = 'FIL_RAZAO_SOCIAL'
      Size = 60
    end
    object qryFilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 60
    end
    object qryFilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 18
    end
    object qryFilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 14
    end
    object qryFilialFIL_DT_CADASTRO: TDateField
      FieldName = 'FIL_DT_CADASTRO'
      Origin = 'FIL_DT_CADASTRO'
    end
    object qryFilialFIL_SITUACAO: TBooleanField
      FieldName = 'FIL_SITUACAO'
      Origin = 'FIL_SITUACAO'
    end
  end
end
