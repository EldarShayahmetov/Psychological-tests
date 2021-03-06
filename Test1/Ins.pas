unit Ins;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TInstruction = class(TForm)
    PTop: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    REIns: TRichEdit;
    BBExit: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Instruction: TInstruction;
  // ������ ������ ������ ������ 1

SizeFont : Integer = 1;

// ���������� ���������� �� ���������� ����� ������



implementation

{$R *.dfm}

uses Variable;

procedure TInstruction.FormActivate(Sender: TObject);
var
S : Byte;

begin
S := 1;

// ����������� ���� � �������������� ��������

SetBounds( Left - ClientOrigin.X, Top - ClientOrigin.Y, GetDeviceCaps(

Canvas.handle, HORZRES ) + (Width - ClientWidth), GetDeviceCaps( Canvas.handle,VERTRES )

+ (Height - ClientHeight ));


// ������ ��������� ������ �����

BBExit.Left := 2 * (Instruction.Width div 4) - (BBExit.Width div 2);

// ��������� ��������� ������ ������

REIns.Font.Size := ClientHeight div (S*8);

// ��������� ����� ����������

PTop.Caption := SN;

REIns.Visible := False;

// ����������� ����� �� ��� ��� ���� ����� �� ����� ����������� � �����

while (SizeFont <= (ClientHeight div (S*2-1)+5)-20) do

begin

// ����� ���������� ����� ������

S := REIns.Lines.Count;

// �������� ����� �����

REIns.SelectAll;

// ���������� ����� ������ ������

REIns.SelAttributes.Size := SizeFont;

// ��������� ������ ������ �� 1

Inc(SizeFont,1);

end;

// ���������� ���������� �����

REIns.Visible := True;

// ������ ���������

REIns.SelLength := 0;
end;

procedure TInstruction.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '0' then BBExit.Click;

end;

end.
