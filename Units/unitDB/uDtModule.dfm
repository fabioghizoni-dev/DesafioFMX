object DtModule: TDtModule
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object t117_direitos_acesso: TFDTable
    Active = True
    IndexFieldNames = 't117_ca_codigo'
    Connection = Connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't117_direitos_acesso'
    Left = 218
    Top = 200
    object t117_direitos_acessot117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      LookupDataSet = t118_direitos_acesso_usuarios
      LookupKeyFields = 't117_ca_codigo'
      LookupResultField = 't117_ca_codigo'
      KeyFields = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object t117_direitos_acessot117_ca_descricao: TWideStringField
      FieldName = 't117_ca_descricao'
      Origin = 't117_ca_descricao'
      Size = 250
    end
    object t117_direitos_acessot117_ca_nome_menu: TWideStringField
      FieldName = 't117_ca_nome_menu'
      Origin = 't117_ca_nome_menu'
      Size = 50
    end
  end
  object t118_direitos_acesso_usuarios: TFDTable
    Active = True
    IndexFieldNames = 't003_nr_codigo;t117_ca_codigo'
    Connection = Connection
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't118_direitos_acesso_usuarios'
    Left = 357
    Top = 200
    object t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField
      FieldName = 't003_nr_codigo'
      Origin = 't003_nr_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      LookupDataSet = t117_direitos_acesso
      LookupKeyFields = 't117_ca_codigo'
      LookupResultField = 't117_ca_codigo'
      KeyFields = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object t118_direitos_acesso_usuariost118_ca_direito: TWideStringField
      FieldName = 't118_ca_direito'
      Origin = 't118_ca_direito'
      Size = 1
    end
    object t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField
      FieldName = 't118_dt_ultima_alteracao'
      Origin = 't118_dt_ultima_alteracao'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtSource: TDataSource
    DataSet = t117_direitos_acesso
    Left = 584
    Top = 416
  end
  object dtSource2: TDataSource
    DataSet = t118_direitos_acesso_usuarios
    Left = 528
    Top = 416
  end
  object DriverPG: TFDPhysPgDriverLink
    VendorHome = 'C:\xampp\apache\modules'
    Left = 472
    Top = 416
  end
  object Connection: TFDConnection
    ConnectionName = 'ConnectionDriverPG'
    Params.Strings = (
      'Database=desafio'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 411
    Top = 416
  end
end