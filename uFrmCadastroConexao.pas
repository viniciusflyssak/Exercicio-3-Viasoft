unit uFrmCadastroConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uNetwork;

type
  TfrmCadastroConexao = class(TForm)
    pnlFundo: TPanel;
    btnVoltar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    lblElemento1: TLabel;
    pnlTitulo: TPanel;
    edtElemento1: TEdit;
    lblElemento2: TLabel;
    edtElemento2: TEdit;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure edtElementoKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmCadastroConexao: TfrmCadastroConexao;

implementation

{$R *.dfm}

uses uFrmPrincipal;

procedure TfrmCadastroConexao.btnCadastrarClick(Sender: TObject);
begin
  if edtElemento1.Text = edtElemento2.Text then
    raise Exception.Create('Escolha dois elementos diferentes!');
  if (edtElemento1.Text = '') or (edtElemento2.Text = '') then
    Raise Exception.Create('Campo(s) vazio(s). Verifique!');
  Network.Connect(StrToInt(edtElemento1.Text),StrToInt(edtElemento2.Text));
  ShowMessage('Conexão criada com sucesso!');
end;

procedure TfrmCadastroConexao.btnVoltarClick(Sender: TObject);
begin
  edtElemento1.Text := '';
  edtElemento2.Text := '';
  modalResult := mrCancel;
end;

procedure TfrmCadastroConexao.edtElementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnCadastrarClick(nil)
  else
    if key = #27 then
      btnVoltarClick(nil);
end;

end.
