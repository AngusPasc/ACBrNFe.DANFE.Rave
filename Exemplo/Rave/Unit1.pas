{$I ACBr.inc}

unit Unit1;

interface

uses ShellAPI, Windows, Messages, SysUtils, Variants, Classes, Graphics,
     Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls,
     OleCtrls, SHDocVw, FileCtrl, XMLIntf, XMLDoc, zlib, StrUtils, Math,
     TypInfo, DateUtils,
     // ACBr
     synacode, ACBrBase, ACBrNFe, pcnNFe, pcnConversao, ACBrUtil, pcnAuxiliar,
     // ACBr Rave
     ACBrNFeDANFEClass, ACBrNFeDANFERave, ACBrNFeDANFERaveCB;

type

  { TForm1 }

  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    btnImprimir: TButton;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    ACBrNFeDANFERaveCB1: TACBrNFeDANFERaveCB;
    RGTipoComponente: TRadioGroup;
    RGModoImpressao: TRadioGroup;
    RGGeracaoDANFE: TRadioGroup;
    procedure btnImprimirClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TForm1.btnImprimirClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

  case RGTipoComponente.ItemIndex of
    0:
    begin
       ACBrNFe1.DANFE := ACBrNFeDANFERave1;
       ACBrNFeDANFERave1.RavFile := '..\NotaFiscalEletronica.rav';
    end;
    1: ACBrNFe1.DANFE := ACBrNFeDANFERaveCB1;
  end;

  case RGModoImpressao.ItemIndex of
    0: ACBrNFe1.DANFE.TipoDANFE := tiRetrato;
    1: ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;
  end;

  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName,False);

    case RGGeracaoDANFE.ItemIndex of
      0: ACBrNFe1.NotasFiscais.Imprimir;
      1:
      begin
         ACBrNFe1.Configuracoes.Geral.PathSalvar := ExtractFilePath(Application.ExeName);
         ACBrNFe1.NotasFiscais.ImprimirPDF;
      end;
    end;

  end;
end;

end.




