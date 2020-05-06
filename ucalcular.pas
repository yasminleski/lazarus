unit Ucalcular;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    adicao: TButton;
    Label4: TLabel;
    subtracao: TButton;
    divisao: TButton;
    multiplicacao: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure adicaoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure multiplicacaoClick(Sender: TObject);
    procedure divisaoClick(Sender: TObject);
    procedure subtracaoClick(Sender: TObject);
  private
       n1, n2, resposta:integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.adicaoClick(Sender: TObject);
begin
    n1 := StrToInt(Edit1.text);
    n2 := StrToInt(Edit2.text);
    resposta := n1+n2;
    Edit3.text :=IntToStr(resposta);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.multiplicacaoClick(Sender: TObject);
begin
    n1 := StrToInt(Edit1.text);
    n2 := StrToInt(Edit2.text);
    resposta := n1*n2;
    Edit3.text :=IntToStr(resposta);
end;

procedure TForm1.divisaoClick(Sender: TObject);
var  n, m, calcular:real;
begin
    n := StrToFloat(Edit1.text);
    m := StrToFloat(Edit2.text);
    calcular := n/m;
    Edit3.text := FloatToStr(calcular);
end;

procedure TForm1.subtracaoClick(Sender: TObject);
begin
    n1 := StrToInt(Edit1.text);
    n2 := StrToInt(Edit2.text);
    resposta := n1-n2;
    Edit3.text :=IntToStr(resposta);
end;

end.

