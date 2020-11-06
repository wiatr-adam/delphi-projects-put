unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers, System.DateUtils,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btn_oblicz: TButton;
    date_from: TDatePicker;
    date_to: TDatePicker;
    date_from_text: TStaticText;
    date_to_text: TStaticText;
    procedure btn_obliczClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_obliczClick(Sender: TObject);

  var ileDni: Integer;

  begin

    ileDni := DaysBetween(date_to.Date, date_from.Date);
    MessageDlg('Pomiêdzy ' + DateTimeToStr(date_from.Date) + ' a ' + DateTimeToStr(date_to.Date) + ' jest ' + IntToStr(ileDni) + ' dni', mtCustom, [mbOK], 0);

  end;


end.
