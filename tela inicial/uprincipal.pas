unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { Tfrmprl }

  Tfrmprl = class(TForm)
    Image1: TImage;
    mnuREL: TPanel;
    mnuVEN: TPanel;
    Panel1: TPanel;
    mnuCAD: TPanel;
    Panel19: TPanel;
    pnlREL: TPanel;
    pnlVEN: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pnl: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnl2: TPanel;
    pnlCAD: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure mnuRELClick(Sender: TObject);
    procedure pnlRELClick(Sender: TObject);
    procedure pnlVENClick(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure pnlClick(Sender: TObject);
    procedure pnlCADClick(Sender: TObject);
  private
     function selecionamnu(nMENU:integer):boolean;
  public

  end;

var
  frmprl: Tfrmprl;

implementation

{$R *.lfm}

{ Tfrmprl }

procedure Tfrmprl.FormCreate(Sender: TObject);
begin
  selecionamnu(0);
end;

procedure Tfrmprl.Image1Click(Sender: TObject);
begin

end;

procedure Tfrmprl.mnuRELClick(Sender: TObject);
begin

end;

procedure Tfrmprl.pnlRELClick(Sender: TObject);
begin
  selecionamnu(3);
end;

procedure Tfrmprl.pnlVENClick(Sender: TObject);
begin
  selecionamnu(2);
end;

procedure Tfrmprl.Panel6Click(Sender: TObject);
begin

end;

procedure Tfrmprl.Panel8Click(Sender: TObject);
begin

end;

procedure Tfrmprl.pnlClick(Sender: TObject);
begin

end;

procedure Tfrmprl.pnlCADClick(Sender: TObject);
begin
  selecionamnu(1);
end;

function Tfrmprl.selecionamnu(nMENU: integer): boolean;
begin
     case nMENU of
          0: begin
            mnuCAD.Visible:= false;
            mnuVEN.Visible:= false;
            mnuREL.Visible:= false;
          end;
          1: begin
            mnuCAD.Visible:= true;
            mnuVEN.Visible:= false;
            mnuREL.Visible:= false;
          end;
          2: begin
            mnuCAD.Visible:= false;
            mnuVEN.Visible:= true;
            mnuREL.Visible:= false;
          end;
          3: begin
            mnuCAD.Visible:= false;
            mnuVEN.Visible:= false;
            mnuREL.Visible:= true;
          end;
     end;
end;

end.

