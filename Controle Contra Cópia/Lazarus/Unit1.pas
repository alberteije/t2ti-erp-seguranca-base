unit Unit1;

{$MODE Delphi}

interface

uses
  Windows, LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, FileUtil, Registry, IniFiles, md5;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    EditChave: TLabeledEdit;
    EditValor: TLabeledEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Button6: TButton;
    EditChaveHD: TLabeledEdit;
    EditContraChaveHD: TLabeledEdit;
    Button7: TButton;
    GroupBox4: TGroupBox;
    Button8: TButton;
    EditChaveMAC: TLabeledEdit;
    EditContraChaveMAC: TLabeledEdit;
    Button9: TButton;
    GroupBox5: TGroupBox;
    Button10: TButton;
    EditChaveSerial: TLabeledEdit;
    EditContraChaveSerial: TLabeledEdit;
    Button11: TButton;
    GroupBox6: TGroupBox;
    Button12: TButton;
    EditContraChaveConjunto: TLabeledEdit;
    procedure GravarChave;
    procedure CarregarChave;
    function SerialNum(FDrive: String): String;
    function MacAddress: string;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

uses Biblioteca;

{$REGION '01 - Verificar Arquivo'}
procedure TForm1.Button1Click(Sender: TObject);
begin
  if not FileExistsUTF8('C:\meuarquivo.dll') { *Converted from FileExists* } then
  begin
    ShowMessage('Cópia Ilegal - Diga Não a Pirataria!' + #13#13 + 'Aplicação será encerrada.');
    Application.Terminate;
  end;
end;
{$ENDREGION '01 - Verificar Arquivo'}

{$REGION '02 - Manipular Regisro do Windows'}
procedure TForm1.Button2Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;

  if Registro.OpenKey(EditChave.Text, True) then
  begin
    Registro.WriteString('Verifica', EditValor.Text);
  end;

  Registro.CloseKey;
  Registro.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;

  if Registro.OpenKey(EditChave.Text, True) then
  begin
    EditValor.Text := Registro.ReadString('Verifica');
  end;

  Registro.CloseKey;
  Registro.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;

  if Registro.KeyExists(EditChave.Text) then
  begin
    if Registro.DeleteKey(EditChave.Text) then
    begin
      ShowMessage('Chave removida com sucesso.');
    end
    else
    begin
      ShowMessage('Problemas ao remover a chave.');
    end;
  end;

  Registro.CloseKey;
  Registro.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;

  if Registro.KeyExists(EditChave.Text) then
    ShowMessage('Chave existente.')
  else
  begin
    ShowMessage('Cópia Ilegal - Diga Não a Pirataria!' + #13#13 + 'Aplicação será encerrada.');
    Application.Terminate;
  end;

  Registro.CloseKey;
  Registro.Free;
end;
{$ENDREGION '02 - Manipular Regisro do Windows'}

{$REGION '03 - Número do HD'}
function TForm1.SerialNum(FDrive: String): String;
var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  except
    Result := '';
  end;
end;

procedure TForm1.GravarChave;
var
  ini: TIniFile;
begin
  ForceDirectoriesUTF8('C:\T2Ti\Chaves');
  try
    Ini := TIniFile.Create('C:\T2Ti\Chaves\' + EditChaveHD.Text + '.ini');
    with Ini do
    begin
      if not SectionExists('CHAVE') then
      begin
        WriteString('CHAVE', 'CONTRA', EditContraChaveHD.Text);
      end;
    end;
  finally
    Ini.Free;
  end;
end;

procedure TForm1.CarregarChave;
var
  ini: TIniFile;
begin
  ForceDirectoriesUTF8('C:\T2Ti\Chaves');
  if FileExistsUTF8('C:\T2Ti\Chaves\' + EditChaveHD.Text + '.ini') then
  begin
    try
      ini := TIniFile.Create('C:\T2Ti\Chaves\' + EditChaveHD.Text + '.ini');
      EditContraChaveHD.Text := ini.ReadString('CHAVE', 'CONTRA', '');
    finally
      ini.Free;
    end;
  end
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  EditChaveHD.Text := MD5Print(MD5String(SerialNum('c')));
  CarregarChave;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  EditContraChaveHD.Text := MD5Print(MD5String(EditChaveHD.Text + 'HD'));
  GravarChave;
end;
{$ENDREGION '03 - Número do HD'}

{$REGION '04 - Número MAC'}
function TForm1.MacAddress: String;
var
  Lib: Cardinal;
  Func: function(GUID: PGUID): Longint; stdcall;
  GUID1, GUID2: TGUID;
begin
  Result := '';
  Lib := LoadLibrary('rpcrt4.dll');
  if Lib <> 0 then
  begin
    @Func := GetProcAddress(Lib, 'UuidCreateSequential');
    if Assigned(Func) then
    begin
      if (Func(@GUID1) = 0) and (Func(@GUID2) = 0) and (GUID1.D4[2] = GUID2.D4[2]) and (GUID1.D4[3] = GUID2.D4[3]) and (GUID1.D4[4] = GUID2.D4[4]) and (GUID1.D4[5] = GUID2.D4[5]) and (GUID1.D4[6] = GUID2.D4[6]) and (GUID1.D4[7] = GUID2.D4[7]) then
      begin
        Result := IntToHex(GUID1.D4[2], 2) + '-' + IntToHex(GUID1.D4[3], 2) + '-' + IntToHex(GUID1.D4[4], 2) + '-' + IntToHex(GUID1.D4[5], 2) + '-' + IntToHex(GUID1.D4[6], 2) + '-' + IntToHex(GUID1.D4[7], 2);
      end;
    end;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  EditChaveMAC.Text := MacAddress;
end;
procedure TForm1.Button9Click(Sender: TObject);
begin
  EditContraChaveMAC.Text := MD5Print(MD5String(EditChaveMAC.Text + 'MAC'));
end;
{$EndREGION '04 - Número MAC'}

{$REGION '05 - Serial Windows'}
procedure TForm1.Button10Click(Sender: TObject);
var
  Registro: TRegistry;
const KEY_WOW64_64KEY = $0100 ;
begin
  Registro := TRegistry.Create(KEY_WRITE OR KEY_WOW64_64KEY);
  Registro.RootKey := HKEY_LOCAL_MACHINE;

  if Registro.OpenKey('SOFTWARE\Microsoft\Windows NT\CurrentVersion\', True) then
  begin
    EditChaveSerial.Text := Registro.ReadString('ProductId');
  end;

  Registro.CloseKey;
  Registro.Free;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  EditContraChaveSerial.Text := MD5Print(MD5String(EditChaveSerial.Text + 'WINDOWS'));
end;
{$EndREGION '05 - Serial Windows'}

{$REGION '06 - Conjunto'}
procedure TForm1.Button12Click(Sender: TObject);
begin
  EditContraChaveConjunto.Text := MD5Print(MD5String(EditChaveSerial.Text + EditChaveMAC.Text + EditChaveHD.Text + 'CONJUNTO'));
end;
{$EndREGION '06 - Conjunto'}

end.
