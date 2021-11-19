unit uNetwork;

interface
uses
  System.SysUtils, uINetwork;
Type
  TNetwork = class(TInterfacedObject, INetwork)
  private
    Type
      TConnection = class(TObject)
      public
        FElement: Array of Boolean;
        constructor Create(NumberElements: Integer);
      end;
    Var
      FElement : Array of Integer;
      FConnection: Array of TConnection;
  public
    constructor Create(NumberElements: Integer);
    procedure Connect(FirstElement, SecondElement: Integer);
    function Query(FirstElement, SecondElement: Integer): Boolean;
  End;

implementation

{ TNetwork }

constructor TNetwork.Create(NumberElements: Integer);
var
  i: Integer;
begin
  SetLength(FElement, NumberElements + 1);
  SetLength(FConnection, NumberElements + 1);
  for I := 0 to NumberElements do
  begin
    FElement[i] := i
  end;
  for I := 0 to NumberElements do
  begin
    FConnection[i] := TConnection.Create(NumberElements);
  end;
end;

procedure TNetwork.Connect(FirstElement, SecondElement: Integer);
begin
  if (FirstElement > (Length(FConnection) - 1)) or (SecondElement > (Length(FConnection) - 1)) then
    Raise Exception.Create('Elemento inválido. Apenas elementos até o número ' + IntToStr(Length(FConnection)-1) + ' estão cadastrados!');
  FConnection[FirstElement].FElement[SecondElement] := True;
  FConnection[SecondElement].FElement[FirstElement] := True;
end;

function TNetwork.Query(FirstElement, SecondElement: Integer): Boolean;
var
  i: Integer;
begin
  if (FirstElement > (Length(FConnection) - 1)) or (SecondElement > (Length(FConnection) - 1))then
    Raise Exception.Create('Elemento inválido. Apenas elementos até o número ' + IntToStr(Length(FConnection)-1) + ' estão cadastrados!');
  Result := False;
  try
    if FConnection[FirstElement].FElement[SecondElement] then
    begin
      Result := True;
      exit;
    end
    else
    begin
      for i := 0 to (length(FConnection)) do
      begin
        if FConnection[FirstElement].FElement[i] then
        begin
          if FConnection[i].FElement[SecondElement] then
          begin
            Result := True;
            Exit;
          end;
        end;
      end;
    end;
  except
    result := False;
  end;
end;

{ TNetwork.TConnection }

constructor TNetwork.TConnection.Create(NumberElements: Integer);
var
  i: Integer;
begin
  SetLength(FElement, NumberElements + 1);
  for i := 0 to NumberElements do
  begin
    FElement[i] := False;
  end;
end;

end.
