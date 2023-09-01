unit TSWebDriver.IBrowser;

interface

uses
  TSWebDriver.By, TSWebDriver.IElement, TSWebDriver.Request;

type
  ITSWebDriverBrowser = interface
    ['{DAEFC929-0451-4D61-8773-D240736B3BCD}']
    function Execute(): ITSWebDriverRequest;
    function NewSession(): ITSWebDriverBrowser;
    function CloseSection(): ITSWebDriverBrowser;
    function NavigateTo(AUrl: string): ITSWebDriverBrowser;
    function ExecuteSyncScript(AScript: string; AParameters: string = '{}'; AArgs: string = '[]'): string;
    function ExecuteAsyncScript(AScript: string; AParameters: string = '{}'; AArgs: string = '[]'): string;
    function SessionID(): string; overload;
    function SessionID(AValue: String): ITSWebDriverBrowser; overload;
    function FindElement(AValue: TSBy): ITSWebDriverElement;
    function FindElements(AValue: TSBy): TTSWebDriverElementList;
    function TakeScreenshot(): String;
    function Status(): Boolean;
    function AddArgument(AValue: String): ITSWebDriverBrowser;
    function WaitForSelector(AValue: String; ATimeout: Integer = 10000): ITSWebDriverBrowser;
    function GetPageSource(): String;
    procedure WaitForPageReady(ATimeout: Integer = 15000);
    procedure Refresh();
    procedure &Forward();
    procedure Back();
    function PrintPage(): string;
    function GetTitle(): string;
    function GetCurrentUrl(): string;
  end;

implementation

end.
