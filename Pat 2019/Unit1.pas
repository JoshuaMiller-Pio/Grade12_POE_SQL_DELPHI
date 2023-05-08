unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
unit2;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;
form1.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form1.Close;
end;

end.
