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
    EditNomeTabela: TLabeledEdit;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2id: TIntegerField;
    ClientDataSet2a: TStringField;
    ClientDataSet2b: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

// Exercício: Criptografe os dados na tabela conforme exemplo anterior
// Exercício: Implemente o controle num arquivo fake conforme exemplo anterior

{$Region 'Controle via Banco'}
procedure TForm1.Button1Click(Sender: TObject);
var
  Achou: Boolean;
begin
  Achou := False;

  ClientDataSet2.First;
  while not ClientDataSet2.eof do
  begin
    if ClientDataSet2a.AsString = EditNomeTabela.Text then
    begin
      Achou := True;

      if ClientDataSet1.RecordCount <= ClientDataSet2b.AsInteger then
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
      end
      else
        ShowMessage('Não é possível realizar mais lançamentos nessa tabela.')

    end;

    if Achou then
      Break;

    ClientDataSet2.Next;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SQLTable1.Open;
  //
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

{$EndRegion 'Controle via Banco'}

end.
