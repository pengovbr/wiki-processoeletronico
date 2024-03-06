Ambientes de Homologação e de Produção
=======================================

O que são os Ambientes de Homologação e de Produção?
++++++++++++++++++++++++++++++++++++++++++++++++++++

No **Ambiente de Homologação**, é realizado o primeiro contato do órgão com a plataforma, por meio do qual são realizados alguns testes de funcionalidade com o propósito de garantir uma correta configuração da plataforma no processo de integração. Por sua vez, o **Ambiente de Produção** é o ambiente no qual os trâmites reais são realizados. 

Cada ambiente possui seu próprio certificado digital?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sim, os ambientes de homologação e produção trabalham de forma independente, de modo que **não é possível utilizar o certificado do ambiente de homologação no ambiente de produção** e vice-versa. 

.. important::

A utilização de um mesmo certificado digital em ambientes distintos é uma prática totalmente desaconselhada e pode resultar em complicações sistêmicas para o órgão. Dessa forma, recomenda-se não realizar o uso do mesmo certificado entre diferentes ambientes, evitando - assim - o surgimento de possíveis problemas operacionais resultantes da má utilização dos certificados digitais por parte do órgão. 

Como solicitar acesso ao Ambiente de Homologação do Portal de Administração?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Para acessar o Ambiente de Homologação da plataforma, basta solicitar o acesso pelo link `Solicitar Acesso ao Tramita GOV.BR <https://homolog.gestaopen.processoeletronico.gov.br/solicitarCadastroComite>`_ , na página principal do Portal de Administração. 

Quais são os Endereços dos Serviços utilizados na configuração em ambiente de homologação?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Os **endereços eletrônicos utilizados na configuração em ambiente de homologação** estão listados abaixo, correspondentes à versão V3. A partir de 2 de janeiro de 2024, `a versão V2 foi descontinuada <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/noticias/2023/migracao-urgente-para-a-versao-3-da-api-tramita-gov.br>`_.

.. list-table::
   :header-rows: 1
   :align: left
   
   - * SOAP
   - * API: https://homolog.api.processoeletronico.gov.br/interoperabilidade/soap/v3/ 
   - * Pendências: https://homolog.pendencias.processoeletronico.gov.br/ 

.. list-table::
   :header-rows: 1
   :align: left
   
   - * REST
   - * API: https://homolog.api.processoeletronico.gov.br/interoperabilidade/rest/v3/ 
   - * Pendências: https://homolog.api.processoeletronico.gov.br/interoperabilidade/rest/v3/tramites/pendentes 


Como acessar o ambiente de homologação destinado a testes de trâmite externo?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Pensando em uma melhor ambientação com a plataforma, o Tramita GOV.BR disponibiliza quatro ambientes de testes para que os órgãos possam verificar todas as funcionalidades de seus SPEs, quando integrados à plataforma.

É importante mencionar que os ambientes são exclusivamente desenvolvidos para a realização de testes, não estando aptos ou habilitados para qualquer outro tipo de finalidade processual. 

Na relação abaixo, estão dispostas informações a respeito de cada um dos ambientes de teste.

+---------+--------+--------+----------------------------------------------------------+--------------------------+-----------------------------------------------+--------------------------+----------------+
| Sistema | Versão | Módulo |         URL                                              | Repositório              | Unidade                                       | Usuário                  | Senha          |
+=========+========+========+==========================================================+==========================+===============================================+==========================+================+
|  SEI    | 4.0.12 | 3.5.0  |  https://sei.orgao1.tramita.processoeletronico.gov.br/   | Órgãos/ Entidades Legado | sei.orgao1.tramita.processoeletronico.gov.br  | usuariobasicoseiorgao101 | orgao1/orgao1  |                                                                                                        
+         +--------+--------+----------------------------------------------------------+                          +-----------------------------------------------+--------------------------+----------------+
|         | 4.0.11 | 3.5.0  |  https://sei.orgao2.tramita.processoeletronico.gov.br/   |                          | sei.orgao2.tramita.processoeletronico.gov.br  | usuariobasicoseiorgao201 | orgao2/orgao2  |
+         +--------+--------+----------------------------------------------------------+                          +-----------------------------------------------+--------------------------+----------------+
|         | 3.1.7  | 3.5.0  |  https://sei.orgao3.tramita.processoeletronico.gov.br/   |                          | sei.orgao3.tramita.processoeletronico.gov.br  | usuariobasicoseiorgao301 | orgao3/orgao3  |
+         +--------+--------+----------------------------------------------------------+                          +-----------------------------------------------+--------------------------+----------------+
|         | 4.0.3  | 3.5.0  |  https://sei.orgao4.tramita.processoeletronico.gov.br/   |                          | sei.orgao4.tramita.processoeletronico.gov.br  | usuariobasicoseiorgao401 | orgao4/orgao4  |
+---------+--------+--------+----------------------------------------------------------+--------------------------+-----------------------------------------------+--------------------------+----------------+

Quais os requisitos para o órgão concluir o processo de homologação?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

O órgão está qualificado a iniciar os testes em ambiente de produção somente após a conclusão bem-sucedida dos testes em ambiente de homologação. Para isso, é necessário que **alguns requisitos sejam cumpridos**. São eles:

   Envio de Processo com Sucesso (Status 6) - Órgão em Implantação como remetente; 

   Recebimento de Processo com Sucesso (Status 6) - Órgão em Implantação como destinatário; 

   Recusa de Recebimento de Processo (Status 9) - Órgão em Implantação como destinatário.

Cumpridas estas etapas, o órgão poderá solicitar acesso em ambiente de produção, por meio do `endereço eletrônico específico para cadastro <https://gestaopen.processoeletronico.gov.br/solicitarCadastroComite>`_.  

Assim como no ambiente de homologação, o cadastro do primeiro Gestor de Protocolo do órgão no `Portal de Administração <https://gestaopen.processoeletronico.gov.br/>`_ é realizado a partir da tela inicial do Portal, por meio do link `Solicitar Acesso ao Tramita GOV.BR <https://gestaopen.processoeletronico.gov.br/solicitarCadastroComite>`_. O usuário deverá cadastrar algumas informações pessoais e sobre o órgão que representa, além de enviar documentação comprobatória de identidade e de nomeação ou designação para atuação como Gestor de Protocolo, como uma Portaria de Nomeação, Ofício etc. **Caso não preencha todos os requisitos, a solicitação será recusada**.

O acesso ao ambiente de produção do Portal de Administração é automático?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Não, o cumprimento dos requisitos estabelecidos no ambiente de homologação se faz necessário para que **o acesso do órgão ao ambiente de produção possa ser solicitado**. Esta medida visa um melhor funcionamento da plataforma, garantido aos órgãos integrados uma experiência positiva e efetiva.  

Para solicitar acesso ao Ambiente de Produção, está disponível o link `Solicitar Acesso ao Tramita GOV.BR <https://gestaopen.processoeletronico.gov.br/solicitarCadastroComite>`_, na página principal do Portal de Administração.

Quais são os Endereços dos Serviços utilizados na configuração em ambiente de produção?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Os **endereços eletrônicos utilizados na configuração em ambiente de homologação** estão listados abaixo, correspondentes à versão V3. A partir de 2 de janeiro de 2024, `a versão V2 foi descontinuada <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/noticias/2023/migracao-urgente-para-a-versao-3-da-api-tramita-gov.br>`_.

.. list-table::
   :header-rows: 1
   :align: left
   
   - * SOAP
   - * API: https://api.processoeletronico.gov.br/interoperabilidade/soap/v3/ 
   - * Pendências: https://pendencias.processoeletronico.gov.br/ 

.. list-table::
   :header-rows: 1
   :align: left
   
   - * REST
   - * API: https://api.processoeletronico.gov.br/interoperabilidade/rest/v3/ 
   - * Pendências: https://api.processoeletronico.gov.br/interoperabilidade/rest/v3/tramites/pendentes 
