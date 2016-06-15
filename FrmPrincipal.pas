unit FrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ToolWin, ComCtrls;

type
  TFormPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PnlForm: TPanel;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses FrmCadastros, FrmChamados;

{$R *.dfm}

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin

  Close;

end;

procedure TFormPrincipal.BitBtn3Click(Sender: TObject);
begin
  FormChamados.Parent := PnlForm;
  FormChamados.Align := alClient;
  FormChamados.Show;

end;

procedure TFormPrincipal.BitBtn4Click(Sender: TObject);
begin

  FormCadastros.Parent := PnlForm;
  FormCadastros.Align := alClient;
  FormCadastros.Show;

end;

end.
