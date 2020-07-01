unit uprincip;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    pnlButton2: TPanel;
    pnlButton1: TPanel;
    pnlMenu: TPanel;
    pnlTitulo: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure pnlButton1Click(Sender: TObject);
    procedure pnlButton2Click(Sender: TObject);
    procedure MenuOnMouseEnter(Sender: TObject);
    procedure MenuOnMouseLeave(Sender: TObject);
    procedure EventSelectMenu(Index: Integer; Cor: TColor);
    procedure pnlButton2MouseLeave(Sender: TObject);
    procedure pnlMenuClick(Sender: TObject);
    procedure pnlMenuDblClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.MenuOnMouseEnter(Sender: TObject);
begin
  if (Sender is TImage) then
     EventSelectMenu((Sender as TImage). tag, $00CED5A2 )
  else
  if (Sender is TLabel) then
     EventSelectMenu((Sender as TLabel). tag, $00CED5A2 )
  else
  if (Sender is TPanel) then
      EventSelectMenu((Sender as TPanel). tag, $00CED5A2 );
end;

procedure TForm1.MenuOnMouseLeave(Sender: TObject);
begin
    if (Sender is TImage) then
     EventSelectMenu((Sender as TImage). tag, $00E2E6C8 )
  else
  if (Sender is TLabel) then
     EventSelectMenu((Sender as TLabel). tag, $00E2E6C8 )
  else
  if (Sender is TPanel) then
      EventSelectMenu((Sender as TPanel). tag, $00E2E6C8 );
end;

procedure TForm1.EventSelectMenu(Index: Integer; Cor: TColor);
begin
    case Index of
       01: pnlButton1.Color := Cor ;
       02: pnlButton2.Color := Cor;

    end;
end;

procedure TForm1.pnlButton2MouseLeave(Sender: TObject);
begin

end;

procedure TForm1.pnlMenuClick(Sender: TObject);
begin

end;

procedure TForm1.pnlMenuDblClick(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.pnlButton1Click(Sender: TObject);
begin

end;

procedure TForm1.pnlButton2Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Image3Click(Sender: TObject);
begin

end;

end.

