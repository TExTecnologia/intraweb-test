unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, Forms;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;


function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
var
  caminho: String;
begin
  caminho:= ExtractFileDir(Application.ExeName);
  caminho:= StringReplace(Caminho, 'Win32\Debug', '', []);
  TemplateDir:= caminho + 'Templates\';
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

// $(APPLICATION)\Templates\
