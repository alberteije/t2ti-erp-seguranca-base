unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants,Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Grids, DBGrids, FMTBcd, DateUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
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
    ZTable1: TZTable;
    DataSource1: TDataSource;
    ZTable1id: TIntegerField;
    ZTable1a: TStringField;
    ZTable1b: TStringField;
    ZTable1c: TStringField;
    ZTable1d: TStringField;
    ZTable1e: TStringField;
    EditNomeTabela: TLabeledEdit;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
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

      if ZTable1.RecordCount <= ClientDataSet2b.AsInteger then
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
  ZTable1.Open;
  //
  ZTable1.Close;
  ZTable1.Open;
end;

{$EndRegion 'Controle via Banco'}

end.
