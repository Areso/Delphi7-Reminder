unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    Timer1: TTimer;
    ReminderIcon: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
 //    Procedure ControlWindow(Var Msg:TMessage); message WM_SYSCOMMAND;
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  i:longint;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  days_int, hours_int, min_int, sec_int: integer;
  interval: longint;
begin
    days_int:=StrToInt(Edit1.Text);
    hours_int:=StrToInt(Edit2.Text);
    min_int:=StrToInt(Edit3.Text);
    sec_int:=StrToInt(Edit4.Text);
    interval:=sec_int+min_int*60+ hours_int*60*60+days_int*24*60*60;

    i:=i+1;
  //  label7.caption:=IntToStr(i);
    if i=interval then
    begin
    ReminderIcon.ShowBalloonHint;
    i:=0;
    end;

end;

procedure TForm1.Button1Click(Sender: TObject);

begin
    ReminderIcon.BalloonHint:=Edit5.Text;
end;

end.

