program Triangle;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$APPTYPE GUI}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormonTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
