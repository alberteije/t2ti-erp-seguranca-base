unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DBXMySQL, Data.DB, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, DateUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Conexao: TSQLConnection;
    Button1: TButton;
    DBGrid1: TDBGrid;
    EditMes: TLabeledEdit;
    EditAno: TLabeledEdit;
    EditVencimento: TLabeledEdit;
    EditBloqueio: TLabeledEdit;
    EditLiberado: TLabeledEdit;
    Button2: TButton;
    SQLTable1: TSQLTable;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLTable1id: TIntegerField;
    SQLTable1a: TStringField;
    SQLTable1b: TStringField;
    SQLTable1c: TStringField;
    SQLTable1d: TStringField;
    SQLTable1e: TStringField;
    ClientDataSet1id: TIntegerField;
    ClientDataSet1a: TStringField;
    ClientDataSet1b: TStringField;
    ClientDataSet1c: TStringField;
    ClientDataSet1d: TStringField;
    ClientDataSet1e: TStringField;
    SQLTable1f: TStringField;
    ClientDataSet1f: TStringField;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    EditChaveDesbloqueio: TLabeledEdit;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2a: TStringField;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ClientDataSet2id: TIntegerField;
    ClientDataSet2b: TStringField;
    ClientDataSet2c: TStringField;
    ClientDataSet2d: TStringField;
    ClientDataSet2e: TStringField;
    ClientDataSet2f: TStringField;
    Memo2: TMemo;
    EditChaveDesbloqueioArquivo: TLabeledEdit;
    Button8: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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

{$Region 'Controle via Banco'}
procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientDataSet1.Open;
  //
  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('a').AsString := Codifica('C', EditMes.Text);
  ClientDataSet1.FieldByName('b').AsString := Codifica('C', EditAno.Text);
  ClientDataSet1.FieldByName('c').AsString := Codifica('C', EditVencimento.Text);
  ClientDataSet1.FieldByName('d').AsString := Codifica('C', EditBloqueio.Text);
  ClientDataSet1.FieldByName('e').AsString := Codifica('C', EditLiberado.Text);

  ClientDataSet1.FieldByName('f').AsString :=
                                              MD5String(
                                              ClientDataSet1.FieldByName('a').AsString +
                                              ClientDataSet1.FieldByName('b').AsString +
                                              ClientDataSet1.FieldByName('c').AsString +
                                              ClientDataSet1.FieldByName('d').AsString +
                                              ClientDataSet1.FieldByName('e').AsString
                                              );
  ClientDataSet1.Post;
  ClientDataSet1.ApplyUpdates(0);
  //
  SQLTable1.Close;
  SQLTable1.Open;
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SQLTable1.Open;
  //
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('Mês = ' + Codifica('D', ClientDataSet1.FieldByName('a').AsString));
  Memo1.Lines.Add('Ano = ' + Codifica('D', ClientDataSet1.FieldByName('b').AsString));
  Memo1.Lines.Add('Vencimento = ' + Codifica('D', ClientDataSet1.FieldByName('c').AsString));
  Memo1.Lines.Add('Bloqueio = ' + Codifica('D', ClientDataSet1.FieldByName('d').AsString));
  Memo1.Lines.Add('Liberado = ' + Codifica('D', ClientDataSet1.FieldByName('e').AsString));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  HashRegistro: String;
begin
  HashRegistro :=
                  MD5String(
                  ClientDataSet1.FieldByName('a').AsString +
                  ClientDataSet1.FieldByName('b').AsString +
                  ClientDataSet1.FieldByName('c').AsString +
                  ClientDataSet1.FieldByName('d').AsString +
                  ClientDataSet1.FieldByName('e').AsString
                  );
  //
  if HashRegistro = ClientDataSet1.FieldByName('f').AsString then
  begin
    Memo1.Lines.Add('===================================');
    Memo1.Lines.Add('Id = ' + ClientDataSet1.FieldByName('id').AsString);
    Memo1.Lines.Add('Hash OK - Registro não violado.');
    Memo1.Lines.Add('===================================');
  end
  else
  begin
    Memo1.Lines.Add('===================================');
    Memo1.Lines.Add('Id = ' + ClientDataSet1.FieldByName('id').AsString);
    Memo1.Lines.Add('Hash Diferente - Registro violado.');
    Memo1.Lines.Add('===================================');
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Resultado: boolean;
begin
  // verifica se houve alguma tentativa de burlar os dados no banco de dados
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    Button4.Click;
    ClientDataSet1.Next;
  end;


  // verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
  // select * from tabela where mes=mes_atual and ano=ano_atual
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    if (YearOf(Date) = StrToInt(Codifica('D', ClientDataSet1.FieldByName('b').AsString))) and (MonthOf(Date) = StrToInt(Codifica('D', ClientDataSet1.FieldByName('a').AsString))) then
    begin
      Resultado := True;
      Break;
    end;
    ClientDataSet1.Next;
  end;
  if not Resultado then
  begin
    ShowMessage('Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.');
    Exit;
  end;


  // caso tenha encontrado o mes e ano, verifica se a data atual é maior que a data do vencimento
  if DayOf(Date) > StrToInt(Codifica('D', ClientDataSet1.FieldByName('c').AsString)) then
  begin
    ShowMessage('A data atual é maior que a data do vencimento. Será que o cliente já pagou?');

    // verifica se o cliente já realizou o pagamento através do campo Liberado
    if Codifica('D', ClientDataSet1.FieldByName('e').AsString) = 'N' then
    begin
      ShowMessage('O cliente não pagou. Será que o sistema deve ser bloqueado?');

      // caso a data atual seja maior ou igual à data definida para bloqueio, o sistema deve ser bloqueado
      if DayOf(Date) >= StrToInt(Codifica('D', ClientDataSet1.FieldByName('d').AsString)) then
      begin
        ShowMessage('O sistema deve ser bloqueado. Informar o seguinte código para SH: ' + #13#13 + ClientDataSet1.FieldByName('f').AsString);
      end;
    end
    else
      ShowMessage('O cliente já pagou!');
  end;

  // Exercício: e se o cliente deixar de pagar durante dois meses?
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Button3.Click;
  //
  Memo1.Lines.Add('=====================================================');
  Memo1.Lines.Add('Hash Registro Bloqueado  = ' + ClientDataSet1.FieldByName('f').AsString);
  Memo1.Lines.Add('Chave Desbloqueio = ' + MD5String(ClientDataSet1.FieldByName('f').AsString + 'uma_chave'));
  Memo1.Lines.Add('=====================================================');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if EditChaveDesbloqueio.Text = MD5String(ClientDataSet1.FieldByName('f').AsString + 'uma_chave') then
  begin
    ClientDataSet1.Edit;

    ClientDataSet1.FieldByName('e').AsString := Codifica('C', 'S');
    ClientDataSet1.FieldByName('f').AsString :=
                                                MD5String(
                                                ClientDataSet1.FieldByName('a').AsString +
                                                ClientDataSet1.FieldByName('b').AsString +
                                                ClientDataSet1.FieldByName('c').AsString +
                                                ClientDataSet1.FieldByName('d').AsString +
                                                ClientDataSet1.FieldByName('e').AsString
                                                );
    ClientDataSet1.Post;
    ClientDataSet1.ApplyUpdates(0);
    //
    SQLTable1.Close;
    SQLTable1.Open;
    ClientDataSet1.Close;
    ClientDataSet1.Open;
    //
    ShowMessage('Dados Atualizados. Sistema Liberado!');
  end
  else
    ShowMessage('Chave não confere - entre em contato com a SH.');
end;
{$EndRegion 'Controle via Banco'}

{$Region 'Controle via Arquivo'}
procedure TForm1.Button10Click(Sender: TObject);
begin
  ClientDataSet2.Append;
  ClientDataSet2.FieldByName('id').AsInteger := ClientDataSet2.RecordCount + 1;
  ClientDataSet2.FieldByName('a').AsString := Codifica('C', EditMes.Text);
  ClientDataSet2.FieldByName('b').AsString := Codifica('C', EditAno.Text);
  ClientDataSet2.FieldByName('c').AsString := Codifica('C', EditVencimento.Text);
  ClientDataSet2.FieldByName('d').AsString := Codifica('C', EditBloqueio.Text);
  ClientDataSet2.FieldByName('e').AsString := Codifica('C', EditLiberado.Text);

  ClientDataSet2.FieldByName('f').AsString :=
                                              MD5String(
                                              ClientDataSet2.FieldByName('a').AsString +
                                              ClientDataSet2.FieldByName('b').AsString +
                                              ClientDataSet2.FieldByName('c').AsString +
                                              ClientDataSet2.FieldByName('d').AsString +
                                              ClientDataSet2.FieldByName('e').AsString
                                              );
  ClientDataSet2.Post;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Memo2.Clear;
  Memo2.Lines.Add('Mês = ' + Codifica('D', ClientDataSet2.FieldByName('a').AsString));
  Memo2.Lines.Add('Ano = ' + Codifica('D', ClientDataSet2.FieldByName('b').AsString));
  Memo2.Lines.Add('Vencimento = ' + Codifica('D', ClientDataSet2.FieldByName('c').AsString));
  Memo2.Lines.Add('Bloqueio = ' + Codifica('D', ClientDataSet2.FieldByName('d').AsString));
  Memo2.Lines.Add('Liberado = ' + Codifica('D', ClientDataSet2.FieldByName('e').AsString));
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  HashRegistro: String;
begin
  HashRegistro :=
                  MD5String(
                  ClientDataSet2.FieldByName('a').AsString +
                  ClientDataSet2.FieldByName('b').AsString +
                  ClientDataSet2.FieldByName('c').AsString +
                  ClientDataSet2.FieldByName('d').AsString +
                  ClientDataSet2.FieldByName('e').AsString
                  );
  //
  if HashRegistro = ClientDataSet2.FieldByName('f').AsString then
  begin
    Memo2.Lines.Add('===================================');
    Memo2.Lines.Add('Id = ' + ClientDataSet2.FieldByName('id').AsString);
    Memo2.Lines.Add('Hash OK - Registro não violado.');
    Memo2.Lines.Add('===================================');
  end
  else
  begin
    Memo2.Lines.Add('===================================');
    Memo2.Lines.Add('Id = ' + ClientDataSet2.FieldByName('id').AsString);
    Memo2.Lines.Add('Hash Diferente - Registro violado.');
    Memo2.Lines.Add('===================================');
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  Resultado: boolean;
begin
  // verifica se houve alguma tentativa de burlar os dados no banco de dados
  ClientDataSet2.First;
  while not ClientDataSet2.Eof do
  begin
    Button12.Click;
    ClientDataSet2.Next;
  end;


  // verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
  // select * from tabela where mes=mes_atual and ano=ano_atual
  ClientDataSet2.First;
  while not ClientDataSet2.Eof do
  begin
    if (YearOf(Date) = StrToInt(Codifica('D', ClientDataSet2.FieldByName('b').AsString))) and (MonthOf(Date) = StrToInt(Codifica('D', ClientDataSet2.FieldByName('a').AsString))) then
    begin
      Resultado := True;
      Break;
    end;
    ClientDataSet2.Next;
  end;
  if not Resultado then
  begin
    ShowMessage('Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.');
    Exit;
  end;


  // caso tenha encontrado o mes e ano, verifica se a data atual é maior que a data do vencimento
  if DayOf(Date) > StrToInt(Codifica('D', ClientDataSet2.FieldByName('c').AsString)) then
  begin
    ShowMessage('A data atual é maior que a data do vencimento. Será que o cliente já pagou?');

    // verifica se o cliente já realizou o pagamento através do campo Liberado
    if Codifica('D', ClientDataSet2.FieldByName('e').AsString) = 'N' then
    begin
      ShowMessage('O cliente não pagou. Será que o sistema deve ser bloqueado?');

      // caso a data atual seja maior ou igual à data definida para bloqueio, o sistema deve ser bloqueado
      if DayOf(Date) >= StrToInt(Codifica('D', ClientDataSet2.FieldByName('d').AsString)) then
      begin
        ShowMessage('O sistema deve ser bloqueado. Informar o seguinte código para SH: ' + #13#13 + ClientDataSet2.FieldByName('f').AsString);
      end;
    end
    else
      ShowMessage('O cliente já pagou!');
  end;

  // Exercício: e se o cliente deixar de pagar durante dois meses?
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Button11.Click;
  //
  Memo2.Lines.Add('=====================================================');
  Memo2.Lines.Add('Hash Registro Bloqueado  = ' + ClientDataSet2.FieldByName('f').AsString);
  Memo2.Lines.Add('Chave Desbloqueio = ' + MD5String(ClientDataSet2.FieldByName('f').AsString + 'uma_chave'));
  Memo2.Lines.Add('=====================================================');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if EditChaveDesbloqueioArquivo.Text = MD5String(ClientDataSet2.FieldByName('f').AsString + 'uma_chave') then
  begin
    ClientDataSet2.Edit;

    ClientDataSet2.FieldByName('e').AsString := Codifica('C', 'S');
    ClientDataSet2.FieldByName('f').AsString :=
                                                MD5String(
                                                ClientDataSet2.FieldByName('a').AsString +
                                                ClientDataSet2.FieldByName('b').AsString +
                                                ClientDataSet2.FieldByName('c').AsString +
                                                ClientDataSet2.FieldByName('d').AsString +
                                                ClientDataSet2.FieldByName('e').AsString
                                                );
    ClientDataSet2.Post;
    //
    ShowMessage('Dados Atualizados. Sistema Liberado!');
  end
  else
    ShowMessage('Chave não confere - entre em contato com a SH.');
end;
{$EndRegion 'Controle via Arquivo'}

end.
