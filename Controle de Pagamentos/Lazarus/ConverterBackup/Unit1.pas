unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, DBXMySQL, DB, SqlExpr, Grids, DBGrids, FMTBcd,
  DateUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Conexao: TZConnection;
    Button1: TButton;
    DBGrid1: TDBGrid;
    EditMes: TLabeledEdit;
    EditAno: TLabeledEdit;
    EditVencimento: TLabeledEdit;
    EditBloqueio: TLabeledEdit;
    EditLiberado: TLabeledEdit;
    Button2: TButton;
    ZTable1: TZTable;
    DataSource1: TDataSource;
    ZTable1id: TIntegerField;
    ZTable1a: TStringField;
    ZTable1b: TStringField;
    ZTable1c: TStringField;
    ZTable1d: TStringField;
    ZTable1e: TStringField;
    ZTable1f: TStringField;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    EditChaveDesbloqueio: TLabeledEdit;
    BufDataset2: TBufDataset;
    BufDataset2a: TStringField;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    BufDataset2id: TIntegerField;
    BufDataset2b: TStringField;
    BufDataset2c: TStringField;
    BufDataset2d: TStringField;
    BufDataset2e: TStringField;
    BufDataset2f: TStringField;
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
  ZTable1.Open;
  //
  ZTable1.Append;
  ZTable1.FieldByName('a').AsString := Codifica('C', EditMes.Text);
  ZTable1.FieldByName('b').AsString := Codifica('C', EditAno.Text);
  ZTable1.FieldByName('c').AsString := Codifica('C', EditVencimento.Text);
  ZTable1.FieldByName('d').AsString := Codifica('C', EditBloqueio.Text);
  ZTable1.FieldByName('e').AsString := Codifica('C', EditLiberado.Text);

  ZTable1.FieldByName('f').AsString :=
                                              MD5String(
                                              ZTable1.FieldByName('a').AsString +
                                              ZTable1.FieldByName('b').AsString +
                                              ZTable1.FieldByName('c').AsString +
                                              ZTable1.FieldByName('d').AsString +
                                              ZTable1.FieldByName('e').AsString
                                              );
  ZTable1.Post;
  ZTable1.ApplyUpdates(0);
  //
  ZTable1.Close;
  ZTable1.Open;
  ZTable1.Close;
  ZTable1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZTable1.Open;
  //
  ZTable1.Close;
  ZTable1.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add('Mês = ' + Codifica('D', ZTable1.FieldByName('a').AsString));
  Memo1.Lines.Add('Ano = ' + Codifica('D', ZTable1.FieldByName('b').AsString));
  Memo1.Lines.Add('Vencimento = ' + Codifica('D', ZTable1.FieldByName('c').AsString));
  Memo1.Lines.Add('Bloqueio = ' + Codifica('D', ZTable1.FieldByName('d').AsString));
  Memo1.Lines.Add('Liberado = ' + Codifica('D', ZTable1.FieldByName('e').AsString));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  HashRegistro: String;
begin
  HashRegistro :=
                  MD5String(
                  ZTable1.FieldByName('a').AsString +
                  ZTable1.FieldByName('b').AsString +
                  ZTable1.FieldByName('c').AsString +
                  ZTable1.FieldByName('d').AsString +
                  ZTable1.FieldByName('e').AsString
                  );
  //
  if HashRegistro = ZTable1.FieldByName('f').AsString then
  begin
    Memo1.Lines.Add('===================================');
    Memo1.Lines.Add('Id = ' + ZTable1.FieldByName('id').AsString);
    Memo1.Lines.Add('Hash OK - Registro não violado.');
    Memo1.Lines.Add('===================================');
  end
  else
  begin
    Memo1.Lines.Add('===================================');
    Memo1.Lines.Add('Id = ' + ZTable1.FieldByName('id').AsString);
    Memo1.Lines.Add('Hash Diferente - Registro violado.');
    Memo1.Lines.Add('===================================');
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Resultado: boolean;
begin
  // verifica se houve alguma tentativa de burlar os dados no banco de dados
  ZTable1.First;
  while not ZTable1.Eof do
  begin
    Button4.Click;
    ZTable1.Next;
  end;


  // verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
  // select * from tabela where mes=mes_atual and ano=ano_atual
  ZTable1.First;
  while not ZTable1.Eof do
  begin
    if (YearOf(Date) = StrToInt(Codifica('D', ZTable1.FieldByName('b').AsString))) and (MonthOf(Date) = StrToInt(Codifica('D', ZTable1.FieldByName('a').AsString))) then
    begin
      Resultado := True;
      Break;
    end;
    ZTable1.Next;
  end;
  if not Resultado then
  begin
    ShowMessage('Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.');
    Exit;
  end;


  // caso tenha encontrado o mes e ano, verifica se a data atual é maior que a data do vencimento
  if DayOf(Date) > StrToInt(Codifica('D', ZTable1.FieldByName('c').AsString)) then
  begin
    ShowMessage('A data atual é maior que a data do vencimento. Será que o cliente já pagou?');

    // verifica se o cliente já realizou o pagamento através do campo Liberado
    if Codifica('D', ZTable1.FieldByName('e').AsString) = 'N' then
    begin
      ShowMessage('O cliente não pagou. Será que o sistema deve ser bloqueado?');

      // caso a data atual seja maior ou igual à data definida para bloqueio, o sistema deve ser bloqueado
      if DayOf(Date) >= StrToInt(Codifica('D', ZTable1.FieldByName('d').AsString)) then
      begin
        ShowMessage('O sistema deve ser bloqueado. Informar o seguinte código para SH: ' + #13#13 + ZTable1.FieldByName('f').AsString);
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
  Memo1.Lines.Add('Hash Registro Bloqueado  = ' + ZTable1.FieldByName('f').AsString);
  Memo1.Lines.Add('Chave Desbloqueio = ' + MD5String(ZTable1.FieldByName('f').AsString + 'uma_chave'));
  Memo1.Lines.Add('=====================================================');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if EditChaveDesbloqueio.Text = MD5String(ZTable1.FieldByName('f').AsString + 'uma_chave') then
  begin
    ZTable1.Edit;

    ZTable1.FieldByName('e').AsString := Codifica('C', 'S');
    ZTable1.FieldByName('f').AsString :=
                                                MD5String(
                                                ZTable1.FieldByName('a').AsString +
                                                ZTable1.FieldByName('b').AsString +
                                                ZTable1.FieldByName('c').AsString +
                                                ZTable1.FieldByName('d').AsString +
                                                ZTable1.FieldByName('e').AsString
                                                );
    ZTable1.Post;
    ZTable1.ApplyUpdates(0);
    //
    ZTable1.Close;
    ZTable1.Open;
    ZTable1.Close;
    ZTable1.Open;
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
  BufDataset2.Append;
  BufDataset2.FieldByName('id').AsInteger := BufDataset2.RecordCount + 1;
  BufDataset2.FieldByName('a').AsString := Codifica('C', EditMes.Text);
  BufDataset2.FieldByName('b').AsString := Codifica('C', EditAno.Text);
  BufDataset2.FieldByName('c').AsString := Codifica('C', EditVencimento.Text);
  BufDataset2.FieldByName('d').AsString := Codifica('C', EditBloqueio.Text);
  BufDataset2.FieldByName('e').AsString := Codifica('C', EditLiberado.Text);

  BufDataset2.FieldByName('f').AsString :=
                                              MD5String(
                                              BufDataset2.FieldByName('a').AsString +
                                              BufDataset2.FieldByName('b').AsString +
                                              BufDataset2.FieldByName('c').AsString +
                                              BufDataset2.FieldByName('d').AsString +
                                              BufDataset2.FieldByName('e').AsString
                                              );
  BufDataset2.Post;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Memo2.Clear;
  Memo2.Lines.Add('Mês = ' + Codifica('D', BufDataset2.FieldByName('a').AsString));
  Memo2.Lines.Add('Ano = ' + Codifica('D', BufDataset2.FieldByName('b').AsString));
  Memo2.Lines.Add('Vencimento = ' + Codifica('D', BufDataset2.FieldByName('c').AsString));
  Memo2.Lines.Add('Bloqueio = ' + Codifica('D', BufDataset2.FieldByName('d').AsString));
  Memo2.Lines.Add('Liberado = ' + Codifica('D', BufDataset2.FieldByName('e').AsString));
end;

procedure TForm1.Button12Click(Sender: TObject);
var
  HashRegistro: String;
begin
  HashRegistro :=
                  MD5String(
                  BufDataset2.FieldByName('a').AsString +
                  BufDataset2.FieldByName('b').AsString +
                  BufDataset2.FieldByName('c').AsString +
                  BufDataset2.FieldByName('d').AsString +
                  BufDataset2.FieldByName('e').AsString
                  );
  //
  if HashRegistro = BufDataset2.FieldByName('f').AsString then
  begin
    Memo2.Lines.Add('===================================');
    Memo2.Lines.Add('Id = ' + BufDataset2.FieldByName('id').AsString);
    Memo2.Lines.Add('Hash OK - Registro não violado.');
    Memo2.Lines.Add('===================================');
  end
  else
  begin
    Memo2.Lines.Add('===================================');
    Memo2.Lines.Add('Id = ' + BufDataset2.FieldByName('id').AsString);
    Memo2.Lines.Add('Hash Diferente - Registro violado.');
    Memo2.Lines.Add('===================================');
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  Resultado: boolean;
begin
  // verifica se houve alguma tentativa de burlar os dados no banco de dados
  BufDataset2.First;
  while not BufDataset2.Eof do
  begin
    Button12.Click;
    BufDataset2.Next;
  end;


  // verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
  // select * from tabela where mes=mes_atual and ano=ano_atual
  BufDataset2.First;
  while not BufDataset2.Eof do
  begin
    if (YearOf(Date) = StrToInt(Codifica('D', BufDataset2.FieldByName('b').AsString))) and (MonthOf(Date) = StrToInt(Codifica('D', BufDataset2.FieldByName('a').AsString))) then
    begin
      Resultado := True;
      Break;
    end;
    BufDataset2.Next;
  end;
  if not Resultado then
  begin
    ShowMessage('Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.');
    Exit;
  end;


  // caso tenha encontrado o mes e ano, verifica se a data atual é maior que a data do vencimento
  if DayOf(Date) > StrToInt(Codifica('D', BufDataset2.FieldByName('c').AsString)) then
  begin
    ShowMessage('A data atual é maior que a data do vencimento. Será que o cliente já pagou?');

    // verifica se o cliente já realizou o pagamento através do campo Liberado
    if Codifica('D', BufDataset2.FieldByName('e').AsString) = 'N' then
    begin
      ShowMessage('O cliente não pagou. Será que o sistema deve ser bloqueado?');

      // caso a data atual seja maior ou igual à data definida para bloqueio, o sistema deve ser bloqueado
      if DayOf(Date) >= StrToInt(Codifica('D', BufDataset2.FieldByName('d').AsString)) then
      begin
        ShowMessage('O sistema deve ser bloqueado. Informar o seguinte código para SH: ' + #13#13 + BufDataset2.FieldByName('f').AsString);
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
  Memo2.Lines.Add('Hash Registro Bloqueado  = ' + BufDataset2.FieldByName('f').AsString);
  Memo2.Lines.Add('Chave Desbloqueio = ' + MD5String(BufDataset2.FieldByName('f').AsString + 'uma_chave'));
  Memo2.Lines.Add('=====================================================');
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if EditChaveDesbloqueioArquivo.Text = MD5String(BufDataset2.FieldByName('f').AsString + 'uma_chave') then
  begin
    BufDataset2.Edit;

    BufDataset2.FieldByName('e').AsString := Codifica('C', 'S');
    BufDataset2.FieldByName('f').AsString :=
                                                MD5String(
                                                BufDataset2.FieldByName('a').AsString +
                                                BufDataset2.FieldByName('b').AsString +
                                                BufDataset2.FieldByName('c').AsString +
                                                BufDataset2.FieldByName('d').AsString +
                                                BufDataset2.FieldByName('e').AsString
                                                );
    BufDataset2.Post;
    //
    ShowMessage('Dados Atualizados. Sistema Liberado!');
  end
  else
    ShowMessage('Chave não confere - entre em contato com a SH.');
end;
{$EndRegion 'Controle via Arquivo'}

end.
