program OS;

uses
  Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {FormPrincipal},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  FrmCadastros in 'FrmCadastros.pas' {FormCadastros},
  FrmChamados in 'FrmChamados.pas' {FormChamados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormCadastros, FormCadastros);
  Application.CreateForm(TFormChamados, FormChamados);
  Application.Run;
end.
