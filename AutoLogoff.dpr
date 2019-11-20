program AutoLogoff;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FLogin},
  UPrincipal in 'UPrincipal.pas' {FPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
