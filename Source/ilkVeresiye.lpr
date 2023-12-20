program ilkVeresiye;

{$mode objfpc}{$H+}

uses
 {$IFDEF UNIX}
  cthreads,
      {$ENDIF} {$IFDEF HASAMIGA}
  athreads,
      {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  SysUtils,
  Main,
  splash { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize();

  Splash.Form_Splash := Splash.TForm_Splash.Create(Application);
  Splash.Form_Splash.Show();
  Application.ProcessMessages();
  Sleep(5000);


  Application.CreateForm(TForm_Main, Form_Main);

  Splash.Form_Splash.Close();

  Application.Run();
end.
