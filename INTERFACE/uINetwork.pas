unit uINetwork;

interface

uses
  Classes;

type

  INetwork = interface
    procedure Connect(FirstElement, SecondElement: Integer);
    function Query(FirstElement, SecondElement: Integer): Boolean;
  end;

implementation

end.

