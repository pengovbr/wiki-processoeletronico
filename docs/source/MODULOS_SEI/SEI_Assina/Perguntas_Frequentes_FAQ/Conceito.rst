1.Conceitos
===========


1.1.	O que é o Módulo de Assinatura Eletrônica?
------------------------------------------------
  O módulo que possibilita os usuários internos e externos realizarem a assinatura avançada e qualificada em documentos internos e externos, inclusive por meio de bloco de assinatura.

  
1.2.	O que são assinaturas eletrônicas?
----------------------------------------

  As assinaturas eletrônicas são formas de autenticar e validar documentos e ações feitas em ambiente digital, garantindo a identidade de quem assinou. A Lei nº 14.063/2020 e o Decreto nº 10.543/2020 trazem três tipos de assinaturas eletrônicas:

  •	Assinatura eletrônica simples
  
  •	Assinatura eletrônica avançada
  
  •	Assinatura eletrônica qualificada


1.3.	O que é assinatura simples?
---------------------------------
  A assinatura que utiliza login/senha ou outros mecanismos básicos de autenticação. Esse tipo de assinatura está disponível nativamente no Sistema Eletrônico de Informações (SEI).

  
1.4.	1.4.	O que é assinatura simples revalidada pelo gov.br?
------------------------------------------------------------
  Ao logar utilizando gov.br, a assinatura simples revalidada pelo gov.br é exibida. Nesse tipo de assinatura, os dados do gov.br são recuperados para a criação da assinatura simples.

		**OBS1: A assinatura realizada dessa forma permanece sendo do tipo simples.**

1.5.	O que é assinatura avançada?
----------------------------------
  A assinatura que utiliza certificados não emitidos pela ICP-Brasil ou outro meio de comprovação da autoria e da integridade de documentos em forma eletrônica, desde que admitido pelas partes como válido ou aceito pela pessoa a quem for oposto o documento. É o caso da assinatura GOV.BR. As contas digitais de níveis prata e ouro poderão ser utilizadas para assinatura eletrônica avançada.
  
  Fonte: https://www.gov.br/governodigital/pt-br/identidade/assinatura-eletronica/saiba-mais-sobre-a-assinatura-eletronica

  
1.6.	O que é assinatura qualificada?
-------------------------------------
  A assinatura que utiliza certificado digital, nos termos do § 1º do art. 10 da Medida Provisória nº 2.200-2, de 24 de agosto de 2001.

  Fonte: https://www.gov.br/governodigital/pt-br/identidade/assinatura-eletronica/saiba-mais-sobre-a-assinatura-eletronica 


1.7.	O que é Assinatura Destacada (Desatachada)?
-------------------------------------------------
  A assinatura fica em um arquivo separado. Por exemplo: documento.pdf e documento.pdf.p7s.


1.8.	O que é Assinatura Atachada (Anexada)?
--------------------------------------------
  A assinatura e o documento assinado são um único arquivo.


1.9.	O que é o Carimbo de Tempo?
---------------------------------
  É um mecanismo que funciona como uma assinatura adicional, garantindo que o documento foi assinado em um momento específico. Ele assegura a validade do documento, mesmo após a expiração do certificado digital utilizado para realizar a sua assinatura.


1.10.	O que é Autoridade de Carimbo de Tempo?
---------------------------------------------
  Uma Autoridade Certificadora do Tempo (ACT) é uma entidade responsável por emitir Carimbos do Tempo. A AC-Raiz da Infraestrutura de Chaves Públicas Brasileira (ICP-Brasil) é a responsável pelo credenciamento das ACTs que desejam integrar a estrutura, com base em critérios estabelecidos nos documentos que regulamentam o assunto.

  Fonte: https://www.gov.br/iti/pt-br/assuntos/icp-brasil/autoridades-de-carimbo-do-tempo 


1.11.	O que é o AssinaGov?
--------------------------
  É o assinador de referência do Instituto Nacional de Tecnologia da Informação (ITI).


1.12.	O que é Integre-ICP?
--------------------------
  O Integre-ICP é utilizado para buscar quais certificados digitais estão vinculados ao CPF do usuário que está tentando realizar a assinatura


1.13.	O que é Cloud PSC?
------------------------
  O Cloud PSC é o mecanismo técnico que permite ao módulo de assinatura se integrar com os repositórios de certificados na nuvem para realizar a autenticação e a assinatura dos documentos.


1.14.	O que é a API Validar? 
----------------------------
  É um serviço do ITI utilizado pelo módulo para verificar a autenticidade e a validade das assinaturas presentes em um documento.


1.15.	O que é ICP-Brasil?
-------------------------
  A Infraestrutura de Chaves Públicas Brasileira (ICP-Brasil) é uma cadeia hierárquica de confiança que viabiliza a emissão de certificados digitais para a identificação virtual do cidadão.

  Fonte: https://www.gov.br/iti/pt-br/assuntos/icp-brasil/. 


1.16.	O que é Certificado A3 em Nuvem?
----------------------------------
  É o uso de aplicativo para autorizar assinaturas sem a necessidade de mídia física conectada ao computador.

  
1.17.	O que é certificado A1?
-----------------------------
  O Certificado A1 é um certificado em formato de arquivo (geralmente .pfx ou .p12) que fica armazenado no computador.


1.18.	O que é P7S?
------------------
  O arquivo .p7s é um arquivo separado que acompanha o documento original. Para validar, você precisa ter os dois. No Brasil, é muito comum ver isso em processos eletrônicos e notas fiscais.