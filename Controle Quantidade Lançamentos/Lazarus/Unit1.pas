unit Unit1;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants,Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, md5,
  ComCtrls, Grids, DBGrids, ZConnection, ZDataset, FMTBcd, DateUtils, sqldb, db, BufDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    BufDataset2: TBufDataset;
    Panel1: TPanel;
    PageControl1: TPageControl;
    ZTable1: TZTable;
    ZTable1a: TStringField;
    ZTable1b: TStringField;
    ZTable1c: TStringField;
    ZTable1d: TStringField;
    ZTable1e: TStringField;
    ZTable1f: TStringField;
    ZTable1id: TIntegerField;
    TabSheet1: TTabSheet;
    Conexao: TZConnection;
    Button1: TButton;
    DBGrid1: TDBGrid;
    EditMes: TLabeledEdit;
    EditAno: TLabeledEdit;
    EditVencimento: TLabeledEdit;
    EditBloqueio: TLabeledEdit;
    EditLiberado: TLabeledEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    EditNomeTabela: TLabeledEdit;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
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

// Exercício: Criptografe os dados na tabela conforme exemplo anterior
// Exercício: Implemente o controle num arquivo fake conforme exemplo anterior

{$Region 'Controle via Banco'}
procedure TForm1.FormCreate(Sender: TObject);
begin
  Conexao.Protocol := 'mysql';
  Conexao.HostName := 'localhost';
  Conexao.Database := 'teste';
  Conexao.User := 'root';
  Conexao.Password := 'root';
  Conexao.Connected := True;

  // Controle do arquivo
  if FileExists('fake.bds') then
    BufDataSet2.LoadFromFile('fake.bds')
  else
  with BufDataSet2 do
  begin
    CreateDataSet;
    SaveToFile('fake.bds');
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Achou: Boolean;
begin
  Achou := False;

  BufDataset2.First;
  while not BufDataset2.eof do
  begin
    if BufDataset2.FieldByName('a').AsString = EditNomeTabela.Text then
    begin
      Achou := True;

      if ZTable1.RecordCount <= BufDataset2.FieldByName('b').AsInteger then
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
                                                    MD5Print(MD5String(
                                                    ZTable1.FieldByName('a').AsString +
                                                    ZTable1.FieldByName('b').AsString +
                                                    ZTable1.FieldByName('c').AsString +
                                                    ZTable1.FieldByName('d').AsString +
                                                    ZTable1.FieldByName('e').AsString
                                                    ));
        ZTable1.Post;
      end
      else
        ShowMessage('Não é possível realizar mais lançamentos nessa tabela.')

    end;

    if Achou then
      Break;

    BufDataset2.Next;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZTable1.Close;
  ZTable1.Open;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  BufDataSet2.SaveToFile('fake.bds');
end;

{$EndRegion 'Controle via Banco'}

end.
