program Prj_Transporte;

uses
  Forms,
  U_transporte in 'U_transporte.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
