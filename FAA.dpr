program FAA;

uses
  Vcl.Forms,
  FAA.Main in 'FAA.Main.pas' {FormMain},
  HGM.WinAPI in '..\Components\HGM.WinAPI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
