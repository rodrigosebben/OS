object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 411
  Width = 850
  object QueryUsuarios: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO usuarios'
      
        '  (id, TipoUsuario_id, Nome, Usuario, Senha, Endereco, Cidade, U' +
        'F, Telefone, Celular, Email, NivelAcesso)'
      'VALUES'
      
        '  (:id, :TipoUsuario_id, :Nome, :Usuario, :Senha, :Endereco, :Ci' +
        'dade, :UF, :Telefone, :Celular, :Email, :NivelAcesso)')
    SQLDelete.Strings = (
      'DELETE FROM usuarios'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE usuarios'
      'SET'
      
        '  id = :id, TipoUsuario_id = :TipoUsuario_id, Nome = :Nome, Usua' +
        'rio = :Usuario, Senha = :Senha, Endereco = :Endereco, Cidade = :' +
        'Cidade, UF = :UF, Telefone = :Telefone, Celular = :Celular, Emai' +
        'l = :Email, NivelAcesso = :NivelAcesso'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, TipoUsuario_id, Nome, Usuario, Senha, Endereco, Cidad' +
        'e, UF, Telefone, Celular, Email, NivelAcesso FROM usuarios'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM usuarios'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    Connection = MyConn
    SQL.Strings = (
      'select u.*,'
      '       t.TipoUsuario,'
      
        '       (case U.nivelacesso when 0 then '#39'SUPER USU'#193'RIO'#39' when 1 th' +
        'en '#39'ADMINISTRADOR'#39' when 2 then '#39'GERENTE'#39' when 3 then '#39'USU'#193'RIO'#39' e' +
        'nd) '#39'Nivel de acesso'#39
      
        'from usuarios u left join TipoUsuarios t on u.Tipousuario_id=t.i' +
        'd')
    Left = 112
    Top = 20
    object QueryUsuariosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'u.id'
    end
    object QueryUsuariosTipoUsuario_id: TLargeintField
      FieldName = 'TipoUsuario_id'
      Origin = 'u.TipoUsuario_id'
    end
    object QueryUsuariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'u.Nome'
      Size = 150
    end
    object QueryUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'u.Usuario'
      Size = 50
    end
    object QueryUsuariosSenha: TStringField
      FieldName = 'Senha'
      Origin = 'u.Senha'
    end
    object QueryUsuariosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'u.Endereco'
      Size = 250
    end
    object QueryUsuariosCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'u.Cidade'
      Size = 150
    end
    object QueryUsuariosUF: TStringField
      FieldName = 'UF'
      Origin = 'u.UF'
      Size = 2
    end
    object QueryUsuariosTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'u.Telefone'
    end
    object QueryUsuariosCelular: TStringField
      FieldName = 'Celular'
      Origin = 'u.Celular'
    end
    object QueryUsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'u.Email'
      Size = 200
    end
    object QueryUsuariosNivelAcesso: TLargeintField
      FieldName = 'NivelAcesso'
      Origin = 'u.NivelAcesso'
    end
    object QueryUsuariosTipoUsuario: TStringField
      FieldName = 'TipoUsuario'
      Origin = 't.TipoUsuario'
      Size = 100
    end
    object QueryUsuariosNiveldeacesso: TStringField
      FieldName = 'Nivel de acesso'
      Origin = 'Nivel de acesso'
      Size = 13
    end
  end
  object QueryTipoUsuarios: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO tipousuarios'
      '  (id, TipoUsuario)'
      'VALUES'
      '  (:id, :TipoUsuario)')
    SQLDelete.Strings = (
      'DELETE FROM tipousuarios'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE tipousuarios'
      'SET'
      '  id = :id, TipoUsuario = :TipoUsuario'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, TipoUsuario FROM tipousuarios'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM tipousuarios'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    Connection = MyConn
    SQL.Strings = (
      'select id, '
      '       upper(TipoUsuario) TipoUsuario '
      'from TipoUsuarios')
    Left = 208
    Top = 20
    object QueryTipoUsuariosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'tipousuarios.id'
    end
    object QueryTipoUsuariosTipoUsuario: TStringField
      FieldName = 'TipoUsuario'
      Origin = 'TipoUsuario'
      Size = 100
    end
  end
  object QueryTipoChamados: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO tipochamados'
      '  (id, TipoChamado)'
      'VALUES'
      '  (:id, :TipoChamado)')
    SQLDelete.Strings = (
      'DELETE FROM tipochamados'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE tipochamados'
      'SET'
      '  id = :id, TipoChamado = :TipoChamado'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, TipoChamado FROM tipochamados'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM tipochamados'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    Connection = MyConn
    SQL.Strings = (
      'Select id, '
      '       upper(TipoChamado) TipoChamado '
      'from TipoChamados')
    Left = 320
    Top = 20
    object QueryTipoChamadosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'tipochamados.id'
    end
    object QueryTipoChamadosTipoChamado: TStringField
      FieldName = 'TipoChamado'
      Origin = 'TipoChamado'
      Size = 100
    end
  end
  object QuerySituacaoChamados: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO situacaochamados'
      '  (id, Situacao)'
      'VALUES'
      '  (:id, :Situacao)')
    SQLDelete.Strings = (
      'DELETE FROM situacaochamados'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE situacaochamados'
      'SET'
      '  id = :id, Situacao = :Situacao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, Situacao FROM situacaochamados'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM situacaochamados'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    Connection = MyConn
    SQL.Strings = (
      'select id, '
      '       upper(Situacao) Situacao'
      'from SituacaoChamados')
    Left = 448
    Top = 20
    object QuerySituacaoChamadosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'situacaochamados.id'
    end
    object QuerySituacaoChamadosSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'Situacao'
      Size = 45
    end
  end
  object QueryPrioridadeChamados: TMyQuery
    Connection = MyConn
    SQL.Strings = (
      'select id,upper(Prioridade) Prioridade'
      'from PrioridadeChamados')
    Left = 588
    Top = 20
    object QueryPrioridadeChamadosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'prioridadechamados.id'
    end
    object QueryPrioridadeChamadosPrioridade: TStringField
      FieldName = 'Prioridade'
      Origin = 'Prioridade'
      Size = 45
    end
  end
  object MyConn: TMyConnection
    Database = 'OS'
    Port = 2020
    Username = 'root'
    Server = 'ielb.no-ip.org'
    Connected = True
    LoginPrompt = False
    Left = 28
    Top = 20
    EncryptedPassword = 'CEFFC6FFCFFFCBFF'
  end
  object QueryChamados: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO chamados'
      
        '  (id, UsuarioCriador_id, UsuarioResponsavel_id, TipoChamado_id,' +
        ' PrioridadeChamado_id, SituacaoChamado_id, Titulo, Descricao, Ex' +
        'tras, Data_Cadastro, Data_Entrega, Data_Previsao, HorasGastas)'
      'VALUES'
      
        '  (:id, :UsuarioCriador_id, :UsuarioResponsavel_id, :TipoChamado' +
        '_id, :PrioridadeChamado_id, :SituacaoChamado_id, :Titulo, :Descr' +
        'icao, :Extras, :Data_Cadastro, :Data_Entrega, :Data_Previsao, :H' +
        'orasGastas)')
    SQLDelete.Strings = (
      'DELETE FROM chamados'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE chamados'
      'SET'
      
        '  id = :id, UsuarioCriador_id = :UsuarioCriador_id, UsuarioRespo' +
        'nsavel_id = :UsuarioResponsavel_id, TipoChamado_id = :TipoChamad' +
        'o_id, PrioridadeChamado_id = :PrioridadeChamado_id, SituacaoCham' +
        'ado_id = :SituacaoChamado_id, Titulo = :Titulo, Descricao = :Des' +
        'cricao, Extras = :Extras, Data_Cadastro = :Data_Cadastro, Data_E' +
        'ntrega = :Data_Entrega, Data_Previsao = :Data_Previsao, HorasGas' +
        'tas = :HorasGastas'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, UsuarioCriador_id, UsuarioResponsavel_id, TipoChamado' +
        '_id, PrioridadeChamado_id, SituacaoChamado_id, Titulo, Descricao' +
        ', Extras, Data_Cadastro, Data_Entrega, Data_Previsao, HorasGasta' +
        's FROM chamados'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM chamados'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    Connection = MyConn
    SQL.Strings = (
      'select c.*, '
      #9'   u.nome UsuarioCriador, '
      '       u2.nome UsuarioResponsavel,'
      '       t.tipoChamado,'
      '       p.Prioridade,'
      '       s.Situacao'
      
        'from chamados c left join usuarios u on c.UsuarioCriador_id = u.' +
        'id'
      #9#9'left join usuarios u2 on c.UsuarioResponsavel_id = u2.id'
      
        '                left join tipochamados t on c.TipoChamado_id = t' +
        '.id'
      
        '                left join PrioridadeChamados p on c.PrioridadeCh' +
        'amado_id = p.id'
      
        '                left join SituacaoChamados s on c.SituacaoChamad' +
        'o_id = s.id'
      'order by data_cadastro;')
    Left = 712
    Top = 20
    object QueryChamadosid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'c.id'
    end
    object QueryChamadosUsuarioCriador_id: TLargeintField
      FieldName = 'UsuarioCriador_id'
      Origin = 'c.UsuarioCriador_id'
    end
    object QueryChamadosUsuarioResponsavel_id: TLargeintField
      FieldName = 'UsuarioResponsavel_id'
      Origin = 'c.UsuarioResponsavel_id'
    end
    object QueryChamadosTipoChamado_id: TLargeintField
      FieldName = 'TipoChamado_id'
      Origin = 'c.TipoChamado_id'
    end
    object QueryChamadosPrioridadeChamado_id: TLargeintField
      FieldName = 'PrioridadeChamado_id'
      Origin = 'c.PrioridadeChamado_id'
    end
    object QueryChamadosSituacaoChamado_id: TLargeintField
      FieldName = 'SituacaoChamado_id'
      Origin = 'c.SituacaoChamado_id'
    end
    object QueryChamadosTitulo: TStringField
      FieldName = 'Titulo'
      Origin = 'c.Titulo'
      Size = 255
    end
    object QueryChamadosDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'c.Descricao'
      BlobType = ftMemo
    end
    object QueryChamadosExtras: TMemoField
      FieldName = 'Extras'
      Origin = 'c.Extras'
      BlobType = ftMemo
    end
    object QueryChamadosData_Cadastro: TDateTimeField
      FieldName = 'Data_Cadastro'
      Origin = 'c.Data_Cadastro'
    end
    object QueryChamadosData_Entrega: TDateTimeField
      FieldName = 'Data_Entrega'
      Origin = 'c.Data_Entrega'
      EditMask = '!99/99/0000;1; '
    end
    object QueryChamadosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
      Origin = 'c.Data_Previsao'
      EditMask = '!99/99/0000;1; '
    end
    object QueryChamadosHorasGastas: TFloatField
      FieldName = 'HorasGastas'
      Origin = 'c.HorasGastas'
    end
    object QueryChamadosUsuarioCriador: TStringField
      FieldName = 'UsuarioCriador'
      Origin = 'u.UsuarioCriador'
      Size = 150
    end
    object QueryChamadosUsuarioResponsavel: TStringField
      FieldName = 'UsuarioResponsavel'
      Origin = 'u2.UsuarioResponsavel'
      Size = 150
    end
    object QueryChamadostipoChamado: TStringField
      FieldName = 'tipoChamado'
      Origin = 't.tipoChamado'
      Size = 100
    end
    object QueryChamadosPrioridade: TStringField
      FieldName = 'Prioridade'
      Origin = 'p.Prioridade'
      Size = 45
    end
    object QueryChamadosSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 's.Situacao'
      Size = 45
    end
  end
  object DSUsuarios: TDataSource
    DataSet = QueryUsuarios
    Left = 112
    Top = 72
  end
  object DSTipoUsuarios: TDataSource
    DataSet = QueryTipoUsuarios
    Left = 208
    Top = 72
  end
  object DSTipoChamados: TDataSource
    DataSet = QueryTipoChamados
    Left = 320
    Top = 72
  end
  object DSSituacaoChamados: TDataSource
    DataSet = QuerySituacaoChamados
    Left = 448
    Top = 72
  end
  object DSPrioridadeChamados: TDataSource
    DataSet = QueryPrioridadeChamados
    Left = 588
    Top = 72
  end
  object DSChamados: TDataSource
    DataSet = QueryChamados
    Left = 712
    Top = 72
  end
  object QueryTemp: TMyQuery
    Connection = MyConn
    Left = 112
    Top = 140
  end
end
