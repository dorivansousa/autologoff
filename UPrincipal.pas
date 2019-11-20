unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.AppEvnts, Vcl.StdCtrls;

type
  TFPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    TimerLogoff: TTimer;
    EdtTimeOutLogoff: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure TimerLogoffTimer(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function login: boolean;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses ULogin;

function ExisteForm(pForm: TForm): Boolean;
var
  I:Integer;
begin
   ExisteForm := False;
   For I:= 0 to Screen.FormCount - 1 do
    if (Screen.Forms[I] = pForm) then
    begin
      ExisteForm := True;
      Break;
    end;
end;

procedure TFPrincipal.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  if (EdtTimeOutLogoff.Text <> '0')and(not ExisteForm(FLogin)) then
    TimerLogoff.Enabled:=True;
end;

procedure TFPrincipal.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.message = WM_KEYDOWN) or
     (Msg.message = WM_LBUTTONDOWN) or
     (Msg.message = WM_RBUTTONDOWN) or
     (Msg.message = WM_MOUSEMOVE) or
     (Msg.message = WM_SYSKEYDOWN) then
    TimerLogoff.Enabled:= False;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  TimerLogoff.Interval := StrToInt(EdtTimeOutLogoff.Text) * 1000
end;

function TFPrincipal.login: boolean;
begin
  TimerLogoff.Enabled:=False; //desativa o timer

  FLogin := TFLogin.Create(Self);
  try
    FLogin.ShowModal;
    Result := FLogin.ModalResult = MrOk;
  finally
    FLogin.Free;
  end;
end;

procedure TFPrincipal.TimerLogoffTimer(Sender: TObject);
begin
  if Application.FindComponent('FLogin') = nil then
  begin
    if Login then
      Label2.Caption := 'Logado'
    else
      Application.terminate;
  end;
end;

end.
