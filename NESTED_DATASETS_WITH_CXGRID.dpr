program NESTED_DATASETS_WITH_CXGRID;

uses
  Forms,
  uDM_MODEL in '.\src\uDM_MODEL.pas' {DM_MODEL: TDataModule},
  uFORM_MENU in '.\src\uFORM_MENU.pas' {FORM_MENU},
  uFORM_BASE in '.\src\uFORM_BASE.pas' {FORM_BASE},
  uFORM_CLIENTE in '.\src\uFORM_CLIENTE.pas' {FORM_CLIENTE},
  uRN_CLIENTE in '.\src\uRN_CLIENTE.pas',
  uFORM_PEDIDO in '.\src\uFORM_PEDIDO.pas' {FORM_PEDIDO},
  uFORM_CARRO in '.\src\uFORM_CARRO.pas' {FORM_CARRO},
  uFORM_MONTADORA in '.\src\uFORM_MONTADORA.pas' {FORM_MONTADORA},
  uFORM_REPORT_BASE in '.\src\uFORM_REPORT_BASE.pas' {FORM_REPORT_BASE},
  uFORM_REPORT_CARRO in '.\src\uFORM_REPORT_CARRO.pas' {FORM_REPORT_CARRO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFORM_MENU, FORM_MENU);
  Application.CreateForm(TDM_MODEL, DM_MODEL);
  Application.Run;
end.
