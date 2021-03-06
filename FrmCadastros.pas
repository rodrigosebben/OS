unit FrmCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, Buttons, Mask, DBCtrls,db, ImgList;

type
  TFormCadastros = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PgcCadastros: TPageControl;
    TbsUsuarios: TTabSheet;
    TbsTipoUsuarios: TTabSheet;
    TbsSituacaoChamados: TTabSheet;
    TbsTiposChamados: TTabSheet;
    TbsPrioridadeChamados: TTabSheet;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    PanelU: TPanel;
    Label1: TLabel;
    EdtBuscaUsuario: TEdit;
    DBGridUsuarios: TDBGrid;
    ToolBar1: TToolBar;
    BitBtnUsuarioDeletar: TBitBtn;
    BitBtnUsuarioSalvar: TBitBtn;
    BitBtnUsuarioEditar: TBitBtn;
    BitBtnUsuarioInserir: TBitBtn;
    BitBtnUsuarioCancelar: TBitBtn;
    Panel8: TPanel;
    DBGridTipoUsuario: TDBGrid;
    Panel9: TPanel;
    ToolBar2: TToolBar;
    BitBtnTipoUsuarioInserir: TBitBtn;
    BitBtnTipoUsuarioEditar: TBitBtn;
    BitBtnTipoUsuarioSalvar: TBitBtn;
    BitBtnTipoUsuarioCancelar: TBitBtn;
    BitBtnTipoUsuarioDeletar: TBitBtn;
    Panel10: TPanel;
    Panel12: TPanel;
    DBGridSituacaoChamado: TDBGrid;
    Panel13: TPanel;
    ToolBar3: TToolBar;
    BitBtnSituacaoChamadosInserir: TBitBtn;
    BitBtnSituacaoChamadosEditar: TBitBtn;
    BitBtnSituacaoChamadosSalvar: TBitBtn;
    BitBtnSituacaoChamadosCancelar: TBitBtn;
    BitBtnSituacaoChamadosDeletar: TBitBtn;
    Panel14: TPanel;
    Panel16: TPanel;
    DBGridTipoChamado: TDBGrid;
    Panel17: TPanel;
    ToolBar4: TToolBar;
    BitBtnTipoChamadoInserir: TBitBtn;
    BitBtnTipoChamadoEditar: TBitBtn;
    BitBtnTipoChamadoSalvar: TBitBtn;
    BitBtnTipoChamadoCancelar: TBitBtn;
    BitBtnDeletar: TBitBtn;
    Panel18: TPanel;
    Panel20: TPanel;
    DBGridPrioridadeChamado: TDBGrid;
    Panel21: TPanel;
    ToolBar5: TToolBar;
    BitBtnPrioridadeChamadoInserir: TBitBtn;
    BitBtnPrioridadeChamadoEditar: TBitBtn;
    BitBtnPrioridadeChamadoSalvar: TBitBtn;
    BitBtnPrioridadeChamadoCancelar: TBitBtn;
    BitBtnPrioridadeChamadoDeletar: TBitBtn;
    Panel22: TPanel;
    Label2: TLabel;
    EdtBuscaTipoUsuario: TEdit;
    Label3: TLabel;
    EdtBuscaSituacaoChamado: TEdit;
    Label4: TLabel;
    EdtBuscaTipoChamado: TEdit;
    Label5: TLabel;
    EdtBuscaPrioridadeChamado: TEdit;
    PanelUsuarios: TPanel;
    Label10: TLabel;
    DBEditNome: TDBEdit;
    Label11: TLabel;
    DBEditUsuario: TDBEdit;
    Label12: TLabel;
    DBEditSenha: TDBEdit;
    Label13: TLabel;
    DBEditEndereco: TDBEdit;
    Label14: TLabel;
    DBEditCidade: TDBEdit;
    Label15: TLabel;
    DBEditUF: TDBEdit;
    Label16: TLabel;
    DBEditTelefone: TDBEdit;
    Label17: TLabel;
    DBEditCelular: TDBEdit;
    Label18: TLabel;
    DBEditEmail: TDBEdit;
    Label19: TLabel;
    DBLookupComboBoxTipoUsuario: TDBLookupComboBox;
    PanelTipoUsuario: TPanel;
    Label6: TLabel;
    DBEditTipoUsuario: TDBEdit;
    PanelSituacaoChamados: TPanel;
    Label7: TLabel;
    DBEditSituacaoChamado: TDBEdit;
    PanelTipoChamados: TPanel;
    Label8: TLabel;
    DBEditTipoChamado: TDBEdit;
    PanelPrioridadeChamados: TPanel;
    Label9: TLabel;
    DBEditPrioridadeChamado: TDBEdit;
    DBRadioGroupNivelAcesso: TDBRadioGroup;
    ImageList1: TImageList;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnUsuarioInserirClick(Sender: TObject);
    procedure BitBtnUsuarioEditarClick(Sender: TObject);
    procedure BitBtnUsuarioSalvarClick(Sender: TObject);
    procedure BitBtnUsuarioCancelarClick(Sender: TObject);
    procedure BitBtnUsuarioDeletarClick(Sender: TObject);
    function ValidaCamposUsuarios():boolean;
    procedure EdtBuscaUsuarioChange(Sender: TObject);
    procedure EdtBuscaTipoUsuarioChange(Sender: TObject);
    procedure BitBtnTipoUsuarioInserirClick(Sender: TObject);
    procedure BitBtnTipoUsuarioEditarClick(Sender: TObject);
    procedure BitBtnTipoUsuarioSalvarClick(Sender: TObject);
    procedure BitBtnTipoUsuarioCancelarClick(Sender: TObject);
    procedure BitBtnTipoUsuarioDeletarClick(Sender: TObject);
    procedure EdtBuscaSituacaoChamadoChange(Sender: TObject);
    procedure BitBtnSituacaoChamadosInserirClick(Sender: TObject);
    procedure BitBtnSituacaoChamadosEditarClick(Sender: TObject);
    procedure BitBtnSituacaoChamadosSalvarClick(Sender: TObject);
    procedure BitBtnSituacaoChamadosCancelarClick(Sender: TObject);
    procedure BitBtnSituacaoChamadosDeletarClick(Sender: TObject);
    procedure EdtBuscaTipoChamadoChange(Sender: TObject);
    procedure BitBtnTipoChamadoInserirClick(Sender: TObject);
    procedure BitBtnTipoChamadoEditarClick(Sender: TObject);
    procedure BitBtnTipoChamadoSalvarClick(Sender: TObject);
    procedure BitBtnTipoChamadoCancelarClick(Sender: TObject);
    procedure BitBtnDeletarClick(Sender: TObject);
    procedure EdtBuscaPrioridadeChamadoChange(Sender: TObject);
    procedure BitBtnPrioridadeChamadoInserirClick(Sender: TObject);
    procedure BitBtnPrioridadeChamadoEditarClick(Sender: TObject);
    procedure BitBtnPrioridadeChamadoSalvarClick(Sender: TObject);
    procedure BitBtnPrioridadeChamadoCancelarClick(Sender: TObject);
    procedure BitBtnPrioridadeChamadoDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastros: TFormCadastros;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TFormCadastros.BitBtnDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QueryTipoChamados.State=dsBrowse) then
    begin
      QueryTipoChamados.delete;
      DBGridTipoChamado.SetFocus;
      PanelTipoChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnPrioridadeChamadoCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryPrioridadeChamados.State=dsEdit)or(QueryPrioridadeChamados.State=dsInsert)) then
    begin
      QueryPrioridadeChamados.Cancel;
      DBGridPrioridadeChamado.SetFocus;
      PanelPrioridadeChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnPrioridadeChamadoDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QueryPrioridadeChamados.State=dsBrowse) then
    begin
      QueryPrioridadeChamados.delete;
      DBGridPrioridadeChamado.SetFocus;
      PanelPrioridadeChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnPrioridadeChamadoEditarClick(Sender: TObject);
begin

  PanelPrioridadeChamados.Enabled := true;
  with DMPrincipal do
  begin
    QueryPrioridadeChamados.Edit;
    DBEditPrioridadeChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnPrioridadeChamadoInserirClick(Sender: TObject);
begin

  PanelPrioridadeChamados.Enabled := true;
  with DMPrincipal do
  begin
    QueryPrioridadeChamados.Append;
    DBEditPrioridadeChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnPrioridadeChamadoSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryPrioridadeChamados.State=dsEdit)or(QueryPrioridadeChamados.State=dsInsert)) then
    begin
      if DBEditPrioridadeChamado.Text<>'' then
      Begin
        QueryPrioridadeChamados.post;
        DBGridPrioridadeChamado.SetFocus;
        PanelPrioridadeChamados.Enabled := false;
      End
      Else
      Begin
        Showmessage('A prioridade de chamado deve ser preenchida!');
        DBEditPrioridadeChamado.SetFocus;
      End;
    end;
  end;

end;

procedure TFormCadastros.BitBtnSituacaoChamadosCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QuerySituacaoChamados.State=dsEdit)or(QuerySituacaoChamados.State=dsInsert)) then
    begin
      QuerySituacaoChamados.Cancel;
      DBGridSituacaoChamado.SetFocus;
      PanelSituacaoChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnSituacaoChamadosDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QuerySituacaoChamados.State=dsBrowse) then
    begin
      QuerySituacaoChamados.delete;
      DBGridSituacaoChamado.SetFocus;
      PanelSituacaoChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnSituacaoChamadosEditarClick(Sender: TObject);
begin

  PanelSituacaoChamados.Enabled := true;
  with DMPrincipal do
  begin
    QuerySituacaoChamados.Edit;
    DBEditSituacaoChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnSituacaoChamadosInserirClick(Sender: TObject);
begin

  PanelSituacaoChamados.Enabled := true;
  with DMPrincipal do
  begin
    QuerySituacaoChamados.Append;
    DBEditSituacaoChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnSituacaoChamadosSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QuerySituacaoChamados.State=dsEdit)or(QuerySituacaoChamados.State=dsInsert)) then
    begin
      if DBEditSituacaoChamado.Text<>'' then
      Begin
        QuerySituacaoChamados.post;
        DBGridSituacaoChamado.SetFocus;
        PanelSituacaoChamados.Enabled := false;
      End
      Else
      Begin
        Showmessage('O Tipo de usu�rio deve ser preenchido!');
        DBEditSituacaoChamado.SetFocus;
      End;
    end;
  end;

end;

procedure TFormCadastros.BitBtnTipoChamadoCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryTipoChamados.State=dsEdit)or(QueryTipoChamados.State=dsInsert)) then
    begin
      QueryTipoChamados.Cancel;
      DBGridTipoChamado.SetFocus;
      PanelTipoChamados.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnTipoChamadoEditarClick(Sender: TObject);
begin

  PanelTipoChamados.Enabled := true;
  with DMPrincipal do
  begin
    QueryTipoChamados.Edit;
    DBEditTipoChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnTipoChamadoInserirClick(Sender: TObject);
begin

  PanelTipoChamados.Enabled := true;
  with DMPrincipal do
  begin
    QueryTipoChamados.Append;
    DBEditTipoChamado.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnTipoChamadoSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryTipoChamados.State=dsEdit)or(QueryTipoChamados.State=dsInsert)) then
    begin
      if DBEditTipoChamado.Text<>'' then
      Begin
        QueryTipoChamados.post;
        DBGridTipoChamado.SetFocus;
        PanelTipoChamados.Enabled := false;
      End
      Else
      Begin
        Showmessage('O Tipo de chamado deve ser preenchido!');
        DBEditTipoChamado.SetFocus;
      End;
    end;
  end;

end;

procedure TFormCadastros.BitBtn1Click(Sender: TObject);
begin

  Close;

end;

procedure TFormCadastros.BitBtnUsuarioDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QueryUsuarios.State=dsBrowse) then
    begin
      QueryUsuarios.delete;
      DBGridUsuarios.SetFocus;
      PanelUsuarios.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnUsuarioSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryUsuarios.State=dsEdit)or(QueryUsuarios.State=dsInsert)) then
    begin
      if ValidaCamposUsuarios then
      Begin
        QueryUsuarios.post;
        DBGridUsuarios.SetFocus;
        PanelUsuarios.Enabled := false;
      End;
    end;
  end;

end;

procedure TFormCadastros.EdtBuscaTipoUsuarioChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if EdtBuscaTipoUsuario.Text='' then
      QueryTipoUsuarios.Filtered := false
    Else
    Begin
      QueryTipoUsuarios.Filtered := false;
      QueryTipoUsuarios.Filter := 'TipoUsuario Like ' + UpperCase(QuotedStr(EdtBuscaTipoUsuario.Text + '%')); //'TipoUsuario like ' + QuotedStr(AnsiUpperCase(EdtBuscaTipoUsuario.Text) + '%');
      QueryTipoUsuarios.Filtered := true;
    End;
  end;

end;

procedure TFormCadastros.EdtBuscaUsuarioChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if EdtBuscaUsuario.Text='' then
      QueryUsuarios.Filtered := false
    Else
    Begin
      QueryUsuarios.Filtered := false;
      QueryUsuarios.Filter := 'NOME LIKE ' + QuotedStr(AnsiUpperCase(EdtBuscaUsuario.Text) + '%');
      QueryUsuarios.Filtered := true;
    End;
  end;

end;

procedure TFormCadastros.EdtBuscaTipoChamadoChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if EdtBuscaTipoChamado.Text='' then
      QueryTipoChamados.Filtered := false
    Else
    Begin
      QueryTipoChamados.Filtered := false;
      QueryTipoChamados.Filter := 'TIPOCHAMADO LIKE ' + QuotedStr(AnsiUpperCase(EdtBuscaTipoChamado.Text) + '%');
      QueryTipoChamados.Filtered := true;
    End;
  end;

end;

procedure TFormCadastros.EdtBuscaPrioridadeChamadoChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if EdtBuscaPrioridadeChamado.Text='' then
      QueryPrioridadeChamados.Filtered := false
    Else
    Begin
      QueryPrioridadeChamados.Filtered := false;
      QueryPrioridadeChamados.Filter := 'Prioridade LIKE ' + QuotedStr(AnsiUpperCase(EdtBuscaPrioridadeChamado.Text) + '%');
      QueryPrioridadeChamados.Filtered := true;
    End;
  end;

end;

procedure TFormCadastros.EdtBuscaSituacaoChamadoChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if EdtBuscaSituacaoChamado.Text='' then
      QuerySituacaoChamados.Filtered := false
    Else
    Begin
      QuerySituacaoChamados.Filtered := false;
      QuerySituacaoChamados.Filter := 'Situacao LIKE ' + QuotedStr(AnsiUpperCase(EdtBuscaSituacaoChamado.Text) + '%');
      QuerySituacaoChamados.Filtered := true;
    End;
  end;

end;

procedure TFormCadastros.BitBtnUsuarioEditarClick(Sender: TObject);
begin

  PanelUsuarios.Enabled := true;
  with DMPrincipal do
  begin
    QueryUsuarios.Edit;
    DBEditNome.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnUsuarioInserirClick(Sender: TObject);
begin

  PanelUsuarios.Enabled := true;
  with DMPrincipal do
  begin
    QueryUsuarios.Append;
    DBEditNome.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnTipoUsuarioCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryTipoUsuarios.State=dsEdit)or(QueryTipoUsuarios.State=dsInsert)) then
    begin
      QueryTipoUsuarios.Cancel;
      DBGridTipoUsuario.SetFocus;
      PanelTipoUsuario.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnTipoUsuarioDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QueryTipoUsuarios.State=dsBrowse) then
    begin
      QueryTipoUsuarios.delete;
      DBGridTipoUsuario.SetFocus;
      PanelTipoUsuario.Enabled := false;
    end;
  end;

end;

procedure TFormCadastros.BitBtnTipoUsuarioEditarClick(Sender: TObject);
begin

  PanelTipoUsuario.Enabled := true;
  with DMPrincipal do
  begin
    QueryTipoUsuarios.Edit;
    DBEditTipoUsuario.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnTipoUsuarioInserirClick(Sender: TObject);
begin

  PanelTipoUsuario.Enabled := true;
  with DMPrincipal do
  begin
    QueryTipoUsuarios.Append;
    DBEditTipoUsuario.SetFocus;
  end;

end;

procedure TFormCadastros.BitBtnTipoUsuarioSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryTipoUsuarios.State=dsEdit)or(QueryTipoUsuarios.State=dsInsert)) then
    begin
      if DBEditTipoUsuario.Text<>'' then
      Begin
        QueryTipoUsuarios.post;
        DBGridTipoUsuario.SetFocus;
        PanelTipoUsuario.Enabled := false;
      End
      Else
      Begin
        Showmessage('O Tipo de usu�rio deve ser preenchido!');
        DBEditTipoUsuario.SetFocus;
      End;
    end;
  end;

end;

procedure TFormCadastros.BitBtnUsuarioCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryUsuarios.State=dsEdit)or(QueryUsuarios.State=dsInsert)) then
    begin
      QueryUsuarios.Cancel;
      DBGridUsuarios.SetFocus;
      PanelUsuarios.Enabled := false;
    end;
  end;

end;

function TFormCadastros.ValidaCamposUsuarios: boolean;
begin
  if DBEditNome.Text='' then
  Begin
    Showmessage('O nome deve ser preenchido!');
    DBEditNome.SetFocus;
    result := false;
  End
  else
  Begin
    if DBEditUsuario.Text='' then
    Begin
      Showmessage('O usu�rio deve ser preenchido!');
      DBEditUsuario.SetFocus;
      result := false;
    End
    else
    Begin
      if DBEditSenha.Text='' then
      Begin
        Showmessage('A senha deve ser preenchida!');
        DBEditSenha.SetFocus;
        result := false;
      End
      else
      Begin
        if DBEditEmail.Text='' then
        Begin
          Showmessage('O E-mail deve ser preenchido!');
          DBEditEmail.SetFocus;
          result := false;
        End
        else
        Begin
          if DBRadioGroupNivelAcesso.ItemIndex=-1 then
          Begin
            Showmessage('O n�vel de acesso deve ser preenchido!');
            DBRadioGroupNivelAcesso.SetFocus;
            result := false;
          End
          else
          Begin
            if DBLookupComboBoxTipoUsuario.Text='' then
            begin
              Showmessage('O tipo de usuario deve ser preenchido!');
              DBLookupComboBoxTipoUsuario.SetFocus;
              result := false;
            end;
          End;
        End;
      End;
    End;
  End;

end;

end.
