unit Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFTest = class(TForm)
    PTop: TPanel;
    PBottom: TPanel;
    PQuestion: TPanel;
    PAnswer: TPanel;
    LNo: TLabel;
    LQuest: TLabel;
    LAnsw: TLabel;
    RGYesNo: TRadioGroup;
    LOk: TLabel;
    BBExit: TBitBtn;
    TPausa: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure RGYesNoClick(Sender: TObject);
    procedure BBExitClick(Sender: TObject);
    procedure TPausaTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTest: TFTest;
   I, B,V : Integer;
   t : integer = 300;
implementation

{$R *.dfm}

uses Variable, Data, main;

procedure TFTest.BBExitClick(Sender: TObject);
begin
 // ��� ����� ���������� ������ ����� ���� ���������� � �������������� ��������
 All := -1;
 FMain.BBRes.Visible :=true;
  FMain.BBTest.Visible :=false;
 // ����� �� ������������
 Close;
end;

procedure TFTest.FormCreate(Sender: TObject);
begin
 // ��������� ���� ������ ��� ���� ������������
 with DM do
 begin
 I:=1;
  // ��������������� ���� � ���� ������ ��� ����� �������������� ����, �������� ����, ����� ������������
  // �������
  ADOQQuest.Active := False;
  ADOQQuest.ConnectionString := SDB;
  ADOQQuest.Active := True;
  // ������
  ADOQAnsw.Active := False;
  ADOQAnsw.ConnectionString := SDB;
  ADOQAnsw.Active := True;
  // �������� ������������
  ADOQProt.Active := False;
  ADOQProt.ConnectionString := SDB;
  ADOQProt.Active := True;
  // ���������� ������������
  ADOQRes.Active := False;
  ADOQRes.ConnectionString := SDB;
  ADOQRes.Active := True;
  // ��������� �����������
  ADOQParamRes.Active := False;
  ADOQParamRes.ConnectionString := SDB;
  ADOQParamRes.Active := True;
 end;
 // ��������� ���� ������
 //FTest.HelpFile := SH;
   LOk.Caption := '*********************************************************';

  SetBounds( Left - ClientOrigin.X, Top - ClientOrigin.Y, GetDeviceCaps(
 Canvas.handle, HORZRES ) + (Width - ClientWidth), GetDeviceCaps( Canvas.handle,VERTRES )
 + (Height - ClientHeight ));

BBExit.Left := (ClientWidth div 2)-(BBExit.Width div 2);
LOk.Left := (ClientWidth div 2)-(LOk.Left div 4)-(LOk.Left div 2);
RGYesNo.Left:= (ClientWidth div 2)-(RGYesNo.Left div 2);
LAnsw.Left :=(ClientWidth div 2)-(LAnsw.Left div 2);
Label1.Left := (ClientWidth div 2)-(Label1.Width div 2);
Label2.Left := (ClientWidth div 2)-(Label2.Width div 2);
end;

procedure TFTest.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #27 then
begin
 All := -1;
 FMain.BBRes.Visible :=true;
  FMain.BBTest.Visible :=false;
Close;
end;

If Key = '1' then
begin
RGYesNO.ItemIndex :=0;
end;

If Key = '2' then
begin
RGYesNO.ItemIndex :=1;
end;

If Key = '0' then
begin
BBExit.Click;
end;
end;

procedure TFTest.RGYesNoClick(Sender: TObject);
  var
 S : String;      // ��������������� ����������
 TAnswN : TDateTime;  // ���������� ��� ������ �������, ������������ �� �����
 Time  : TDateTime;  // ���������� ��� ������ �������, ������������ �� �����
 Code_Param: Integer; // �������� ����������
begin
 // ���� ����� �� ������ ����� �� ���������
 If RGYesNo.ItemIndex = -1 then Exit;
 // ������� � ���������� �������
 If I < 57 then
 begin
  // ������� ��������� �����
  If RGYesNo.ItemIndex = 0 then
  begin
    LAnsw.Caption := '��';

    end
  else
  begin
    LAnsw.Caption := '���';

    end;
  // ���������� ��������� �����
  LAnsw.Visible := True;
  // �������� ����� ����������� ���������� ������
  TPausa.Enabled := True;
  // ����������� ������ ������
  with DM do
  begin
  with ADOQAnsw do
  begin
   // �������� "������" ������
   SQL.Clear;
   // ������� ����� ���������� ������
   SQL.Add('SELECT * FROM ANSWER WHERE ANSWER = '+QuotedStr(LAnsw.Caption));
   // ������������ ������
   Active := TRUE;
   // ��������� ����� ������
   Num_Answer := FieldByName('Num_Answer').AsInteger;
  end;
  end;
  // ������� ��������� ������
      // �� ������ �������� ��������� ���������� ���������� �������� �� 1 (������ ���� *)
  S := LOk.Caption;
  S[I] := ' ';
  LOk.Caption := S;
  // ���������� ����� ������
  // �������� ������� �����
  TAnswN := Now;
  // ������� ����� ������ ������
  Time := TAnswN - TAnsw;
  // �������� ����� ������ ������ �� ��������� ������
  TAnsw := TAnswN;
  // ���� ���� ������� �� ������� �������� ��������� ������ � ��������
  if ParamCount > 0 then
   //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // �������� � �������� ������, ����� � �����, ����������� �� �����
  with DM do
  begin
  with ADOQProt do
  begin
   with SQL do
   begin
    // �������� ������ ������
    Clear;
    // �������� � �������� ������ ������������, �������, ��������� ������, �����, ������������ �� �����

   //Label2.Caption := IntToStr(I);
    Add('INSERT INTO Protocol (ID_Testing, Num_Question, Num_Answer, TimeAnswer)VALUES('+IntToStr(ID_Testing)+' ,'+IntToStr(I)+', '+IntToStr(Num_Answer)+','+QuotedStr(TimeToStr(Time))+')');
    // ��������� ������
    ExecSQL;
   end;
  end;
  end;
  // ��������� ������� �������� �� 1
  Inc(I);
 end
 else
 begin
  // ����� �� ������������
  // ������ � ���� ������ ����������
  // ���� ���� ������� �� ������� �������� ��������� ������ � ��������
  Randomize;
  B:=Random(23)+1;
  V:=Random(23)+1;
  if ParamCount > 0 then
  with DM do
  begin
   // �������� "������" ������
   ADOQParamRes.SQL.Clear;
   // ����� ����� ���������������� ��������� �����������
   ADOQParamRes.SQL.Add('SELECT * FROM ParamResult WHERE Parametr = '+QuotedStr('���������� �'));
   // ������������ ������
   ADOQParamRes.Active := True;
   // ������� ��� ���������
   Code_Param := ADOQParamRes.FieldByName('ID_ParamResult').AsInteger;
   // �������� "������" ������
   ADOQRes.SQL.Clear;
   // �������� � ���������� ������������ ������ ������������, ��������� ����������, �������� ����������
   ADOQRes.SQL.Add('INSERT INTO Result (ID_Testing, ID_ParamResult, Value_Result)VALUES('+IntToStr(ID_Testing)+' ,'+IntToStr(Code_Param)+', '+IntToStr(B)+')');
   // ��������� ������
   ADOQRes.ExecSQL;
  end;
    if ParamCount > 0 then
  with DM do
  begin
   // �������� "������" ������
   ADOQParamRes.SQL.Clear;
   // ����� ����� ���������������� ��������� �����������
   ADOQParamRes.SQL.Add('SELECT * FROM ParamResult WHERE Parametr = '+QuotedStr('���������� �'));
   // ������������ ������
   ADOQParamRes.Active := True;
   // ������� ��� ���������
   Code_Param := ADOQParamRes.FieldByName('ID_ParamResult').AsInteger;
   // �������� "������" ������
   ADOQRes.SQL.Clear;
   // �������� � ���������� ������������ ������ ������������, ��������� ����������, �������� ����������
   ADOQRes.SQL.Add('INSERT INTO Result (ID_Testing, ID_ParamResult, Value_Result)VALUES('+IntToStr(ID_Testing)+' ,'+IntToStr(Code_Param)+', '+IntToStr(V)+')');
   // ��������� ������
   ADOQRes.ExecSQL;
  end;

  // ���������� ������ ���������, ������ ������ ����
  FMain.BBTest.Visible := false;
  FMain.BBRes.Visible := true;

  Close;
 end;

 // ���������� �������� ������ ���������� �����
 BBExit.SetFocus;
end;



procedure TFTest.Timer1Timer(Sender: TObject);
begin
t:=t-1;
label2.Caption := '������� ��������: '+inttostr(t);
if t = 0 then
begin
Timer1.Enabled :=false;
BBExit.Click;
end;
end;

procedure TFTest.TPausaTimer(Sender: TObject);
begin
 // ������ ����������� ���������� ������
 LAnsw.Visible := False;
 // ���������� ������ ������
 TPausa.Enabled := False;
 // ����������� ��������� ������}
  // ������� ��������� ������ � ������� ����� �����������
  // ��������������� ������ ���� ������ �������
  LNo.Left := 20;
  if I > 10 then
   LNo.Width := 200;
  // ���� ����� ������� ������ 10 �������� ����� 0
  if I <= 9 then
    LNo.Caption := '0'+IntToStr(I) + '. '
  else
    LNo.Caption := IntToStr(I) + '.';
  // ������ ��������� ������ �� ���� ������
  with DM do
  begin
  with ADOQQuest do
  begin
   // �������� "������" ������
   SQL.Clear;
   // ������� ����� ������� �� ��� ������
   SQL.Add('SELECT * FROM Question WHERE (ID_Test='+IntToStr(ID_Test)+') AND (Num_Question ='+IntToStr(I)+')');
   // ������������ ������
   Active := TRUE;
   // ������� ����� �������
   LQuest.Caption := FieldByName('Question').AsString;
  end;
  end;
  // ��������� �������� ������ �� ��������� ������ �� ���� - ������� ������� ����������
  // ����� ��������� ����� - ���������� �������� �� "����� �� ������"
 RGYesNo.ItemIndex := -1; // �� ��������� ����� �� ��������

end;

end.
