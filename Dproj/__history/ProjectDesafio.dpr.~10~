program ProjectDesafio;

uses
  System.StartUpCopy,
  FMX.Forms,
  unitMain in '..\Units\unitsPrimary\unitMain.pas' {frmPrincipal},
  unitChangeCheck in '..\Units\unitsSecondary\unitChangeCheck.pas',
  unitCreateTreeView in '..\Units\unitsSecondary\unitCreateTreeView.pas',
  unitStoreItens in '..\Units\unitsSecondary\unitStoreItens.pas',
  unitTreeViewList in '..\Units\unitsSecondary\unitTreeViewList.pas',
  uDtModule in '..\Units\unitDB\uDtModule.pas' {DtModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDtModule, DtModule);
  Application.Run;
end.
