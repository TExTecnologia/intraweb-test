unit Primo;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompEdit, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWLayoutMgrHTML,
  IWCompButton, strUtils;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure IWButton1Click(Sender: TObject);
  public
    function calcPrimo(valor: integer):boolean;
  end;

implementation

{$R *.dfm}

function TIWForm1.calcPrimo(valor: integer): boolean;
begin
  Result:= ((valor mod 2) = 0);
end;

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  xx: boolean;
  msg: String;
begin
  xx:= calcPrimo(StrToInt(IWEdit1.Text));
  msg:= ifthen(xx, 'É divisivel por 2', 'nooooooooooooooo!!!');
  WebApplication.ShowMessage(msg);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
