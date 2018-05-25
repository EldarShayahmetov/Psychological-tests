unit DataOb;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, frxClass, frxDBSet;

type
  TDM1 = class(TDataModule)
    ADOCPDT: TADOConnection;
    ADOQTesting: TADOQuery;
    ADOQRespondent: TADOQuery;
    ADOQTest: TADOQuery;
    ADOQResult: TADOQuery;
    ADOQParamResult: TADOQuery;
    ADOQQuestion: TADOQuery;
    ADOQAnswer: TADOQuery;
    ADOQProtocol: TADOQuery;
    ADOQPassword: TADOQuery;
    ADOQProtocolID_Protocol: TAutoIncField;
    ADOQProtocolID_Testing: TIntegerField;
    ADOQProtocolNum_Question: TIntegerField;
    ADOQProtocolNum_Answer: TIntegerField;
    ADOQProtocolTimeAnswer: TDateTimeField;
    ADOQProtocolQuestion: TStringField;
    ADOQProtocolAnswer: TStringField;
    ADOQTesting2: TADOQuery;
    DSRespondent: TDataSource;
    DSTesting: TDataSource;
    DSResult: TDataSource;
    DSProtocol: TDataSource;
    ADOQResultID_Result: TAutoIncField;
    ADOQResultID_Testing: TIntegerField;
    ADOQResultID_ParamResult: TIntegerField;
    ADOQResultValue_Result: TWideStringField;
    ADOQResultName_ParamResult: TStringField;
    frxReport1: TfrxReport;
    frxDBDatasetR: TfrxDBDataset;
    frxDBDatasetP: TfrxDBDataset;
    ADOQTemp: TADOQuery;
    procedure ADOQProtocolCalcFields(DataSet: TDataSet);
    procedure ADOQRspondentAfterScroll(DataSet: TDataSet);
    procedure ADOQTestingAfterScroll(DataSet: TDataSet);
    procedure ADOQResultCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses main;

{$R *.dfm}

procedure TDM1.ADOQProtocolCalcFields(DataSet: TDataSet);
// �������� �������� ��������� ����� ���� ������ ���������: ����� ������� �

// ����� ������ �� �������������� �������

var

ID_Test, ID_Testing, Num_Answer, Num_Question : String;

SQ, SA : String;

begin

with DM1 do

begin

// �������� ����� ������������

ID_Testing := ADOQProtocol.FieldByName('ID_Testing').AsString;  // ���������������

// ����������� ������

with ADOQTesting2 do

begin

// ���� ������ ��� ��������, ������� ��� ����������

active := false;

// ��������������� ������ ������������

with SQL do

begin

// �������� "������" ������

Clear;

// �������� ����� ����� �� ������ ������������

Add('SELECT * FROM Testing WHERE ID_Testing = '+ID_Testing);

end;

// ������� ������ ��������

Active := True;

// ������� ����� �����

ID_Test := FieldByName('ID_Test').AsString;

end;

// ������� ����� ������� ���������

Num_Question := ADOQProtocol.FieldByName('Num_Question').AsString;

with ADOQQuestion do

begin

// ������� ������ ������� ��� ���������� ����� � ������ �������

with SQL do

begin

// �������� ������

Clear;

// ������� ����� ������� �� ������� ����� � �������

Add('SELECT * FROM Question WHERE (ID_Test = '+ID_Test+')AND(Num_Question = '+Num_Question+')');

end;

// ������������ ������

Active := True;

// ������� ����� �������

SQ := FieldByName('Question').AsString;

end;

// �������� � ������� ���� ����� ������ ���� ������� ������� ��� �� ������ ����

if ID_Test = '1' then Num_Question := '1';
if ID_Test = '2' then Num_Question := '1';

// ������� ����� ������ ���������

Num_Answer := ADOQProtocol.FieldByName('Num_Answer').AsString;

// ��������������� ������ ��� ���������� �����, ������� � ������

with ADOQAnswer do

begin

// �������� ������

with SQL do

begin

// �������� ������ ������

Clear;

// ������� ����� ������ �� ������� �����, ������� � ������

Add('SELECT * FROM Answer WHERE (ID_Test = '+ID_Test+')AND(Num_Question = '+Num_Question+')AND(Num_Answer = '+Num_Answer+')');

end;

// ������������ ������

Active := True;

// ������� ����� ������

SA := FieldByName('Answer').AsString;

end;

// ��������� ����� ������� ��������� ������ ������� � ������

ADOQProtocol.FieldByName('Question').AsString := SQ;

ADOQProtocol.FieldByName('Answer').AsString := SA;

end;

end;

procedure TDM1.ADOQResultCalcFields(DataSet: TDataSet);
var

ID_Test, ID_Testing, Num_Answer, Num_Question : String;

SQ, SA : String;

begin

with DM1 do

begin

// �������� ����� ������������

ID_Testing := ADOQResult.FieldByName('ID_Testing').AsString;  // ���������������

// ����������� ������

with ADOQTesting2 do

begin

// ���� ������ ��� ��������, ������� ��� ����������

active := false;

// ��������������� ������ ������������

with SQL do

begin

// �������� "������" ������

Clear;

// �������� ����� ����� �� ������ ������������

Add('SELECT * FROM Testing WHERE ID_Testing = '+ID_Testing);

end;

// ������� ������ ��������

Active := True;

// ������� ����� �����

ID_Test := FieldByName('ID_Test').AsString;

end;

// ������� ����� ������� ���������

Num_Question := ADOQResult.FieldByName('ID_ParamResult').AsString;

with ADOQParamResult do

begin

// ������� ������ ������� ��� ���������� ����� � ������ �������

with SQL do

begin

// �������� ������

Clear;

// ������� ����� ������� �� ������� ����� � �������

Add('SELECT * FROM ParamResult WHERE (ID_Test = '+ID_Test+')AND(ID_ParamResult = '+Num_Question+')');

end;

// ������������ ������

Active := True;

// ������� ����� �������

SQ := FieldByName('Parametr').AsString;

end;

// ��������� ����� ������� ��������� ������ ������� � ������

ADOQResult.FieldByName('Name_ParamResult').AsString := SQ;

end;
end;

procedure TDM1.ADOQRspondentAfterScroll(DataSet: TDataSet);
begin
if ADOQRespondent.RecordCount>0 then

begin

ADOQTesting.Filtered:=False;

ADOQTesting.Filter:='ID_Respondent='+

ADOQRespondent.FieldByName('ID_Respondent').AsString;

ADOQTesting.Filtered:=True;
end;
end;

procedure TDM1.ADOQTestingAfterScroll(DataSet: TDataSet);
begin

with FMain do

begin

// ��� ������ ������ ������������ ������� ���� ����������� � ��������� �� ��������

DBGProtocol.Visible := False;

DBGResult.Visible := False;

end;

end;



end.
