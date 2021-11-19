unit uFrmCadastroElementos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  uNetwork;

type
  TfrmCadastroElemento = class(TForm)
    pnlFundo: TPanel;
    btnVoltar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    lblElementos: TLabel;
    pnlTitulo: TPanel;
    edtElementos: TEdit;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure edtElementosKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmCadastroElemento: TfrmCadastroElemento;

implementation

{$R *.dfm}

uses uFrmPrincipal;

procedure TfrmCadastroElemento.btnCadastrarClick(Sender: TObject);
begin
  if edtElementos.Text = '' then
    raise Exception.Create('Informe a quantidade de elementos!');
  if StrToInt(edtElementos.Text) = 0 then
    raise Exception.Create('O número de elementos não pode ser zero!');

  Network := TNetwork.Create(StrToInt(edtElementos.Text));
  ShowMessage('Elementos criados com sucesso!');
  ModalResult := mrOk;
end;

procedure TfrmCadastroElemento.btnVoltarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadastroElemento.edtElementosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnCadastrarClick(nil)
  else
    if key = #27 then
      btnVoltarClick(nil);
end;

end.
