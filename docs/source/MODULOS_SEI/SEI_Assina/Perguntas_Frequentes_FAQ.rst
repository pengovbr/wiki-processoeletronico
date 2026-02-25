Perguntas Frequentes (FAQ)
==========================

1.	 CONCEITO
-------------

1.1.	O que é o Módulo SEI!Assina?
  É módulo que possibilita os usuários internos e externos realizarem a assinatura avançada e qualificada em documentos internos e externos, inclusive por meio de bloco de assinatura.

  
1.2.	O que são assinaturas eletrônicas?
  As assinaturas eletrônicas são formas de autenticar e validar documentos e ações feitas em ambiente digital, garantindo a identidade de quem assinou. A Lei nº 14.063/2020 e o Decreto nº 10.543/2020 trazem três tipos de assinaturas eletrônicas:

  •	Assinatura eletrônica simples
  
  •	Assinatura eletrônica avançada
  
  •	Assinatura eletrônica qualificada


1.3.	O que é assinatura simples?
  A assinatura que utiliza login/senha ou outros mecanismos básicos de autenticação. Esse tipo de assinatura está disponível nativamente no Sistema Eletrônico de Informações (SEI).

  
1.4.	O que é assinatura avançada?
  A assinatura que utiliza certificados não emitidos pela ICP-Brasil ou outro meio de comprovação da autoria e da integridade de documentos em forma eletrônica, desde que admitido pelas partes como válido ou aceito pela pessoa a quem for oposto o documento. É o caso da assinatura GOV.BR. As contas digitais de níveis prata e ouro poderão ser utilizadas para assinatura eletrônica avançada.
  
  Fonte: https://www.gov.br/governodigital/pt-br/identidade/assinatura-eletronica/saiba-mais-sobre-a-assinatura-eletronica

  
1.5.	O que é assinatura qualificada?
  A assinatura que utiliza certificado digital, nos termos do § 1º do art. 10 da Medida Provisória nº 2.200-2, de 24 de agosto de 2001.

  Fonte: https://www.gov.br/governodigital/pt-br/identidade/assinatura-eletronica/saiba-mais-sobre-a-assinatura-eletronica 


1.6.	O que é Assinatura Destacada (Desatachada)?
  A assinatura fica em um arquivo separado. Por exemplo: documento.pdf e documento.pdf.p7s.


1.7.	O que é Assinatura Atachada (Anexada)?
  A assinatura e o documento assinado são um único arquivo.


1.8.	O que é o Carimbo de Tempo? 
  É um mecanismo que funciona como uma assinatura adicional, garantindo que o documento foi assinado em um momento específico. Ele assegura a validade do documento, mesmo após a expiração do certificado digital utilizado para realizar a sua assinatura.


1.9.	O que é Autoridade de Carimbo de Tempo?
  Uma Autoridade Certificadora do Tempo (ACT) é uma entidade responsável por emitir Carimbos do Tempo. A AC-Raiz da Infraestrutura de Chaves Públicas Brasileira (ICP-Brasil) é a responsável pelo credenciamento das ACTs que desejam integrar a estrutura, com base em critérios estabelecidos nos documentos que regulamentam o assunto.

  Fonte: https://www.gov.br/iti/pt-br/assuntos/icp-brasil/autoridades-de-carimbo-do-tempo 


1.10.	O que é o AssinaGov? 
  É o assinador de referência do Instituto Nacional de Tecnologia da Informação (ITI).


1.11.	O que é Integre-ICP?
  O Integre-ICP é utilizado para buscar quais certificados digitais estão vinculados ao CPF do usuário que está tentando realizar a assinatura


1.12.	O que é Cloud PSC?
  O Cloud PSC é o mecanismo técnico que permite ao módulo de assinatura se integrar com os repositórios de certificados na nuvem para realizar a autenticação e a assinatura dos documentos.


1.13.	O que é a API Validar? 
  É um serviço do ITI utilizado pelo módulo para verificar a autenticidade e a validade das assinaturas presentes em um documento.


1.14.	O que é ICP-Brasil?
  A Infraestrutura de Chaves Públicas Brasileira (ICP-Brasil) é uma cadeia hierárquica de confiança que viabiliza a emissão de certificados digitais para a identificação virtual do cidadão.

  Fonte: https://www.gov.br/iti/pt-br/assuntos/icp-brasil/. 


1.15.	O que é Certificado em Nuvem?
  É o uso de aplicativo para autorizar assinaturas sem a necessidade de mídia física conectada ao computador.

  
1.16.	O que é certificado A1?
  O Certificado A1 é um certificado em formato de arquivo (geralmente .pfx ou .p12) que fica armazenado no computador.


1.17.	O que é P7S?
  O arquivo .p7s é um arquivo separado que acompanha o documento original. Para validar, você precisa ter os dois. No Brasil, é muito comum ver isso em processos eletrônicos e notas fiscais.


2.	 CREDENCIAIS E COMPATIBILIDADE
----------------------------------

2.1.	Quais credenciais são necessárias para utilizar o módulo?

O módulo depende de 3 credenciais principais, obtidas com dois órgãos diferentes:


+--------------------------------------------------------+-----------------------------------------------------------------------------------------+  
| Órgãos                                                 | Credenciais                                                                             |  
+========================================================+=========================================================================================+
| Secretaria de Governo Digital (SGD)                    | Credencial do Gov.br: Necessária para assinatura avançada via Gov.br.                   |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------+
| Instituto Nacional de Tecnologia da Informação (ITI)   | API Validar: Permite consultar e validar assinaturas dentro de PDFs                     |
|                                                        |                                                                                         | 
|                                                        | Assinador de Referência (AssinaGov): Utilizada para realizar assinatura qualificada.    |
+--------------------------------------------------------+-----------------------------------------------------------------------------------------+



===================================================== ======================================================================================
Órgãos                                                  Credenciais                                                                               
===================================================== ======================================================================================
Secretaria de Governo Digital (SGD)                     Credencial do Gov.br: Necessária para assinatura avançada via Gov.br
----------------------------------------------------- --------------------------------------------------------------------------------------
Instituto Nacional de Tecnologia da Informação (ITI)    API Validar: Permite consultar e validar assinaturas dentro de PDFs
                                                                                                                                                 
                                                        Assinador de Referência (AssinaGov): Utilizada para realizar assinatura qualificada
===================================================== ======================================================================================



2.2.	Onde ficam armazenadas as configurações das credenciais?
  As informações das credenciais são armazenadas na configuração do módulo. Para maiores informações a respeito, orientamos a leitura do Manual de Instalação do Módulo, o link de acesso para cada versão do módulo está disponível na tabela abaixo.  

  
+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------+  
| 1.3.0           | https://github.com/pengovbr/mod-sei-assinatura-eletronica/blob/release/1.3.0/docs/INSTALL.md#15-configurar-os-par%C3%A2metros-do-m%C3%B3dulo |
+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| 1.4.0           | https://github.com/pengovbr/mod-sei-assinatura-eletronica/blob/release/1.4.0/docs/INSTALL.md#15-configurar-os-par%C3%A2metros-do-m%C3%B3dulo |
+-----------------+----------------------------------------------------------------------------------------------------------------------------------------------+


   
2.3.	Como solicitar a credencial do GOV.BR?
  O passo a passo para solicitar a credencial do GOV.BR está disponível em:  https://manuais.processoeletronico.gov.br/pt-br/latest/MODULOS-SEI/Assinatura_Avancada_Processo_de_solicitacao_e_habilitacao.html. 


2.4.	Como solicitar a credencial do Validar?
  O passo a passo para solicitar a credencial do Validar está disponível em: XPTO.


2.5.	Como solicitar a credencial do AssinaGOV?
  O passo a passo para solicitar a credencial do AssinaGOV está disponível em: XPTO.


2.6.	O módulo é compatível com qual(is) versão(ões)?
  O módulo possui duas versões disponíveis para a comunidade:

+--------------------------+-------------------------+  
| Versão Módulo            | Compatibilidade (SEI)   |  
+==========================+=========================+
| 1.3.0                    | 5.0.3                   |
+--------------------------+-------------------------+  
| 1.4.0                    | 5.1.0                   |
+--------------------------+-------------------------+  


  
2.7.	É possível usar a assinatura avançada do core do SEI junto com o módulo?
  A orientação técnica é apenas utilizar as funcionalidades do Módulo SEI!Assina para evitar conflito com assinatura avançada disponível no Core do SEI. Ao utilizar o módulo, a recomendação é desabilitar a funcionalidade nativa do sistema.


2.8.	O módulo precisa do aplicativo Java do SEI para assinar?
  Não, com o módulo, a utilização desse aplicativo não é mais necessária, visto que o módulo possibilita a realização de assinatura qualificada por meio de certificado em nuvem e A1, sem o usuário instalar qualquer tipo de aplicativo em sua máquina.


2.9.	Quais são as funcionalidades exclusivas da versão 1.4.0?
    As seguintes funcionalidades estão apenas disponíveis na versão 1.4.0:

•	A possibilidade de incluir o arquivo p7s em documentos externos;

•	A inclusão de carimbo de tempo em assinaturas qualificadas;

•	A inclusão de documentos externos em bloco de assinatura;

•	A possibilidade de assinatura de documento externo por usuário externo.

3.	CERTIFICADO DIGITAL
-----------------------

3.1.	Quais sãos os certificados digitais aceitos para realizar a assinatura qualificada?
  O módulo apenas aceita certificados emitidos pela ICP-Brasil. Alguns exemplos:
  

Certificado em nuvem (Serpro ID, Certisign, Valid, Soluti, etc)

Certificado A1 (arquivo PFX/P12).
  
  **OBS1: O módulo não aceita certificados A3.**

  
3.2.	O módulo suporta certificados A1 e A3?
  As versões lançadas (1.3.0 e 1.4.0) possuem apenas compatibilidade com o certificado A1.

  
3.3.	Preciso configurar algo para usar um certificado A1?
  Não. Basta importar o arquivo PFX/P12 no momento da assinatura e digitar a sua senha.

  
3.4.	O módulo reconhece assinaturas realizadas com certificados emitidos por outros países do Mercosul?
  Sim.  A API Validar reconhece assinaturas padrão Mercosul e exibe selos especiais.


4.	ASSINAR E VALIDAR
---------------------


4.1.	Onde a assinatura é exibida no documento?


+-------------------------------------+-----------------------------------------------------------------------------------+  
| Documentos internos (HTML):         | Sempre no rodapé (Funcionamento atual do SEI)                                     |
+-------------------------------------+-----------------------------------------------------------------------------------+
| Documentos externos (PDF):          | **Anexada**                                                                       |
|                                     |                                                                                   |
|                                     | Tarja inserida no PDF;                                                            |
|                                     |                                                                                   |
|                                     | O assinante consegue escolher em qual lugar colocar a sua assinatura.             |
|                                     |                                                                                   |
|                                     |                                                                                   |
|                                     |                                                                                   |
|                                     | **Destacada**                                                                     |
|                                     |                                                                                   |
|                                     | A assinatura vai em arquivo separado (p7s).                                       |
+-------------------------------------+-----------------------------------------------------------------------------------+



  
4.2.	O módulo possibilita a assinatura de documento externo?
  Sim, o módulo permite que o documento externo seja assinado pelos usuários.

    **OBS1: A assinatura de documento externo está apenas disponível a partir da versão 1.4.0.**


4.3.	É possível assinar vários documentos com assinatura avançada ou qualificada?
  Sim. O módulo permite realizar a assinatura de diversos documentos por meio do bloco de assinatura. Essa funcionalidade permite tanto assinatura avançada quanto qualificada.

  
4.4.	É possível assinar tantos documentos internos quanto externos no mesmo bloco de assinatura?
  Não, a própria aplicação impede que seja colocado em um mesmo bloco documentos internos e externos. Logo, em um bloco de assinatura é apenas permitido um tipo de documento, interno ou externo.
    
    **OBS1: A assinatura de documento externo está apenas disponível a partir da versão 1.4.0.**

  
4.5.	Para quais tipos de documentos é permitida a assinatura destacada?
  A assinatura destacada é apenas permitida para documentos externos. O usuário consegue realizar o upload do arquivo p7s para a aplicação e realizar a validação da assinatura.
    
    **OBS1: O upload de arquivo p7s está apenas disponível a partir da versão 1.4.0.**

  
4.6.	Qualquer usuário consegue realizar assinatura por meio do GOV.BR?
  Não, apenas usuários com contas no nível prata ou ouro conseguem realizar a assinatura de documentos por meio do GOV.BR. Caso o usuário não possua esse nível de conta, ele precisa subir o seu nível diretamente no site do GOV.BR, o módulo não gerencia os níveis de conta, apenas recupera as informações.

  
4.7.	É possível assinar documentos externos por meio de bloco de assinatura?
  O módulo possibilita que documentos externos sejam assinados por meio de bloco de assinatura.

    **OBS1: A assinatura de documento externo está apenas disponível a partir da versão 1.4.0.**

    **OBS2: É necessário entrar no bloco é realizar a assinatura de cada documento. Atualmente, não é possível assinar todos os documentos em lote.**

  
4.8.	É possível assinar qualquer tipo de documento externo?
  Não, o módulo apenas permite a assinatura de documentos externos no formato Portable Document File (PDF).

    **OBS1: A assinatura de documento externo está apenas disponível a partir da versão 1.4.0.**

  
5.	CARIMBO DE TEMPO
--------------------

5.1.	Quais são os benefícios de utilizar carimbo de tempo?
  O carimbo de tempo garante data e hora certificadas da assinatura e validade jurídica mesmo após expiração do certificado utilizado para assinar os documentos.

  
5.2.	Como habilitar o carimbo de tempo?
  Citar o manual correto.

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**

  
5.3.	O carimbo de tempo está habilitado para qual tipo de assinatura?
  Atualmente, o GOV.BR, assinatura avançada, não possibilita realizar a assinatura utilizando um carimbo do tempo. Então, apenas para assinatura qualificada é possível utilizar esse recurso.

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**

  
5.4.	O carimbo de tempo está habilitado para qual tipo de documento?
  Após a configuração dos dados da Autoridade de Carimbo de Tempo, a utilização é habilitada tanto para documento interno quanto externo.

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**


5.5.	Onde eu consigo as credenciais da autoridade de carimbo de tempo?
  Os dados para configurar a autoridade certificadora de carimbo de tempo são obtidas, após a contratação do serviço pelo órgão/entidade. 

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**


5.6.	A utilização do carimbo de tempo é obrigatória?
  A configuração do Carimbo de Tempo é desejável, mas não é obrigatória. Portanto, a ausência dessa contratação não impede o órgão/entidade de começar a utilizar o módulo em ambiente de produção.

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**


6.	USUÁRIO EXTERNO
-------------------

6.1.	O usuário externo pode assinar documentos internos utilizando assinatura qualificada e avançada?
  A partir da versão 1.3.0, o usuário externo pode assinar documentos internos utilizando assinatura avançada (GOV.BR) e qualificada (SERPROID e Token A1).

  
6.2.	O usuário externo pode assinar documentos externos utilizando assinatura qualificada e avançada?
  A partir da versão 1.4.0, o usuário externo pode assinar documentos externos utilizando assinatura avançada (GOV.BR) e qualificada (SERPROID e Token A1).


6.3.	O usuário externo pode assinar documentos com carimbo de tempo?
  A utilização do carimbo de tempo pelos usuários externos é habilitada pelos Administradores do SEI.

    **OBS: As funcionalidades relacionadas ao Carimbo de Tempo estão disponíveis a partir da versão 1.4.0.**






