unit uButtonMenu;

{$mode objfpc}{$H+}

interface
  uses
  Classes, SysUtils, ExtCtrls, StdCtrls, Graphics, Controls, uinterface;
type

    { TButtonMenu }

    TButtonMenu = class(TInterfacedObject, iButtonMenu)
       private
         FPanel: TPanel;
         FLabel: TLabel;
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iButtonMenu;

         function Align(Value: TAlign): iButtonMenu;
         function Caption(Value: String): iButtonMenu;
         function Color(Value: TColor): iButtonMenu;
         function Height(Value: Integer): iButtonMenu;
         function Name(Value: String): iButtonMenu;
         function OnClick(Value: TNotifyEvent): iButtonMenu;
         function Button: TObject;
    end;

implementation

{ TButtonMenu }

constructor TButtonMenu.Create;
begin
    FPanel := TPanel.Create(nil);
    FPanel.Align := alTop;
    FPanel.BevelOuter := bvNone;
    FPanel.Name := 'btnDefault1';
    FPanel.Caption := '';
    FPanel.Color := clDefault;
    FPanel.Height := 50;

    FLabel := TLabel.Create(nil);
    FLabel.Parent := FPanel;
    FLabel.Align := alClient;
    FLabel.BorderSpacing.Left := 5;
    FLabel.Caption :=FPanel.Name;
    FLabel.Layout :=tlCenter;

end;

destructor TButtonMenu.Destroy;
begin
  inherited Destroy;
end;

class function TButtonMenu.New: iButtonMenu;
begin
    Result := Self.Create;
end;

function TButtonMenu.Align(Value: TAlign): iButtonMenu;
begin
    Result := Self;
    FPanel.Align := Value;
end;

function TButtonMenu.Caption(Value: String): iButtonMenu;
begin
     Result := Self;
     FLabel.Caption := Value;

end;

function TButtonMenu.Color(Value: TColor): iButtonMenu;
begin
      Result := Self;
      FPanel.Color := Value;
end;

function TButtonMenu.Height(Value: Integer): iButtonMenu;
begin
       Result := Self;
       FPanel.Height := Value;
end;

function TButtonMenu.Name(Value: String): iButtonMenu;
begin
      Result := Self;
      FPanel.Name := Value;
end;

function TButtonMenu.OnClick(Value: TNotifyEvent): iButtonMenu;
begin
      Result := Self;
      FPanel.OnClick:= Value;
      FLabel.OnClick:= Value;
end;

function TButtonMenu.Button: TObject;
begin
      Result := FPanel;
end;

end.

