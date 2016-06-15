unit FrmUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, Buttons;

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
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    Panel9: TPanel;
    ToolBar2: TToolBar;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel10: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    DBGrid3: TDBGrid;
    Panel13: TPanel;
    ToolBar3: TToolBar;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    Panel14: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    DBGrid4: TDBGrid;
    Panel17: TPanel;
    ToolBar4: TToolBar;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    Panel18: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    Panel19: TPanel;
    Panel20: TPanel;
    DBGrid5: TDBGrid;
    Panel21: TPanel;
    ToolBar5: TToolBar;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    Panel22: TPanel;
    Label5: TLabel;
    Edit5: TEdit;
    Panel23: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastros: TFormCadastros;

implementation

{$R *.dfm}

procedure TFormCadastros.BitBtn1Click(Sender: TObject);
begin

  Close;

end;

end.
