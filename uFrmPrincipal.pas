unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  uFrmCadastroElementos, uFrmCadastroConexao, uFrmChecarConexao, uNetwork;

type
  TfrmPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlTitulo: TPanel;
    btnCadastrarElemento: TSpeedButton;
    btnCadastrarConexao: TSpeedButton;
    btnChecarConexao: TSpeedButton;
    btnSair: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnCadastrarElementoClick(Sender: TObject);
    procedure btnCadastrarConexaoClick(Sender: TObject);
    procedure btnChecarConexaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  frmCadastroElemento: TfrmCadastroElemento;
  frmCadastroConexao: TfrmCadastroConexao;
  frmChecarConexao: TfrmChecarConexao;
  Network: TNetwork;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCadastrarConexaoClick(Sender: TObject);
begin
  if (Assigned(frmCadastroConexao)) then
    FreeAndNil(frmCadastroConexao);
  frmCadastroConexao := TfrmCadastroConexao.Create(nil);
  frmCadastroConexao.ShowModal;
end;

procedure TfrmPrincipal.btnCadastrarElementoClick(Sender: TObject);
begin
  if (Assigned(frmCadastroElemento)) then
    FreeAndNil(frmCadastroElemento);
  frmCadastroElemento := TfrmCadastroElemento.Create(nil);
  if (frmCadastroElemento.ShowModal = mrOk) then
  begin
    btnCadastrarElemento.Enabled := False;
    btnCadastrarConexao.Enabled := True;
    btnChecarConexao.Enabled := True;
  end
  else
  begin
    btnCadastrarElemento.Enabled := True;
    btnCadastrarConexao.Enabled := False;
    btnChecarConexao.Enabled := False;
  end;
end;

procedure TfrmPrincipal.btnChecarConexaoClick(Sender: TObject);
begin
  if (Assigned(frmChecarConexao)) then
    FreeAndNil(frmChecarConexao);
  frmChecarConexao := TfrmChecarConexao.Create(nil);
  frmChecarConexao.ShowModal;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if Assigned(Network) then
    FreeAndNil(Network);
  frmPrincipal.Close;
end;

end.
