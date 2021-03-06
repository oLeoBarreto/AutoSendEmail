unit uLybrary;

interface
  uses IniFiles, Vcl.Forms, System.SysUtils, FireDAC.Comp.Client,
  System.Classes, frxClass, Winapi.Windows;

  //Functions
  procedure SetValueIni(pLocal, pSession, pSubSession: string; pValue: string);
  function GetValueIni( pLocal, pSession, pSubSession: string): string;

implementation

procedure SetValueIni(pLocal, pSession, pSubSession: string; pValue: string);
var
vArchive: TIniFile;
begin
  vArchive:= TIniFile.Create(pLocal);

  vArchive.WriteString(pSession, pSubSession, pValue);

  vArchive.Free;
end;

function GetValueIni( pLocal, pSession, pSubSession: string): string;
var
vArchive: TIniFile;
begin
  vArchive:= TIniFile.Create(pLocal);

  Result := vArchive.ReadString(pSession, pSubSession, '');

  vArchive.Free;
end;

end.
