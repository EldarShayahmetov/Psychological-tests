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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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

uses Test, Variable, main;

procedure TFResult.FormActivate(Sender: TObject);
begin
  SetBounds( Left - ClientOrigin.X, Top - ClientOrigin.Y, GetDeviceCaps(
 Canvas.handle, HORZRES ) + (Width - ClientWidth), GetDeviceCaps( Canvas.handle,VERTRES )
 + (Height - ClientHeight ));

 Bevel1.Width := ClientWidth div 2;
 Bevel1.Left := (ClientWidth div 2)-(Bevel1.Width div 2);
 L1.Left := ((Bevel1.Left + Bevel1.Width) div 2);
  Label1.Left := ((Bevel1.Left + Bevel1.Width) div 2);
    Label2.Left := ((Bevel1.Left + Bevel1.Width) div 2);
      Label3.Left := ((Bevel1.Left + Bevel1.Width) div 2);
        Label4.Left := ((Bevel1.Left + Bevel1.Width) div 2);
          Label5.Left := ((Bevel1.Left + Bevel1.Width) div 2);
            Label6.Left := ((Bevel1.Left + Bevel1.Width) div 2);
              Label7.Left := ((Bevel1.Left + Bevel1.Width) div 2);
                Label8.Left := ((Bevel1.Left + Bevel1.Width) div 2);
                  Label9.Left := ((Bevel1.Left + Bevel1.Width) div 2);
                    Label10.Left := ((Bevel1.Left + Bevel1.Width) div 2);
 BitBtn1.Left := (ClientWidth div 2)-(BitBtn1.Width div 2);

L1.Caption:= 'Ўкала лжи ='+inttostr(L);
label1.Caption:= 'Ўкала достоверности = '+inttostr(F);
label2.Caption:= 'Ўкала коррекции = '+inttostr(K);
label3.Caption:= '»похондри€ = '+inttostr(Hs);
label4.Caption:= 'ƒепресси€ = '+inttostr(D);
label5.Caption:= '»стери€ = '+inttostr(Hy);
label6.Caption:= 'ѕсихопати€ = '+inttostr(Pd);
label7.Caption:= 'ѕараной€льность = '+inttostr(Pa);
label8.Caption:= 'ѕсихостени€ = '+inttostr(Pt);
label9.Caption:= 'Ўизоидность = '+inttostr(Sc);
label10.Caption:= '√ипотони€ = '+inttostr(Ma);


Panel1.Caption := '–езультат '+SN;
end;

procedure TFResult.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = '0' then BitBtn1.Click;
end;

end.
