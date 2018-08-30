{

  Created by Fábio Lindemberg at 24/09/2014
  fabiolindemberg@gmail.com

  This project demonstrate how to create an Delphi application using nested
  tables using TClientDataSet e how to show data using CXGrid end print it with Report Builder
}

unit uFORM_MENU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CategoryButtons, ExtCtrls;

type
  TFORM_MENU = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    CategoryButtons1: TCategoryButtons;
    CategoryPanelGroup2: TCategoryPanelGroup;
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories2Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORM_MENU: TFORM_MENU;

implementation

uses uDM_MODEL, uFORM_CLIENTE, uFORM_PEDIDO, uFORM_BASE, uFORM_CARRO, uFORM_MONTADORA;

{$R *.dfm}

procedure TFORM_MENU.CategoryButtons1Categories0Items0Click(Sender: TObject);
begin
  Application.CreateForm(TFORM_CLIENTE, FORM_CLIENTE);
  FORM_CLIENTE.ShowModal;
  FORM_CLIENTE.Free;
end;

procedure TFORM_MENU.CategoryButtons1Categories1Items0Click(Sender: TObject);
begin
  Application.CreateForm(TFORM_CARRO, FORM_CARRO);
  FORM_CARRO.ShowModal;
  FORM_CARRO.Free;
end;

procedure TFORM_MENU.CategoryButtons1Categories2Items0Click(Sender: TObject);
begin
  Application.CreateForm(TFORM_MONTADORA, FORM_MONTADORA);
  FORM_MONTADORA.Showmodal;
  FORM_MONTADORA.Free;

end;

procedure TFORM_MENU.CategoryButtons1Categories3Items0Click(Sender: TObject);
begin
  Application.CreateForm(TFORM_PEDIDO, FORM_PEDIDO);
  FORM_PEDIDO.ShowModal;
  FORM_PEDIDO.Free;
end;

end.
