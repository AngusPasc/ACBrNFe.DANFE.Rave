ACBrNFe.DANFE.Rave
==================

- Componente Delphi/Lazarus para impressão da DANFE em RaveReports no projeto ACBr (http://sf.net/projects/acbr).

- Compatibilidade com o trunk2 do projeto ACBr.

- Compatível com Rave em arquivo e Rave CodeBase.

- Testes feitos com Delphi 7 e XE2.

**Instruções para compilar**
- Copiar a pasta "Fontes" deste projeto dentro da pasta "..\ACBr\Fontes\ACBrDFe\ACBrNFe\DANFE\NFe\" da pasta ACBr.
- Copiar a pasta "Pacotes" deste projeto dentro da pasta "..\ACBr\Pacotes\Delphi\ACBrDFe\ACBrNFe\DANFE\NFe\" da pasta ACBr.
- Incluir no library path do Delphi o path: "..\ACBr\Fontes\ACBrDFe\ACBrNFe\DANFE\NFe\Rave"
- Abrir um dos arquivos *.dpk (ACBr_NFeDanfeRV.dpk ou ACBr_NFeDanfeRVCodeBase.dpk) da pasta "..\ACBr\Pacotes\Delphi\ACBrDFe\ACBrNFe\DANFE\NFe\Rave".
- Compilar e instalar.

**Utilização**
- Duas formas de utilização são possíveis com o componente:
  - ACBrNFeDANFERaveCB (Rave Code Base, sem o uso do arquivo de relatório .rav)
  - ACBrNFeDANFERave (com o uso do arquivo de relatório .rav). 

**Exemplo**

Imprimir a DANFE:
```shell
ACBrNFe1.NotasFiscais.Clear;
ACBrNFe1.NotasFiscais.LoadFromFile("..\ArquivosXML\12345678901234567890123456789012345678901234-nfe.xml");
ACBrNFe1.NotasFiscais.Imprimir;
```

Gerar a DANFE em PDF:
```shell
ACBrNFe1.NotasFiscais.Clear;
ACBrNFe1.NotasFiscais.LoadFromFile("..\ArquivosXML\12345678901234567890123456789012345678901234-nfe.xml");
ACBrNFe1.NotasFiscais.ImprimirPDF;
```
