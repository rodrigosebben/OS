unit UDMPrincipal;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS;

type
  TDMPrincipal = class(TDataModule)
    QueryUsuarios: TMyQuery;
    QueryTipoUsuarios: TMyQuery;
    QueryTipoChamados: TMyQuery;
    QuerySituacaoChamados: TMyQuery;
    QueryPrioridadeChamados: TMyQuery;
    MyConn: TMyConnection;
    QueryTipoUsuariosid: TLargeintField;
    QueryTipoUsuariosTipoUsuario: TStringField;
    QueryTipoChamadosid: TLargeintField;
    QueryTipoChamadosTipoChamado: TStringField;
    QueryPrioridadeChamadosid: TLargeintField;
    QueryPrioridadeChamadosPrioridade: TStringField;
    QueryChamados: TMyQuery;
    QueryChamadosid: TLargeintField;
    QueryChamadosUsuarioCriador_id: TLargeintField;
    QueryChamadosUsuarioResponsavel_id: TLargeintField;
    QueryChamadosTipoChamado_id: TLargeintField;
    QueryChamadosPrioridadeChamado_id: TLargeintField;
    QueryChamadosSituacaoChamado_id: TLargeintField;
    QueryChamadosTitulo: TStringField;
    QueryChamadosDescricao: TMemoField;
    QueryChamadosExtras: TMemoField;
    QueryChamadosData_Cadastro: TDateTimeField;
    QueryChamadosData_Entrega: TDateTimeField;
    QueryChamadosData_Previsao: TDateTimeField;
    QueryChamadosHorasGastas: TFloatField;
    DSUsuarios: TDataSource;
    DSTipoUsuarios: TDataSource;
    DSTipoChamados: TDataSource;
    DSSituacaoChamados: TDataSource;
    DSPrioridadeChamados: TDataSource;
    DSChamados: TDataSource;
    QueryUsuariosid: TLargeintField;
    QueryUsuariosTipoUsuario_id: TLargeintField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosUsuario: TStringField;
    QueryUsuariosSenha: TStringField;
    QueryUsuariosEndereco: TStringField;
    QueryUsuariosCidade: TStringField;
    QueryUsuariosUF: TStringField;
    QueryUsuariosTelefone: TStringField;
    QueryUsuariosCelular: TStringField;
    QueryUsuariosEmail: TStringField;
    QueryUsuariosNivelAcesso: TLargeintField;
    QueryUsuariosTipoUsuario: TStringField;
    QuerySituacaoChamadosid: TLargeintField;
    QuerySituacaoChamadosSituacao: TStringField;
    QueryUsuariosNiveldeacesso: TStringField;
    QueryTemp: TMyQuery;
    QueryChamadosUsuarioCriador: TStringField;
    QueryChamadosUsuarioResponsavel: TStringField;
    QueryChamadostipoChamado: TStringField;
    QueryChamadosPrioridade: TStringField;
    QueryChamadosSituacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{$R *.dfm}

end.
