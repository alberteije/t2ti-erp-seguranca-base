unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DBXMySQL, Data.DB, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, DateUtils, Generics.Collections, ComputadorVO;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Conexao: TSQLConnection;
    SQLTable1: TSQLTable;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    EditComandoRecebido: TLabeledEdit;
    EditIdDispositivoCliente: TLabeledEdit;
    EditQuantidade: TLabeledEdit;
    SQLTable1id: TIntegerField;
    SQLTable1a: TStringField;
    SQLTable1b: TStringField;
    ClientDataSet1id: TIntegerField;
    ClientDataSet1a: TStringField;
    ClientDataSet1b: TStringField;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ListaDispositivosNaSessao: TObjectList<TComputadorVO>;

implementation

{$R *.dfm}

uses Biblioteca;

// Exercício: Criptografe os dados na tabela conforme exemplo anterior
// Exercício: Implemente o controle num arquivo fake conforme exemplo anterior


procedure TForm1.FormCreate(Sender: TObject);
begin
  ListaDispositivosNaSessao := TObjectList<TComputadorVO>.Create;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Computador: TComputadorVO;
  Encontrou: Boolean;
begin
  Encontrou := False;

  if ListaDispositivosNaSessao.Count >= StrToInt(EditQuantidade.Text) then
  begin
    ShowMessage('Quantidade máxima de dispositivos atingida.');
    Exit;
  end
  else
  begin
    ClientDataSet1.First;
    while not ClientDataSet1.Eof do
    begin
      if ClientDataSet1a.AsString = EditIdDispositivoCliente.Text then
      begin
        Encontrou := True;

        if ClientDataSet1b.AsString = 'S' then
        begin
          Computador := TComputadorVO.Create;
          Computador.Id := ClientDataSet1id.AsInteger;
          Computador.CodigoHash := ClientDataSet1a.AsString;
          Computador.AcessoLiberado := ClientDataSet1b.AsString;

          ListaDispositivosNaSessao.Add(Computador);
        end
        else
        begin
          ShowMessage('Dispositivo não liberado para uso.');
        end;

        Break;
      end;

      ClientDataSet1.Next;
    end;
  end;

  if not Encontrou then
    ShowMessage('Dispositivo não localizado na base de dados.');

  Button3.Click;

  // Exercício: E se o dispositivo já tiver na sessão?
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SQLTable1.Open;
  //
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Clear;

  for I := 0 to ListaDispositivosNaSessao.Count - 1 do
  begin
    Memo1.Lines.Add('-- Id: ' + IntToStr(ListaDispositivosNaSessao[I].Id) + ' -- Código: ' + ListaDispositivosNaSessao[I].CodigoHash)
  end;
end;

end.
