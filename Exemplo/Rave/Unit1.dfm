object Form1: TForm1
  Left = 234
  Top = 104
  Caption = 'ACBrNFe - Impress'#227'o DANFE em RaveReport'
  ClientHeight = 386
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnImprimir: TButton
    Left = 176
    Top = 323
    Width = 155
    Height = 49
    Caption = 'Gerar DANFE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnImprimirClick
  end
  object RGTipoComponente: TRadioGroup
    Left = 24
    Top = 8
    Width = 471
    Height = 64
    Caption = '  Tipo de Componente  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'Rave (com arquivo .rav)'
      'RaveCB (sem arquivo)')
    ParentFont = False
    TabOrder = 0
  end
  object RGModoImpressao: TRadioGroup
    Left = 24
    Top = 88
    Width = 471
    Height = 66
    Caption = '  Modo de impress'#227'o  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Retrato'
      'Paisagem')
    ParentFont = False
    TabOrder = 1
  end
  object RGGeracaoDANFE: TRadioGroup
    Left = 24
    Top = 168
    Width = 471
    Height = 66
    Caption = '  Forma da gera'#231#227'o da DANFE  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Imprimir'
      'Gerar PDF')
    ParentFont = False
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 152
    Top = 256
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.PathSalvar = 'C:\Program Files\Embarcadero\RAD Studio\9.0\bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.RetirarAcentos = True
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Left = 77
    Top = 257
  end
  object ACBrNFeDANFERave1: TACBrNFeDANFERave
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiSemGeracao
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimeItens = True
    ViaConsumidor = True
    EspessuraBorda = 1
    TamanhoFonte_RazaoSocial = 12
    TamanhoFonte_ANTT = 10
    TributosPercentual = ptValorProdutos
    Left = 248
    Top = 256
  end
  object ACBrNFeDANFERaveCB1: TACBrNFeDANFERaveCB
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiSemGeracao
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimeItens = True
    ViaConsumidor = True
    TamanhoCampoCodigo = 0
    TamanhoCampoVlUnit = 0
    TamanhoFonte_ANTT = 10
    TamanhoFonte_infComplementares = 6
    Fonte = ftTimes
    EspessuraBorda = 2
    ExpandirDadosAdicionaisAuto = False
    MostrarSetup = False
    TributosPercentual = ptValorProdutos
    ImprimirDesconto = True
    ImprimirTributosItem = False
    Left = 376
    Top = 256
  end
end
