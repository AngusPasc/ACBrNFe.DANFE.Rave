object Form1: TForm1
  Left = 466
  Top = 169
  BorderStyle = bsSingle
  Caption = 'ACBrNFe - Impress'#227'o DANFE em RaveReport'
  ClientHeight = 324
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
    Left = 184
    Top = 259
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
    Left = 127
    Top = 272
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 52
    Top = 273
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
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    PosCanhoto = prCabecalho
    EspessuraBorda = 1
    TamanhoFonte_RazaoSocial = 12
    TamanhoFonte_ANTT = 10
    TributosPercentual = ptValorProdutos
    Left = 371
    Top = 266
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
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    PosCanhoto = prCabecalho
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
    Left = 422
    Top = 266
  end
end
