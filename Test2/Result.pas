unit Result;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFResult = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Bevel1: TBevel;
    L1: TLabel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResult: TFResult;

implementation

{$R *.dfm}

uses Test, Variable;

procedure TFResult.FormActivate(Sender: TObject);
begin
  SetBounds( Left - ClientOrigin.X, Top - ClientOrigin.Y, GetDeviceCaps(
 Canvas.handle, HORZRES ) + (Width - ClientWidth), GetDeviceCaps( Canvas.handle,VERTRES )
 + (Height - ClientHeight ));

 Bevel1.Width := ClientWidth div 2;
 Bevel1.Left := (ClientWidth div 2)-(Bevel1.Width div 2);
 L1.Left := ((Bevel1.Left + Bevel1.Width) div 2);
  Label1.Left := ((Bevel1.Left + Bevel1.Width) div 2);
 BitBtn1.Left := (ClientWidth div 2)-(BitBtn1.Width div 2);

L1.Caption:= 'Показатель Б= '+inttostr(B)+' Показатель В= '+inttostr(V);

if (B<=8) and (V<=8) then Label1.Caption :='Вы человек весьма уравновешенный в своих чувствах и действиях.';
if (B>=16) and (V<=8) then Label1.Caption :='Вы человек уравновешенный, умеете себя сдерживать.';
if (B>=16) and (V>=16) then Label1.Caption :='Вы импульсивный, вспыльчивый, легко возбудимый человек.';
if (B>=16) and (V>=8) and (V<16) then Label1.Caption :='Вы человек достаточно живой и общительный';
if (B<=8) and (V>=16) then Label1.Caption :='Вы впечатлительный, стеснительный человек.';
if (B<=8) and (V>=8) and (V<=16) then Label1.Caption :='Вы человек необщительный, застенчивый.';
if (B>=8) and (B<16) and (V>=16) then Label1.Caption :='Вы человек эмоционально неустойчивый, чувствительный.';
if (B>=8) and (B<16) and (V<=8) then Label1.Caption :='Вы человек спокойный, постоянный в дружбе и интересах.';
if (B>=8) and (B<=16) and (V<=8) then Label1.Caption :='Вы человек в меру общительный,но иногда даете волю эмоциям.';
if(B>=16) and (V>=16) then Label1.Caption :='Вы человек достаточно живой и общительный';

Panel1.Caption := 'Результат '+SN;
end;

procedure TFResult.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = '0' then BitBtn1.Click;
end;

end.
