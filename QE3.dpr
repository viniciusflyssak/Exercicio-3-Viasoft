program QE3;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmCadastroElementos in 'uFrmCadastroElementos.pas' {frmCadastroElemento},
  uFrmChecarConexao in 'uFrmChecarConexao.pas' {frmChecarConexao},
  uFrmCadastroConexao in 'uFrmCadastroConexao.pas' {frmCadastroConexao},
  uNetwork in 'CLASS\uNetwork.pas',
  uINetwork in 'INTERFACE\uINetwork.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroElemento, frmCadastroElemento);
  Application.CreateForm(TfrmChecarConexao, frmChecarConexao);
  Application.CreateForm(TfrmCadastroConexao, frmCadastroConexao);
  Application.Run;
end.
