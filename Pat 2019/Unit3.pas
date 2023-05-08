unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    RichEdit1: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);

  private
    { Private declarations }
  public
 selection : string;
  end;

var
  Form3: TForm3;

implementation
uses
unit1,unit2;


{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
form3.close;
form2.Show
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
ShowMessage('support has been contacted please wait');
end;


procedure TForm3.ComboBox1Change(Sender: TObject);

begin
    case ComboBox1.ItemIndex of
  0:  selection := 'Please use only letters in your username no numbers will be valid';
  1: selection := 'Please make sure your Name and phone number are correct else contact support to reset your password';
  2:  selection := 'Please contact support as soon as possible or notify the nearest admins' ;

  end;
end;

procedure TForm3.ComboBox1Select(Sender: TObject);
begin
RichEdit1.Lines.Clear;
RichEdit1.lines.Add(selection);
end;

end.
