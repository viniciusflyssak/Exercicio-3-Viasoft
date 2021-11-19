unit uFrmChecarConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,  uNetwork;

type
  TfrmChecarConexao = class(TForm)
    pnlFundo: TPanel;
    btnVoltar: TSpeedButton;
    btnChecar: TSpeedButton;
    lblElemento1: TLabel;
    lblElemento2: TLabel;
    pnlTitulo: TPanel;
    edtElemento1: TEdit;
    edtElemento2: TEdit;
    lblResultado: TLabel;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnChecarClick(Sender: TObject);
    procedure edtElementoKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmChecarConexao: TfrmChecarConexao;

implementation

{$R *.dfm}

uses uFrmPrincipal;

procedure TfrmChecarConexao.btnChecarClick(Sender: TObject);
begin
  if edtElemento1.Text = edtElemento2.Text then
    raise Exception.Create('Escolha dois elementos diferentes!');
  if (edtElemento1.Text = '') or (edtElemento2.Text = '') then
    Raise Exception.Create('Campo(s) vazio(s). Verifique!');
  lblResultado.Visible := True;
  if Network.Query(StrToInt(edtElemento1.Text), StrToInt(edtElemento2.Text)) then
  begin
    lblResultado.Caption := 'True';
    lblResultado.Font.Color := clLime;
  end
  else
  begin
    lblResultado.Caption := 'False';
    lblResultado.Font.Color := clRed;
  end;

end;

procedure TfrmChecarConexao.btnVoltarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmChecarConexao.edtElementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnChecarClick(nil)
  else
    if key = #27 then
      btnVoltarClick(nil);
end;

end.
