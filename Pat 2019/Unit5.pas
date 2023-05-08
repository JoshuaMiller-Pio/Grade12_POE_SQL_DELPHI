unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids,unit2, StdCtrls, Mask, DBCtrls, DB, ADODB,Connection_u,
  ExtCtrls, jpeg;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
  db :integer;
  end;

var
  Form5: TForm5;

implementation
uses
unit1;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if (MessageDlg('Are you sure you want to leave?',mtWarning,[mbYes,mbcancel],0)
  = mrYES)then
 begin
   showmessage('Arrivederci/GoodBye') ;
   form1.close;
 end;

end;

procedure TForm5.Button2Click(Sender: TObject);
var
AdminNo , gameNo : string;
begin
gameNo := Edit1.Text;
AdminNo := Edit1.Text;
if DBGrid1.Visible = true then
begin
  showmessage('profile deleted');
Connection_u.DataModule7.ADOTable1.Locate  ('ID',AdminNo,[]);
Connection_u.DataModule7.ADOTable1.delete
  end
  else
  begin
 showmessage('game deleted');
Connection_u.DataModule7.ADOTable2.Locate  ('GameID',gameNo,[]);
Connection_u.DataModule7.ADOTable2.delete
  end;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
if db = 1 then
begin
DBGrid1.Show;
 Dbgrid2.hide;
 Edit1.Text := 'Edit Profile Data';
db := 0
end
else
 if db = 0  then
 begin
 DBGrid2.Show;
 Dbgrid1.hide;
  Edit1.Text := 'Edit Games Data' ;
db := 1
end;

end;

procedure TForm5.Button4Click(Sender: TObject);
var
Sort : string;
begin
Sort := Edit1.Text;
if DBGrid1.Visible = true then
begin
if Sort = 'Name' then DataModule7.ADOTable1.Sort := 'Name ASC' ;
if Sort = 'ID' then DataModule7.ADOTable1.Sort := 'ID ASC' ;
if Sort = 'Age' then DataModule7.ADOTable1.Sort := 'Age ASC' ;
  end
  else
  begin
if Sort = 'Game' then DataModule7.ADOTable2.Sort := 'Game ASC' ;
if Sort = 'ID' then DataModule7.ADOTable2.Sort := 'GameID ASC' ;
if Sort = 'Location' then DataModule7.ADOTable2.Sort := 'Location Of tournament ASC' ;
end;
end;

procedure TForm5.Button5Click(Sender: TObject);
var
AdminNo , gameNo : string;
begin
gameNo := Edit1.Text;
AdminNo := Edit1.Text;
if DBGrid1.Visible = true then
begin
Connection_u.DataModule7.ADOTable1.Locate  ('ID',AdminNo,[]);
Showmessage('Here is your record')
  end
  else
  begin
Connection_u.DataModule7.ADOTable2.Locate  ('GameID',gameNo,[]);
Showmessage('Here is your record')
end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
showmessage('welcome Back!');
db := 0;
end;

end.

