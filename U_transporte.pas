unit U_transporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm7 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

  Transporte = class
  public
    nome   : string;
    Constructor Create(nome : string); overload;
    procedure Move(metros : real);

  end;
  Carro = class(Transporte)
    public
       procedure Move(metros : real);overload;
  end;
  Aviao = class(Transporte)
     public
       procedure Move(metros : real);overload;
  end;
var
  Form7: TForm7;

implementation

{$R *.dfm}

Constructor Transporte.Create(nome:string);
begin
    self.nome:= nome;
end;
procedure TForm7.FormCreate(Sender: TObject);
var t: Transporte; c: Carro; a:Aviao;
begin
    t.Move(0);
    c.Move(100);
    a.Move(2500);

end;

procedure Carro.Move(metros: Real);
begin
       ShowMessage(Transporte.Create('Porche').nome+' moveu '+FloatToStr(metros)+' Metros');
end;

procedure Aviao.Move(metros: Real);
begin
      ShowMessage(Transporte.Create('Boeing').nome+' moveu '+FloatToStr(metros)+' Metros');
end;
procedure Transporte.Move(metros: Real);
begin
     ShowMessage(Transporte.Create('Manuel').nome+' moveu '+FloatToStr(metros)+' Metros');
end;

end.
