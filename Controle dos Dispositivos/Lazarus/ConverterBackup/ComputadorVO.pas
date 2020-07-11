unit ComputadorVO;

interface

uses
  Classes, SysUtils;

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

implementation


initialization
  Classes.RegisterClass(TComputadorVO);

finalization
  Classes.UnRegisterClass(TComputadorVO);

end.
