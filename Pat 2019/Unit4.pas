unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls,DB, ADODB,DBCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);

  private

  public
   Gender : string;
  end;

var
  Form4: TForm4;

implementation
  uses
  unit1,unit5,Connection_u;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
name,phone,sname,email :string;
vage,vname,vphone,vsname :boolean;
age : integer;
profile : textfile;
text:string;

begin
name := Edit1.text;
sname := edit2.text;
phone := edit3.text;
age := strtoint(edit4.text);

//name validation
if Length(name) Or length(sname) <= 1  then
begin
Edit1.Color := clred;
edit2.Color := clred;
vname := false
end
else
begin
vname := true
end;

//age validation
   if (age < 90) and (age >= 15) then
   begin

   showmessage('age valid');
   edit4.color := clwhite;
   vage := true
    end
     else
    begin
    vage := false;
   edit4.Color := clred;
   end;

//phone number validation
 if (length(phone) = 10) and (phone[1] <> '0') And (phone[2] = '2') AND(phone[2] = '8') or (phone[2] = '7') or (phone[2] = '6') then
 begin
  showmessage('You have valid credentials');
  vphone := true
 end
  else
 begin
 vphone:= false;
  Edit3.Color := clRed;
 end;

 //Writing to text file
 if (vage = True) and (vname = True) and (vphone = True) and (vsname = True) then
 begin
  showmessage('Please correct all invalid credentials');
 end
 else
 begin
    AssignFile(Profile, 'Profiles.txt');
   Append(Profile);
   WriteLn(Profile,name +'#'+ sname +'#' + phone);
   CloseFile(Profile);
   Reset(Profile);
      ReadLn(Profile, text);
     Showmessage('Thank you for creating an account!');
CloseFile(Profile);
end;

// Insert record
 if (vage = false) and (vname = false) and (vphone = false) and (vsname = false) then
 begin
  showmessage('Please correct all invalid credentials');
end
else
begin
    Connection_u.DataModule7.ADOTable1.Append;
    Connection_u.DataModule7.ADOTable1['Name'] := name;
    Connection_u.DataModule7.ADOTable1['Surname'] := sname;
    Connection_u.DataModule7.ADOTable1['Phone number'] := phone;
    Connection_u.DataModule7.ADOTable1['Age'] := age;
    Connection_u.DataModule7.ADOTable1['Gender'] := gender;
    Connection_u.DataModule7.ADOTable1.Post;
end;


end;
procedure TForm4.Button2Click(Sender: TObject);
begin
form4.close;
form1.show
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
Edit1.Color := clwhite;
Edit2.Color := clwhite;
Edit3.Color := clwhite;
edit4.color := clwhite;
end;


procedure TForm4.RadioGroup1Click(Sender: TObject);
begin
    case RadioGroup1.ItemIndex of
  0: gender := 'M';
  1: gender := 'F';
end;

end;

end.
