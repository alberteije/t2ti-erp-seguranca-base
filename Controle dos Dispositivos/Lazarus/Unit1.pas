unit Unit1;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Grids, DBGrids, FMTBcd,
  DateUtils, ComputadorVO, db, ZDataset, ZConnection;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    Conexao: TZConnection;
    ZTable1: TZTable;
    DataSource1: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    EditComandoRecebido: TLabeledEdit;
    EditIdDispositivoCliente: TLabeledEdit;
    EditQuantidade: TLabeledEdit;
    ZTable1id: TIntegerField;
    ZTable1a: TStringField;
    ZTable1b: TStringField;
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
  ListaDispositivosNaSessao: TListaDispositivosNaSessao;

implementation

{$R *.lfm}

uses Biblioteca;

// Exercício: Criptografe os dados na tabela conforme exemplo anterior
// Exercício: Implemente o controle num arquivo fake conforme exemplo anterior


procedure TForm1.FormCreate(Sender: TObject);
begin
  Conexao.Protocol := 'mysql';
  Conexao.HostName := 'localhost';
  Conexao.Database := 'teste';
  Conexao.User := 'root';
  Conexao.Password := 'root';
  Conexao.Connected := True;
  //
  ListaDispositivosNaSessao := TListaDispositivosNaSessao.Create;
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
    ZTable1.First;
    while not ZTable1.Eof do
    begin
      if ZTable1a.AsString = EditIdDispositivoCliente.Text then
      begin
        Encontrou := True;

        if ZTable1b.AsString = 'S' then
        begin
          Computador := TComputadorVO.Create;
          Computador.Id := ZTable1id.AsInteger;
          Computador.CodigoHash := ZTable1a.AsString;
          Computador.AcessoLiberado := ZTable1b.AsString;

          ListaDispositivosNaSessao.Add(Computador);
        end
        else
        begin
          ShowMessage('Dispositivo não liberado para uso.');
        end;

        Break;
      end;

      ZTable1.Next;
    end;
  end;

  if not Encontrou then
    ShowMessage('Dispositivo não localizado na base de dados.');

  Button3.Click;

  // Exercício: E se o dispositivo já tiver na sessão?
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZTable1.Close;
  ZTable1.Open;
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
