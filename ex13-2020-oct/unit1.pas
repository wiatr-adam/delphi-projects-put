unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    // buttons
    btnRun: TButton;
    btnClose: TButton;

    // edit fields
    edtNumberA: TEdit;
    edtNumberB: TEdit;

    // labels
    lblNumberA: TLabel;
    Label2: TLabel;
    lblNumberB: TLabel;
    lblGCD: TLabel;
    lblLCM: TLabel;
    lblWarning: TLabel;

    procedure btnCloseClick(Sender: TObject);
    procedure btnRunClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnRunClick(Sender: TObject);
var GCD, LCM, NumberA, NumberB, tmpNumberA, tmpNumberB: Integer;
var FlagLoop : Boolean;
begin
  // check if both numbers are given
  if (edtNumberA.GetTextLen > 0) AND (edtNumberB.GetTextLen > 0) then
    begin
      // check if none of the given numbers are zero
      if (edtNumberA.Text <> '0') AND (edtNumberB.Text <> '0') then
      begin
      // assign given values to the variables
      tmpNumberA := StrToInt(edtNumberA.Text);
      NumberA := StrToInt(edtNumberA.Text);
      tmpNumberB := StrToInt(edtNumberB.Text);
      NumberB := StrToInt(edtNumberB.Text);

      // main loop
      FlagLoop := True;
      while FlagLoop = True do
      begin
        if tmpNumberA = tmpNumberB then
          begin
          FlagLoop := False;
          // assign Greates Common Divisor
          GCD := tmpNumberA;
          end
        else
          if tmpNumberA > tmpNumberB then
            begin
            tmpNumberA := tmpNumberA - tmpNumberB;
            end
          else
            tmpNumberB := tmpNumberB - tmpNumberA;
      end;

      // assign Least Common Multiple
      LCM := (NumberA * NumberB) div GCD;

      // change labels and buttons captions
      lblGCD.Caption :='GCD: ' + IntToStr(GCD);
      lblLCM.Caption := 'LCM: ' + IntToStr(LCM);
      lblWarning.Caption := '';
      btnRun.Caption := '&Rerun';
      end

      else
        begin
          lblWarning.Caption := 'Numbers cannot be 0';
        end
    end

    else if (edtNumberA.GetTextLen = 0) AND (edtNumberB.GetTextLen = 0) then
      begin
        lblWarning.Caption := 'Enter two numbers';
      end

    else if (edtNumberA.GetTextLen = 0) OR (edtNumberB.GetTextLen = 0) then
      begin
        lblWarning.Caption := 'Enter second number';
      end;

end;


procedure TForm1.btnCloseClick(Sender: TObject);
begin
  Close;

end;


end.

