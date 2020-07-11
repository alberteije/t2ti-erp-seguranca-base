unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Registry, IniFiles, IpHlpApi,
  Winapi.IpTypes, JvComponentBase, JvComputerInfoEx;

type TWMacId = array [0..MAX_ADAPTER_ADDRESS_LENGTH - 1] of BYTE;

type
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
    JvComputerInfoEx: TJvComputerInfoEx;
    GroupBox6: TGroupBox;
    Button12: TButton;
    EditContraChaveConjunto: TLabeledEdit;
    procedure GravarChave;
    procedure CarregarChave;
    function SerialNum(FDrive: String): String;
    function GetMACaddress: TWMacId;
    function GetHardwareKey : String;
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

{$R *.dfm}

uses Biblioteca;

{$REGION '01 - Verificar Arquivo'}
procedure TForm1.Button1Click(Sender: TObject);
begin
  if not FileExists('C:\meuarquivo.dll') then
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
  ForceDirectories('C:\T2Ti\Chaves');
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
  ForceDirectories('C:\T2Ti\Chaves');
  if FileExists('C:\T2Ti\Chaves\' + EditChaveHD.Text + '.ini') then
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
  EditChaveHD.Text := MD5String(SerialNum('c'));
  CarregarChave;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  EditContraChaveHD.Text := MD5String(EditChaveHD.Text + 'HD');
  GravarChave;
end;
{$ENDREGION '03 - Número do HD'}

{$REGION '04 - Número MAC'}
function TForm1.GetMACaddress: TWMacId;
var
  i: integer;
  AdapterInfo: Pointer;
  pAdapterInfo: PIP_ADAPTER_INFO;
  dwBufLen, dwStatus: LongWord;
begin
  dwBufLen := 0;
  AdapterInfo := Nil; { Inicialmente, limpa o retorno }
  for i := 0 to MAX_ADAPTER_ADDRESS_LENGTH - 1 do
    Result[i] := 0;
  GetAdaptersInfo(PIP_ADAPTER_INFO(AdapterInfo), dwBufLen);
  if (dwBufLen > 0) then
  begin
    GetMem(AdapterInfo, dwBufLen);
    dwStatus := GetAdaptersInfo(PIP_ADAPTER_INFO(AdapterInfo), dwBufLen);
    if (dwStatus = ERROR_SUCCESS) then
    begin
      pAdapterInfo := PIP_ADAPTER_INFO(AdapterInfo);

      { Copia o endereço p/ nossa variável de retorno }
      for i := 0 to MAX_ADAPTER_ADDRESS_LENGTH - 1 do
        Result[i] := pAdapterInfo.Address[i];
      FreeMem(AdapterInfo);
    end;
  end;
end;

function TForm1.GetHardwareKey: String;
var
  id: TWMacId;
begin
  id := getMacAddress;
  Result := Format('%.2X', [id[1]]) + Format('%.2X', [id[2]]) + Format('%.2X', [id[3]]) + Format('%.2X', [id[4]]) + Format('%.2X', [id[5]]);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  EditChaveMAC.Text := GetHardwareKey; //MD5String(GetHardwareKey);
end;
procedure TForm1.Button9Click(Sender: TObject);
begin
  EditContraChaveMAC.Text := MD5String(EditChaveMAC.Text + 'MAC');
end;
{$EndREGION '04 - Número MAC'}

{$REGION '05 - Serial Windows'}
procedure TForm1.Button10Click(Sender: TObject);
begin
  EditChaveSerial.Text := JvComputerInfoEx.OS.ProductID;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  EditContraChaveSerial.Text := MD5String(EditChaveSerial.Text + 'WINDOWS');
end;
{$EndREGION '05 - Serial Windows'}

{$REGION '06 - Conjunto'}
procedure TForm1.Button12Click(Sender: TObject);
begin
  EditContraChaveConjunto.Text := MD5String(EditChaveSerial.Text + EditChaveMAC.Text + EditChaveHD.Text + 'CONJUNTO');
end;
{$EndREGION '06 - Conjunto'}

end.
