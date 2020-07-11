unit ComputadorVO;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FGL;

type
  TComputadorVO = class(TPersistent)
  private
    Fid: Integer;
    Fa: String;
    Fb: String;

  public
    property Id: Integer  read Fid write Fid;
    property CodigoHash: String  read Fa write Fa;
    property AcessoLiberado: String  read Fb write Fb;

  end;

  TListaDispositivosNaSessao = specialize TFPGObjectList<TComputadorVO>;

implementation


initialization
  Classes.RegisterClass(TComputadorVO);

finalization
  Classes.UnRegisterClass(TComputadorVO);

end.
