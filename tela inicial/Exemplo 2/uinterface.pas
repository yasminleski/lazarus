unit uinterface;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, Graphics, ActnList;

type
  iMenu = interface
  ['{06C9F521-062B-4DC0-9F03-EB6B680304FB}']
  procedure CriarMenu();

  end;

  iButtonMenu = interface
  ['{C9472809-3704-4F5B-8ACD-ED89772B2C8E}']
  function Align(Value: TAlign): iButtonMenu;
  function Caption(Value: String): iButtonMenu;
  function Color(Value: TColor): iButtonMenu;
  function Height(Value: Integer): iButtonMenu;
  function Name(Value: String): iButtonMenu;
  function OnClick(Value: TNotifyEvent): iButtonMenu;
  function Button: TObject;
  end;

implementation

end.

