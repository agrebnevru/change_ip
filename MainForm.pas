unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, OleCtrls, SHDocVw, IdCookieManager, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EditProxyServer: TEdit;
    IdCM: TIdCookieManager;
    Button2: TButton;
    Memo1: TMemo;
    EditProxyPort: TEdit;
    Button1: TButton;
    IdHTTP: TIdHTTP;
    WebBrowser1: TWebBrowser;
    EditLinkToGo: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
IdHTTP.ProxyParams.ProxyServer:= EditProxyServer.Text;
IdHTTP.ProxyParams.ProxyPort:= StrToInt(EditProxyPort.Text);
//Memo1.Text:= IdHTTP.Get('http://www.ipaddrs.com/');
Memo1.Text:= IdHTTP.Get(EditLinkToGo.Text);
Memo1.Lines.SaveToFile(ExtractFilePath(application.ExeName)+'index.html');
sleep(500);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(application.ExeName)+'index.html');
end;

end.
