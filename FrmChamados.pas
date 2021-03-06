unit FrmChamados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  db, Dialogs, StdCtrls, Grids, DBGrids, ToolWin, ComCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TFormChamados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    PanelCad: TPanel;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    ToolBar1: TToolBar;
    BitBtnUsuarioInserir: TBitBtn;
    BitBtnUsuarioEditar: TBitBtn;
    BitBtnUsuarioSalvar: TBitBtn;
    BitBtnUsuarioCancelar: TBitBtn;
    BitBtnUsuarioDeletar: TBitBtn;
    PanelCadastro: TPanel;
    DBGridChamados: TDBGrid;
    Label1: TLabel;
    CbxBusca: TComboBox;
    CbxConteudo: TComboBox;
    ScrollBoxCadastro: TScrollBox;
    Label2: TLabel;
    LkpUsuarioCriador: TDBLookupComboBox;
    Label3: TLabel;
    LkpUsuarioResponsavel: TDBLookupComboBox;
    Label4: TLabel;
    LkpTipoChamado: TDBLookupComboBox;
    Label5: TLabel;
    LkpPrioridade: TDBLookupComboBox;
    Label6: TLabel;
    LkpSituacao: TDBLookupComboBox;
    Label7: TLabel;
    DBEditAssunto: TDBEdit;
    Label8: TLabel;
    DBMemoDescricao: TDBMemo;
    Label9: TLabel;
    DBMemoExtras: TDBMemo;
    Label10: TLabel;
    DBEditDataPrevisao: TDBEdit;
    Label11: TLabel;
    DBEditDataEntrega: TDBEdit;
    Label12: TLabel;
    DBEditHorasTrabalhadas: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure CbxBuscaChange(Sender: TObject);
    procedure CbxConteudoChange(Sender: TObject);
    function ValidaCampoEdit(Edit:TDBEdit;NomeCampo:String):boolean;
    function ValidaCampoLoockup(Loockup:TDBLookupComboBox;NomeCampo:String):boolean;
    function ValidaCampoMemo(Memo:TDBMemo;NomeCampo:String):boolean;
    procedure BitBtnUsuarioInserirClick(Sender: TObject);
    procedure BitBtnUsuarioEditarClick(Sender: TObject);
    procedure BitBtnUsuarioSalvarClick(Sender: TObject);
    procedure BitBtnUsuarioCancelarClick(Sender: TObject);
    procedure BitBtnUsuarioDeletarClick(Sender: TObject);
    procedure DBGridChamadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChamados: TFormChamados;

implementation

uses UDMPrincipal;

{$R *.dfm}

procedure TFormChamados.BitBtn1Click(Sender: TObject);
begin

  Close;

end;

procedure TFormChamados.BitBtnUsuarioCancelarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryChamados.State=dsEdit)or(QueryChamados.State=dsInsert)) then
    begin
      QueryChamados.Cancel;
      DBGridChamados.SetFocus;
      ScrollBoxCadastro.Enabled := false;
    end;
  end;

end;

procedure TFormChamados.BitBtnUsuarioDeletarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if (QueryChamados.State=dsBrowse) then
    begin
      QueryChamados.delete;
      DBGridChamados.SetFocus;
      ScrollBoxCadastro.Enabled := false;
    end;
  end;

end;

procedure TFormChamados.BitBtnUsuarioEditarClick(Sender: TObject);
begin

  ScrollBoxCadastro.Enabled := true;
  with DMPrincipal do
  begin
    QueryChamados.edit;
    LkpUsuarioCriador.SetFocus;
  end;

end;

procedure TFormChamados.BitBtnUsuarioInserirClick(Sender: TObject);
begin

  ScrollBoxCadastro.Enabled := true;
  with DMPrincipal do
  begin
    QueryChamados.Append;
    QueryChamadosData_Cadastro.Value := Now;
    LkpUsuarioCriador.SetFocus;
  end;

end;

procedure TFormChamados.BitBtnUsuarioSalvarClick(Sender: TObject);
begin

  with DMPrincipal do
  begin
    if ((QueryChamados.State=dsEdit)or(QueryChamados.State=dsInsert)) then
    begin
      if ValidaCampoEdit(DBEditAssunto,'Assunto') then
      Begin
        if ValidaCampoLoockup(LkpUsuarioCriador,'Usu�rio criador') then
        Begin
          if ValidaCampoLoockup(LkpUsuarioResponsavel,'Usu�rio respons�vel') then
          Begin
            if ValidaCampoLoockup(LkpTipoChamado,'Tipo de chamado') then
            Begin
              if ValidaCampoLoockup(LkpPrioridade,'Prioridade de chamado') then
              Begin
                if ValidaCampoLoockup(LkpSituacao,'Situa��o de chamado') then
                Begin
                  if ValidaCampoMemo(DBMemoDescricao,'descri��o') then
                  Begin
                    QueryChamados.post;
                    QueryChamados.Close;
                    QueryChamados.Open;
                    DBGridChamados.SetFocus;
                    ScrollBoxCadastro.Enabled := false;
                  End;
                End;
              End;
            End;
          End;
        End
      End;
    end;
  end;

end;

procedure TFormChamados.CbxBuscaChange(Sender: TObject);
begin

{
  OP��ES:
  0 - USU�RIO CRIADOR
  1 - USU�RIO RESPONS�VEL
  2 - TIPO DE CHAMADO
  3 - PRIORIDADE DE CHAMADO
  4 - SITUA��O DE CHAMADO
  5 - DATA DE CADASTRO
  6 - DATA DE ENTREGA
  7 - DATA DE PREVIS�O
}

  with DMPrincipal do
  Begin
    case CbxBusca.ItemIndex of
      0:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct u.nome ' +
                                'from chamados c left join usuarios u on c.UsuarioCriador_id = u.id ' +
                                'order by u.nome';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Nome').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      1:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct u.nome ' +
                                'from chamados c left join usuarios u on c.UsuarioResponsavel_id = u.id ' +
                                'order by u.nome';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Nome').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      2:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct t.tipoChamado ' +
                                'from chamados c left join tipochamados t on c.TipoChamado_id = t.id ' +
                                'order by t.tipoChamado';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('tipoChamado').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      3:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct p.Prioridade ' +
                                'from chamados c left join PrioridadeChamados p on c.PrioridadeChamado_id = p.id ' +
                                'order by p.Prioridade';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Prioridade').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      4:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct s.Situacao ' +
                                'from chamados c left join SituacaoChamados s on c.SituacaoChamado_id = s.id ' +
                                'order by s.Situacao';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Situacao').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      5:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct Data_Cadastro ' +
                                'from chamados ' +
                                'order by Data_Cadastro';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Data_Cadastro').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      6:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct Data_Entrega ' +
                                'from chamados ' +
                                'order by Data_Entrega';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Data_Entrega').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
      7:Begin
          QueryTemp.Close;
          QueryTemp.SQL.Clear;
          QueryTemp.SQL.Text := 'select distinct Data_Previsao ' +
                                'from chamados ' +
                                'order by Data_Previsao';
          QueryTemp.Open;

          if not QueryTemp.IsEmpty then
          Begin
            CbxConteudo.Clear;
            CbxConteudo.Items.Add('');
            while not QueryTemp.Eof do
            Begin
              CbxConteudo.Items.Add(QueryTemp.FieldByName('Data_Previsao').Text);
              QueryTemp.Next;
            End;
          End;
          CbxConteudo.SetFocus;
        End;
    end;
  End;

end;

procedure TFormChamados.CbxConteudoChange(Sender: TObject);
begin

{
  OP��ES:
  0 - USU�RIO CRIADOR
  1 - USU�RIO RESPONS�VEL
  2 - TIPO DE CHAMADO
  3 - PRIORIDADE DE CHAMADO
  4 - SITUA��O DE CHAMADO
  5 - DATA DE CADASTRO
  6 - DATA DE ENTREGA
  7 - DATA DE PREVIS�O
}

  with DMPrincipal do
  Begin
    case CbxBusca.ItemIndex of
      0:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'UsuarioCriador = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      1:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'UsuarioResponsavel = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      2:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'tipoChamado = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      3:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'Prioridade = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      4:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'Situacao = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      5:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'Data_cadastro = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      6:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'Data_entrega = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
      7:Begin
          if CbxConteudo.Text = '' then
            QueryChamados.Filtered := false
          else
          Begin
            QueryChamados.Filtered := false;
            QueryChamados.Filter   := 'Data_previsao = ' + QuotedStr(CbxConteudo.Text);
            QueryChamados.Filtered := true;
          End;
        End;
    end;
  End;

end;

procedure TFormChamados.DBGridChamadosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  with DMPrincipal do
  Begin
    if QueryChamadosSituacao.Value = 'Fechado' then
    Begin
      DBGridChamados.Canvas.Font.Color := clBlack;
      DBGridChamados.DefaultDrawDataCell(Rect, DBGridChamados.columns[datacol].field, State);    
    End
    else
    Begin    
      case QueryChamadosPrioridadeChamado_id.AsInteger of
        1:Begin
            DBGridChamados.Canvas.Font.Color := clBlue;
            DBGridChamados.DefaultDrawDataCell(Rect, DBGridChamados.columns[datacol].field, State);
          End;
        2:Begin
            DBGridChamados.Canvas.Font.Color := clGreen;
            DBGridChamados.DefaultDrawDataCell(Rect, DBGridChamados.columns[datacol].field, State);
          End;
        3:Begin
            DBGridChamados.Canvas.Font.Color := clWebDarkOrange;
            DBGridChamados.DefaultDrawDataCell(Rect, DBGridChamados.columns[datacol].field, State);
          End;
        4:Begin
            DBGridChamados.Canvas.Font.Color := clRed;
            DBGridChamados.DefaultDrawDataCell(Rect, DBGridChamados.columns[datacol].field, State);
          End;
      end;
    End;
  End;


end;

function TFormChamados.ValidaCampoEdit(Edit: TDBEdit;NomeCampo:String): boolean;
begin

  if Edit.Text='' then
  Begin
    ShowMessage('O campo ' + NomeCampo + ' deve ser preenchido!');
    Edit.SetFocus;
    result := false;
  End
  else
    result := true;

end;

function TFormChamados.ValidaCampoLoockup(Loockup: TDBLookupComboBox; NomeCampo: String): boolean;
begin

  if Loockup.Text='' then
  Begin
    ShowMessage('O campo ' + NomeCampo + ' deve ser preenchido!');
    Loockup.SetFocus;
    result := false;
  End
  else
    result := true;

end;

function TFormChamados.ValidaCampoMemo(Memo: TDBMemo; NomeCampo: String): boolean;
begin

  if Memo.Text='' then
  Begin
    ShowMessage('O campo ' + NomeCampo + ' deve ser preenchido!');
    Memo.SetFocus;
    result := false;
  End
  else
    result := true;

end;

end.
