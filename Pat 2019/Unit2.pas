unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls,connection_u;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
unit5,unit4,Unit1,unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
name :string;
phonenumber: String;
begin
name := Edit1.Text;
phonenumber := Edit2.Text;
 if  (connection_u.DataModule7.ADOTable1.Locate('phone number',phonenumber,[])) AND (connection_u.DataModule7.ADOTable1.Locate('Name',name,[]))then
  begin
  form5.Show;
  form2.Close
  end
 else
 showmessage('wrong');

end;


procedure TForm2.Button2Click(Sender: TObject);
begin
form1.show;
form2.close;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form2.close;
form3.show
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form4.show;
form2.close;
end;


end.
