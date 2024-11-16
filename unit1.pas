unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, MMSystem;

type
  TCandidato = record
    Numero: Integer;
    Nome: String;
    Imagem: String;
  end;
  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button12: TButton;
    ButtonVerificar: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonVerificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCandidatos: array of TCandidato;
    procedure AddNumber(Number: String);
    procedure CarregarCandidatos;
    procedure VerificarCandidato(Numero: Integer);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.CarregarCandidatos;
begin // Carregar candidatos e suas imagens
  SetLength(FCandidatos, 4); // Exemplo com 3 candidatos

  FCandidatos[0].Numero := 12;
  FCandidatos[0].Nome := 'Renato Cariani';
  FCandidatos[0].Imagem := 'candidatos\renato.jpg';

  FCandidatos[1].Numero := 22;
  FCandidatos[1].Nome := 'Kanye West';
  FCandidatos[1].Imagem := 'candidatos\kanye.jpg';

  FCandidatos[2].Numero := 13;
  FCandidatos[2].Nome := 'Lula';
  FCandidatos[2].Imagem := 'candidatos\lula.jpg';

  FCandidatos[3].Numero := 17;
  FCandidatos[3].Nome := 'Bolsonaro';
  FCandidatos[3].Imagem := 'candidatos\bolsonaro.jpg';
end;

procedure TForm1.VerificarCandidato(Numero: Integer);
var
  i: Integer;
  Encontrado: Boolean;
begin Encontrado := False;
  for i := 0 to Length(FCandidatos) - 1 do
  begin
    if FCandidatos[i].Numero = Numero then
    begin
      Label4.Caption := FCandidatos[i].Nome;
      Image1.Picture.LoadFromFile(FCandidatos[i].Imagem);
      Encontrado := True;
      Break;
    end;
  end;

  if Encontrado then
  begin
    PlaySound('som\urna.mp3', 0, SND_ASYNC);
  end
  else
  begin
    Label4.Caption := 'Candidato não encontrado';
    Image1.Picture := nil;
  end;
end;

procedure TForm1.ButtonVerificarClick(Sender: TObject);
var
  Numero: Integer;
begin
  if TryStrToInt(Label3.Caption, Numero) then
  begin
    VerificarCandidato(Numero);
  end
  else
  begin
    Label4.Caption := 'Número inválido';
    Image1.Picture := nil;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CarregarCandidatos;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    if Sender is TButton then
        AddNumber((Sender as TButton).Caption);
end;

procedure TForm1.AddNumber(Number: String);
  begin if Length(Label1.Caption) < 2 then
        Label3.Caption := Label3.Caption + Number
  else
    Label3.Caption := Label3.Caption[2] + Number;
end;
end.

