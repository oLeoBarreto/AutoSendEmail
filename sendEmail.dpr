program sendEmail;

uses
  Vcl.Forms,
  uFormMain in 'uFormMain.pas' {FormMain},
  uDmDados in 'Form\uDmDados.pas' {DmDados: TDataModule},
  uLybrary in 'Unit\uLybrary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
