unit Data;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TDM = class(TDataModule)
    ADOQTest: TADOQuery;
    ADOQTesting: TADOQuery;
    ADOQQuest: TADOQuery;
    ADOQAnsw: TADOQuery;
    ADOQProt: TADOQuery;
    ADOQRes: TADOQuery;
    ADOQParamRes: TADOQuery;
    ADOQTemp: TADOQuery;
    TPausa: TTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses main;

{$R *.dfm}

end.
