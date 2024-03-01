Tramita.GOV.BR
==============

O **Tramita.GOV.BR** (anteriormente, Barramento de Serviços do Tramita GOV.BR) destina-se à tramitação de processos administrativos eletrônicos e documentos avulsos, em meio eletrônico, entre os diversos Sistemas de Processo Administrativo Eletrônico (SPE) existentes, com incrementos de segurança, integridade, agilidade e redução de custos no serviço público.

A adoção da plataforma se traduz em um significativo impacto em termos de agilidade e capilaridade da Administração Pública,  visto que o Tramita.GOV.BR possibilita a interoperabilidade entre os mais diversos sistemas utilizados pelos órgãos e entidades da Administração Pública.

Maiores informações sobre o **Tramita.GOV.BR** podem ser consultadas no `Portal do Tramita GOV.BR <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/conteudo/tramita.gov.br>`_


Documentação de Apoio
+++++++++++++++++++++
 
- `FAQ <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/FAQ%20do%20tramita-gov-.br/tramita-gov.br>`_

**Manuais**

- `Manual Operacional do Tramita.GOV.BR <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/arquivos/tramita-gov-br-documentos/Manual_Tecnico_Operacional_do_Tramita.GOV.BR.pdf>`_
-  `Manual de Instalação do Módulo Tramita.GOV.BR <https://github.com/spbgovbr/mod-sei-pen/blob/master/docs/INSTALL.md>`_
-  `Manual de Utilização da API - Parte 1 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento-zip.001>`_
-  `Manual de Utilização da API - Parte 2 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.002>`_
-  `Manual de Utilização da API - Parte 3 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.003>`_
-  `Manual de Utilização da API - Parte 4 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.004>`_
-  `Manual de Utilização da API - Parte 5 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/copy_of_kit_desenvolvimento.zip.005>`_
-  `Manual de Utilização da API - Parte 6 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.006>`_
-  `Manual de Utilização da API - Parte 7 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.007>`_
-  `Tabela de Espécies Documentais <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/copy_of_especiesdocumentais.xls>`_
-  `Swagger - Homologação <https://homolog.api.processoeletronico.gov.br/swagger/swagger-ui/>`_
-  `Swagger - Produção <https://api.conectagov.processoeletronico.gov.br/swagger/swagger-ui/>`_

**Vídeos**

-  `Integração do SEI com o Tramita.GOV.BR - Parte 1 <https://drive.google.com/file/d/1vkwGTxbiSPZ2w-AoACg2Ab2YBZnVr9xw/view?usp=sharing>`_
-  `Integração do SEI com o Tramita.GOV.BR - Parte 2 <https://drive.google.com/file/d/1Yb9ughH4wNy34zKGUuZNBHaSUlWG5W4e/view?usp=sharing>`_
-  `Vídeo expositivo sobre o projeto Barramento (Antigo nome do TRAMITA.GOV.BR) <https://www.youtube.com/watch?v=eXVAerj6LHc&t=754s>`_

**Script SQL**

- Para descobrir unidades destino dos tramites

::
  
  SELECT 
  id_tramite,dth_registro,aa.valor as destino FROM sei.md_pen_tramite tra
  inner join atributo_andamento aa on aa.id_origem=tra.id_estrutura_destino

 
Treinamentos/Apresentações
++++++++++++++++++++++++++ 

+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
|Realizado em |    Responsável    | Assuntos Tratados    |                Link                                                                              |
+=============+===================+======================+==================================================================================================+
| 05/04/2023  |- Vinícius Mendonça| - Conceito           |                                                                                                  |
|             |                   | - Histórico          | `Treinamento Parte 1 <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_  | 
|             |                   | - Status de trâmites |                                                                                                  |
|             |                   |                      |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
| 12/04/2023  |- Vinícius Mendonça| - Módulo             |                                                                                                  |
|             |- Guilherme Cantoni| - API                | `Treinamento Parte 2 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_  | 
|             |                   | - Portal             |                                                                                                  |
|             |                   | - Simulação          |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
| 19/04/2023  |- Vinícius Mendonça|- Portal Administração|                                                                                                  |
|             |                   |- Análise de Cenários | `Treinamento Parte 3 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_  | 
|             |                   |                      |                                                                                                  |
|             |                   |                      |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+

 
Scripts de Atendimento
++++++++++++++++++++++

Processo recusado por erro "Número do Processo NUP já se encontra cadastrado"  
-----------------------------------------------------------------------------
  

Situação  
~~~~~~~~~

Problema identificado em órgão que estão implementando integração com o Tramita.gov.br. No caso em questão, problema identificado inicialmente ANEEL por falta de envio de NRE do trâmite original. 


Quando Ocorre
~~~~~~~~~~~~~~

(Descrição do passo a passo e condições que o usuário percorreu para chegar na situação) 


Solução Sugerida  
~~~~~~~~~~~~~~~~

O problema de recusa de processo devido à existência de um outro processo contendo o mesmo NUP normalmente ocorre em novas integrações devido a falta de envio do Número de Registro Eletrônico - NRE no cabeçalho da requisição de trâmite do processo.  

Este número é gerado automaticamente pelo Tramita.gov.br no momento que é realizado o primeiro trâmite para determinado processo. Este número deve ser armazenado, tanto pelo sistema de orientem como o de destino, para que o mesmo possa ser rastreado pelo Tramita.gov.br e demais sistemas que irão receber o trâmite de processos. 

Considerando a API REST, esta informação deverá ser informada na seção cabeçalho nos metadados do processo, como exemplificado abaixo:  

.. figure:: _static/images/imagem_api_rest.png


O detalhamento do modelo de dados do cabeçalho está descrita na documentação dos serviços e pode ser acessada no `link <https://homolog.api.processoeletronico.gov.br/swagger/swagger-ui/#/tramite-service-v-3>`_ .


.. figure:: _static/images/imagem_detalhamento_modelo_dados.png


Conforme comentado, este número será gerado automaticamente no primeiro trâmite de determinado processo e é retornado como resposta ao serviço POST: /tramite/processo conforme apresentado abaixo:

.. figure:: _static/images/imagem_teste_NRE.png


O NRE deverá ser reenviado em todos os novos trâmites deste processo, indicando ao sistema destinatário que não se trata de um novo processo, mas sim, a devolução de um processo existente.

Para maiores informações sobre o modelo de dados a ser utilizado nos serviços do Tramita.gov.br, acesso o `link <https://homolog.api.processoeletronico.gov.br/swagger/swagger-ui/#/tramite-service-v-3>`_ .


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.

 
Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~~

API REST; NRE; Número de Registro Eletrônico; recusa de processo; TRAMITA.GOV.BR.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 

 
 
Processos sendo recusados por motivo 99 - Nenhum assunto foi informado
----------------------------------------------------------------------

Situação  
~~~~~~~~

Processos sendo recusados pelo destinatário com o motivo 99 - Nenhum assunto informado para o processo.
  
.. figure:: _static/images/Nenhum_assunto_informado_no_processo.png


Quando Ocorre
~~~~~~~~~~~~~

Este caso pode ocorrer da seguinte forma:
 
O sistema REMETENTE utilizar um Tipo de Processo específico dele, por exemplo 'Ofício Especial Xyz' que não existe nos Tipos de Processo do Destinatário, neste caso o SEI/Super de Destino irá tentar utilizar o 'Tipo de Processo Externo' indicado na tela de Parâmetros de Configuração do Tramita GOV.BR:
 

.. figure:: _static/images/tela_parametros_configuracao.png


Como no exemplo acima, caso o Tipo de Processo 'Acesso a informação...' não possua uma Sugestão de Assuntos associada como no exemplo abaixo:
  
.. figure:: _static/images/Tela_alterar_tipo_processo.png

Ao tentar receber um processo externo e utilizar este tipo externo configurado, a recusa por motivo 99 - 'Nenhum assunto informado para o processo' irá ocorrer.


Solução Sugerida  
~~~~~~~~~~~~~~~~

Alterar no cadastro do 'Tipo de Processo' que foi utilizado como o padrão na tela de Parâmetros de Configuração do módulo Tramita GOV.BR do DESTINATÁRIO, associando uma 'Sugestão de Assuntos' para que seja usada nestes casos de recebimento de tipo de processo diferentes dos existentes no destinatário conforme o exemplo abaixo:
 
.. figure:: _static/images/Tela_alterar_tipo_processo_solucao.png

Após este ajuste solicitar ao REMETENTE que efetue nova tentativa de tramitação.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; motivo 99; Nenhum assunto informado.


Referências  
~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Processo recusado devido a existência de documento em formato X não permitido
------------------------------------------------------------------------------

Situação  
~~~~~~~~

Processo recusado devido a existência de documento em formato X não permitido.

Quando Ocorre
~~~~~~~~~~~~~

Descrição informada pelo usuário: Os seguintes processos foram recusados pelo órgão “XXX” pelo seguinte motivo: Processo recusado devido a existência de documento em formato “XYZ” não permitido pelo sistema.


Solução Sugerida  
~~~~~~~~~~~~~~~~

O problema relatado consiste no conflito de regras de configuração entre os sistemas de processo eletrônico das instituições de origem e de destino do trâmite. Este conflito leva à recusa pelo sistema de destino, o que faz com que o Tramita.gov.br apenas informe a recusa o trâmite, reportando o motivo para o órgão de origem.
 
Não se trata de um erro, mas sim de um conflito de regras de uso dos sistemas nos órgãos. Neste caso, o gestor do sistema do órgão de origem deve buscar fazer contato com o gestor do sistema de destino, para verificar a possibilidade de incluir na lista de formatos de arquivos permitidos no sistema o formato que desencadeou a mensagem de recusa. 
As possíveis soluções são:

1) A liberação, no sistema de destino, do formato de documento que desencadeou a recusa; ou 
2) A substituição, no sistema de origem, do arquivo no formato recusado por outro arquivo, de idêntico teor, mas salvo em formato aceito pelo órgão de destino.
Alternativamente, não sendo possível efetuar as alterações acima citadas, deve ser utilizado mecanismo alternativo de remessa do processo recusado.

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; documento; formato não permitido.


Referências  
~~~~~~~~~~~


Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


ERRO DE PROCESSOS TRAVADOS NO STATUS 4- Arquivos digitais recebidos pelo destinatário NO PAINEL DO TRAMITA
----------------------------------------------------------------------------------------------------------

Situação  
~~~~~~~~


ERRO DE PROCESSOS TRAVADOS NO STATUS 4- Arquivos digitais recebidos pelo destinatário NO PAINEL DO TRAMITA.


Quando Ocorre
~~~~~~~~~~~~~


O processo aparece no portal do Tramita travado indefinidamente com o status “4 - Arquivos digitais recebidos pelo destinatário”, porém, no SEI de origem, ainda continua bloqueado, informando estar “em Tramitação externa”.

A causa mais provável para estes casos é que os componentes digitais deste processo não estão mais disponíveis no disco temporário do Tramita.

O Tramita possui rotinas de expurgo destes arquivos que ficam temporariamente no disco até que o destinatário requisite e baixe eles para o destino final do trâmite. 

- Remetente envia processo
- Remetente envia componentes (pdf e outros documento)
- Tramita recebe metadados
- Tramita recebe e salva os componentes no disco temporariamente
- Destinatário pede ao tramita os metadados
- Destinatário pede ao tramita os documentos (o erro pode ocorrer neste ponto)

Solução Sugerida  
~~~~~~~~~~~~~~~~


Uma vez que o Processo se encontra travado por muito tempo em status 4 conforme o exemplo abaixo:

Como cancelado no Portal, mas não foi desbloqueado automaticamente, o usuário no órgão remetente pode clicar no botão “Cancelar Trâmite Externo” (vide captura abaixo). Isso forçará o sistema no órgão remetente a consultar novamente o status do trâmite, o que resultará no desbloqueio do processo.
Reparem que o botão de ‘Cancelar’ pode ser acionado por usuário gestor do órgão com acesso ao Painel do Tramita.

.. figure:: _static/images/tela_ultimos_tramites.png

Investigação interna de causa raiz:

É possível tentar visualizar a causa raiz efetuando consulta pelo IDT no registro de `logs do tramita <https://logs.processoeletronico.gov.br>`_ , menu Discover e busca pelo IDT, como no exemplo abaixo:

message:

[2m2023-04-13 13:03:20.359[0;39m [32m INFO[0;39m [35m10[0;39m [2m---[0;39m [2m[io-8081-exec-10][0;39m [36mb.g.m.p.b.a.s.w.v.e.TramiteEndpointV3 [0;39m [2m:[0;39m sistema : Fundação Nacional do Índio recusarTramite: parametros = RecusaDeTramite [idt=728778, justificativa=Descrição: SoapFault exception: [SOAP-ENV:Server] Arquivo bináriocom hash, \'OWwNy3nSII2gJqpBX8vRAhuk6VFypJgm1ghZG/qWMHU=\', não está mais disponí­vel, por favor contacte o sistema remetente. in /opt/sei/web/modulos/pen/rn/ProcessoEletronicoRN.php:1215 Stack trace: #0 /opt/sei/web/modulos/pen/rn/ProcessoEletronicoRN.php(1215): SoapClient->__call(\'receberComponen...\', Array) #1

Isto pode ocorrer por exemplo por conta da rotina de expurgo do tramita, o destinatário demorou muitos dias para tentar receber o tramite e neste momento o tramita já havia removido os componentes digitais que ficam temporariamente armazenados no tramita.


O cancelamento fica disponível tanto via painel do Tramita, quanto no Super/SEI do sistema Remetente.


.. figure:: _static/images/Tela_processo_botao_pen.png


.. admonition:: Importante 

   Se for cancelado via Painel do Tramita, é necessário clicar no ‘Cancelar tramite’ também no SEI/Super remetente pra liberar novamente uma nova tentativa de tramitação, portanto a melhor sugestão é sugerir que o remetente faça o cancelamento via SEI/Super e faça uma nova tentativa de tramite de algum destes processos que esteja nesta condição para verificar se o procedimento é suficiente para a solução do problema, não sendo suficiente nova investigação de logs do tramita se fará necessária.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~


*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~


Tramita; STATUS 4; bloqueado; “em Tramitação externa”.


Referências  
~~~~~~~~~~~


Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


ERRO DE STATUS “CANCELADO” NO ENVIO DE PROCESSO
-----------------------------------------------

Situação  
~~~~~~~~


ERRO DE STATUS “CANCELADO” NO ENVIO DE PROCESSO


Quando Ocorre
~~~~~~~~~~~~~~


O processo aparece no portal do Tramita com o status “cancelado”, porém, no SEI de origem, ainda continua bloqueado, informando estar “em Tramitação externa”. 


Solução Sugerida
~~~~~~~~~~~~~~~~

Uma vez que o Processo se encontra como cancelado no Portal, mas não foi desbloqueado automaticamente, o usuário no órgão remetente pode clicar no botão “Cancelar Trâmite Externo” (vide captura abaixo). Isso forçará o sistema no órgão remetente a consultar novamente o status do trâmite, o que resultará no desbloqueio do processo.

 
.. figure:: _static/images/Tela_processo_botao_pen.png


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~~

Tramita; Status Cancelado.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde
-----------------------------------------------------------------------------------------------

Situação  
~~~~~~~~

Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde


Quando Ocorre
~~~~~~~~~~~~~~

Quando um usuário tenta remeter um processo pelo Tramita.GOV.BR, o sistema não permite o trâmite e exibe a mensagem: “Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde.”

Esta falha ocorre quando o módulo não consegue estabelecer conexão com os serviços do Tramita.gov.br e pode se dar pelos seguintes motivos:

1) O certificado digital utilizado para autenticação nos serviços do Tramita.GOV.BR encontra-se inválido;
2) Os servidores de aplicação do SEI não confiam no Certificado Digital utilizado na criptografia do protocolo HTTPS do Tramita.GOV.BR; 
3) As regras de firewall impedem o acesso do SEI aos serviços do Tramita.GOV.BR; ou
4) Está ocorrendo uma indisponibilidade momentânea da Infraestrutura do Tramita.GOV.BR.


Solução Sugerida
~~~~~~~~~~~~~~~~

1. O certificado digital utilizado para autenticação nos serviços do Tramita.GOV.BR encontra-se inválido:

Neste caso, o gestor de protocolo do órgão deverá acessar o Portal de Administração do Tramita.GOV.BR e gerar um novo certificado digital para o sistema.

- `Homologação <https://homolog.gestaopen.processoeletronico.gov.br>`_

- `Produção <https://gestaopen.processoeletronico.gov.br>`_


Maiores informações acerca deste procedimento podem ser encontradas no `FAQ do Tramita.GOV.BR <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/FAQ%20do%20tramita-gov-.br/tramita-gov.br>`_


2. Os servidores de aplicação do SEI não confiam no Certificado Digital utilizado na criptografia do protocolo HTTPS do Tramita.GOV.BR: 

A partir da versão 3.2.2 do módulo de integração do SEI com o Tramita.GOV.BR (mod-sei-pen), o módulo passou a forçar a validação da confiabilidade do certificado digital utilizado pela API do Tramita.GOV.BR. Desta forma, caso o servidor do SEI não confie no certificado utilizado pelo Tramita.GOV.BR (Let's Encrypt), irá ser apresentado o erro em questão. 

Para resolver o problema, a equipe de operações deverá atualizar os servidores do SEI para confiar nos certificados Let's Encrypt utilizados pela API de serviços. 

Os procedimentos para atualização dependem da distribuição do Linux que está sendo utilizada. Para maiores informações, acesse a documentação da distribuição utilizada.

Exemplo Ubuntu:

# sudo apt-get update
# apt-get install ca-certificates
# update-ca-certificates

Maiores informações sobre atualização da confiabilidade dos certificados podem ser encontradas no `link <https://letsencrypt.org/certificates/>`_

Outras informações sobre a expiração dos certificados Let's Encrypt podem ser vistas no `link <https://letsencrypt.org/docs/dst-root-ca-x3-expiration-september-2021/>`_


3. As regras de firewall impedem o acesso do SEI aos serviços do Tramita.GOV.BR:

Neste caso, a equipe de infraestrutura da instituição deverá ser consultada para revisar as regras de firewall e identificar se as requisições enviadas para os endereços abaixo estão sendo bloqueados:

- `Homologação <https://homolog.api.processoeletronico.gov.br/interoperabilidade/soap/v3/>`_

- `Produção <https://api.conectagov.processoeletronico.gov.br/interoperabilidade/soap/v3/>`_


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; falha de comunicação.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Acesso negado a este recurso nesta unidade
-------------------------------------------


Situação  
~~~~~~~~

Acesso negado a este recurso nesta unidade


Quando Ocorre
~~~~~~~~~~~~~~

Quando um usuário do SEI tenta realizar uma determinada operação, ele recebe a seguinte mensagem na tela: “Acesso negado a este recurso nesta unidade (exemplo_recurso / SIGLA-DA-UNIDADE).”


Solução Sugerida
~~~~~~~~~~~~~~~~

Normalmente, o erro "Acesso negado a este recurso nesta unidade" ocorre quando determinada funcionalidade acessada não está liberada para acesso devido a configuração do Perfil do Usuário.
Para solucionar o problema, os seguintes passos deverão ser realizados:

1) Identificar qual os Perfis utilizados pelo usuário que relatou o problema. Isto pode ser visto através de uma consulta no SIP (Menu: Permissão > Administradas).

2) O Administrador do sistema deverá acessar o SIP (Menu: Perfil > Montar) e adicionar o recurso mencionado no erro ao perfil vinculado ao usuário (ex.: Básico, Colaborador, Administrador etc.).

Para mais detalhes sobre a gestão de perfis e recursos, verifique o `Módulo 3 - Unidade 3 do curso SEI!Administrar <https://repositorio.enap.gov.br/bitstream/1/4990/3/M%C3%B3dulo%203%20-%20Controle%20de%20Acesso%20.pdf#page=14>`_


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; acesso negado.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Desbloquear Processo
--------------------

Situação  
~~~~~~~~

Processo Bloqueado.

Quando Ocorre
~~~~~~~~~~~~~~

O processo está bloqueado pois foi recebido com sucesso em um sistema devidamente habilitada no barramento de serviços, através de um certificado digital único.
Por este motivo, não existe uma funcionalidade disponível no sistema rementente, pois o desbloqueio do processo quebraria uma regra estabelecida para o projeto.


Solução Sugerida
~~~~~~~~~~~~~~~~

Considerando a situação específica de recebimento indevido precisamos de uma alteração manual no BD para desbloquear o processo e permitir o reenvio para o XXXXX. Dito isto, peço que entre em contato com o equipe de BD responsável pelo sistema no XXXX e solicite que alterem a coluna sta_estado para o valor 0 no processo com problema. 
 
Segue exemplo de sql para execução:
 
update sei.protocolo 
set sta_estado='0' 
where protocolo_formatado='{Informe o Protocolo Aqui}' and sta_estado='4';
 
Lembrando que deve ser aplicado o filtro na coluna 'protocolo_formatado' pelo numero do processo.
 
Conforme as orientações de manutenções de BD, esta intervenção somente deve ser feita após a realização de um backup do BD. E de preferência em um horário fora do comercial.
 
Os valores de sta_estado são:

0 = Normal
1 = Processo Sobrestado
2 = Documento Cancelado
3 = Processo Anexado
4 = Processo Bloqueado


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; Bloqueado; Desbloqueado.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Erros de hash e de ordem de documentos
---------------------------------------

Situação  
~~~~~~~~~

Erros de hash e de ordem de documentos.


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Inicialmente solicitar que executem a query abaixo para descobrir se a ordem dos documentos do processo estão certas no órgão:
 
:: 
  
  SELECT

  cd.protocolo as 'numero processo',
  cd.ordem_documento as 'ordem dos documentos',
  p.protocolo_formatado as 'protocolo do documento',
  cd.nome_especie_produtor as 'tipo de documento',
  cd.id_tramite as 'ID do tramite',
  cd.numero_registro as 'NRE'
 
  FROM 

  sei.md_pen_componente_digital cd
  inner join md_pen_processo_eletronico pe on cd.numero_registro=pe.numero_registro
  inner join documento d on d.id_documento=cd.id_documento
  inner join protocolo p on p.id_protocolo=d.id_documento
  inner join md_pen_tramite t on pe.numero_registro=t.numero_registro and cd.id_tramite=t.id_tramite
  where t.id_tramite= (select MAX(t1.id_tramite) from md_pen_tramite t1
              where t1.numero_registro=pe.numero_registro
              and t1.sta_tipo_tramite="R" )
  and cd.protocolo in ( ' XXXXXXXXXXX ')
  order by cd.protocolo , cd.ordem_documento

 
Caso a ordem de documentos esteja errada, alterar na árvore os documentos e tentar novamente.
 
Se mesmo assim o processo está com problemas no envio, inicialmente solicitar que o órgão exporte em ZIP o conteúdo do processo. Paralelamente, solicite que o órgão que enviou a última vez exporte o mesmo processo em ZIP.
Calcule o hash dos documentos que está com problema com o comando:
 
cat arquivo_pequeno.txt | openssl dgst -binary -sha256 | base64
 
Para calcular hash de todos na pasta criar um arquivo calculaHash.sh:

for f in * do echo "Processing $f" cat $f | openssl dgst -binary -sha256 | base64 echo "" done
 
E rodar com 'bash calculaHash.sh'. Comparar com a listagem no painel do Tramita GOV.BR para verificar ordens e erros.
 
Caso o hash não esteja igual, abra em um editor de texto e procure a diferença:
 
vimdiff ARQ1 ARQ2
 
**Erro conhecido:** se o usuário alterar o tipo de documento no menu de administração do SEI ('Aviso' para 'Aviso ME' por exemplo), mesmo já tendo assinado o documento o hash será calculado novamente. 

**Solução:** Assim, paleativamente estamos solicitando que o usuário altere o Tipo para o valor anterior (no exemplo seria 'Aviso') e tramite. Após o tramite volte para o valor que estava configurado antes da intervenção('Aviso ME').
 
**Erro conhecido:** Em versões antigas do módulo, ao executar a query acima, a coluna ordem podia conter inteiros diferentes de '1', nesse caso deveríamos efetuar a alteração para '1' e testar novamente

.. figure:: _static/images/imagem_alteracao_ordem.png

**Erro conhecido:** Caso o erro seja "espécie não confere" ou "espécie não encontrada", isso pode ocorrer em versões anteriores à 2.1.0 do módulo. 

**Soluação:** Assim, solicitar que atualizem a versão para a mais atual.
 
**Erro conhecido:** Caso o processo tenha sido tramitado pelo barramento, mas não recebido pelo destino (ex: o IDT ficou com status 9), não teremos como comparar os arquivos entre os órgãos. 

**Solução:** Nesse caso, caso o hash dos documentos não forem iguais aos que estão no BD do barramento a única solução é duplicar o processo no usuário e tramitar novamente pelo barramento.
 
**Erro conhecido:** Caso o usuário tenha desanexado um processo que recebeu pelo barramento, isso tem que ser refeito. A ideia é o barramento barrar esse trâmite mesmo, pois seria uma alteração do processo. 

**Solução:** Assim solicite que o órgão anexe novamente o processo e coloque após o processo desanexado anteriormente.


.. figure:: _static/images/imagem_processo_desanexado.png


Caso o órgão tenha dado "vida independente" ao processo após essa desanexação (ex da foto 95190.000148/2021-01), o órgão deverá mover todos os documentos desse processo e deixar apenas os originais do barramento antes de anexar novamente.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; hash; ordem; documento.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Mudar Parâmetros de Memória
----------------------------

Situação  
~~~~~~~~

Mudar Parâmetros de Memoria


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Isso já foi implementado na versão 4.0. Serão 3 níveis para configurar tanto o limite de memória quanto o tempo máximo de execução. Cada nível contém um conjunto de operações específico que são descritos no documento de instalação (ex.: nível 1 = operações em geral,  nível 2 = geração de PDF, nível 3 = web services).
 
Na versão 3.1 foram colocados limites específicos em vários pontos usando ini_set para memory_limit. Só mudando os valores nestas chamadas para conseguir personalizar. Se tem algum ponto que apresenta problema frequente podemos mudar o valor padrão na próxima atualização da 3.1.x.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; Parâmetros de Memória.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Não execução do agendamento do SEI via crontab
----------------------------------------------

Situação  
~~~~~~~~~

Não execução do agendamento do SEI via crontab


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Script para testar com usuário casos de não execução do agendamento do SEI via crontab.(Pode ser enviado para execução direta deles)

* Caso usem centOS (versão que ocorreu esse erro em 2 orgãos foi a centos-release-7-4.1708.el7.centos.x86_64), na crontab tirar o root do começo da instrução ****  root.

* Caso a máquina seja de desenvolvimento e fruto de clone da máquina de producao, avaliar se a configuração está correta no ConfiguracaoSEI.php(endereços de certificados, URL de serviços, etc).

* Caso sua instalação do PHP possua mais de 1 php.ini (por exemplo em distribuições DEBIAN, ou em instalações onde o php.ini não está em /etc/php.ini), favor atualizar módulo do Tramita GOV.BR para versão superior a 2.1.3.

* Caso o servidor do SEI utilize um proxy, liberar o acesso direto à internet do mesmo.

* No front-end do SEI acessar Infra>Agendameento e verificar se as configurações do Tramita GOV.BRAgendamentoRN :: processarTarefasTramita GOV.BR estão corretas:
  
  - Atenção para a periodicidade ser MINUTO e o penúltimo botão estar ATIVADO.

  - Executar na seta verde o agendamento e verificar se houve sucesso.

  - Avaliar se existem logs em Infra>Logs e analisar.

.. figure:: _static/images/Tela_agendamento_processar_tarefa.png

* Acessar o servidor e rodar os seguintes scripts:

/usr/bin/php -c /etc/php.ini XXXX/scripts/mod-pen/MonitoramentoTarefasTramita GOV.BR.php

/usr/bin/php -c /etc/php.ini XXXX/scripts/mod-pen/verifica_instalacao_modulo_pen.php

• Caso ambos executem com sucesso, testar a execução do agendamento via linha de comando:

/usr/bin/php -c /etc/php.ini XXXX/scripts/AgendamentoTarefaSEI.php

* Avaliar no front-end do SEI se no menu Infra>Agendamento houve atualização do horário no agendamento da tarefa Tramita GOV.BRAgendamentoRN :: processarTarefasTramita GOV.BR.

* Avaliar se existem logs em Infra>Logs e analisar.

* Caso o horário atualize, partiremos para a configuração do crontab. Ele só pode estar configurado em 1 nó dos servidores, se estiver em mais de 1 devemos desabilitar nos demais.

* Acessar o arquivo do crontab 

vim /etc/crontab 

* Primeiro verificar o arquivo de erros que aparece no crontab. Geralmente ele está em /root/agendamento_sei e avalie os erros caso existam.

* Como a execução do agendamento deve ter funcionado nos passos iniciais (ao ser executado pela linha de comando), devemos atualizar as variáveis de ambiente do crontab para utilizar as mesmas do contexto do shell.

* Primeiro exportaremos as variáveis do root em um arquivo.

env > /root/testeEnv

* Para comparar com as variáveis usadas pelo cron, adicionar a linha abaixo no crontab.

* ****root env > /root/testeEnvCron

* Efetuar restart do serviço 'systemctl restart crond'

* Comparar ambos os arquivos. Caso sejam diferentes teremos que copiar as variáveis do arquivo "testeEnv" e colar na parte superior do crontab, conforme exemplo abaixo.

SHELL=bin/bash
LANG=pt_BR.UTF-8
PATH=XXX
HOME=XXX
* * * * * root /usr/bin/php -c /etc/php.ini /opt/sei/scripts/AgendamentoTarefaSEI.php

* algumas variáveis devem estar entre aspas, avaliar caso a caso.

* São soluções conhecidas e necessárias adicionar:

LANG=pt_BR.UTF-8

* Nos casos do BD Oracle:

LD_LIBRARY_PATH=xxx
LD_LIBRARY_PATH64=xxx
ORACLE_HOME=xxxxx

* No intervalo configurado do SEI(caso sejam os minutos pares), avaliar se houve atualização do agendamento no front-end do SEI.

* Avaliar se existem logs em Infra>Logs e analisar.
 
* Caso o agendamento tenha sido executado com sucesso, porém os trâmites não tenham sido recebidos ou enviados pelo barramento, executar via linha de comando:

curl--cert/opt/sei/config/mod-pen/certificado.pem:SENHA https://homolog.api.processoeletronico.gov.br/interoperabilidade/rest/v2/tramites/pendentes
 
* Avaliar se existem logs em Infra>Logs e analisar.

* Caso execute com sucesso até esta etapa, e mesmo assim não tramite processos, entrar em contato com o suporte Tramita GOV.BR.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~~

Tramita; crontab.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Não finalização de processos dos workers do gearman
----------------------------------------------------

Situação  
~~~~~~~~

No MME percebemos que na atualização para a versão 3.1.6 do SEI e 2.1.4 do módulo o CentOS por algum motivo não finalizou processos dos workers do gearman.


Quando Ocorre
~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

No MME percebemos que na atualização para a versão 3.1.6 do SEI e 2.1.4 do módulo o CentOS por algum motivo não finalizou processos dos workers do gearman. Assim, a cada chamada ao MonitoramentoTarefasTramita GOV.BR.php, ele verifica o número de workers ativos, como já existiam rodando 4 workers, o modulo não iniciava outros para processar as pendências.

* Para verificar se existem processos rodando:

ps -aux |grep MonitoramentoTarefasTramita GOV.BR.php

* E caso existam processos travados, rodar:

kill -9 XXXXX


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; gearman; finalização de processo.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Erro Número de Documentos
-------------------------

Situação  
~~~~~~~~

Erro Número de Documentos


Quando Ocorre
~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Nos casos que apareceram o erro ao tramitar "Inconsistência identificada no recebimento de processo: - Número de documentos do processo não confere com o registrado nos dados do processo no enviado externamente."

Caso existam processos anexados na árvore de documentos, provavelmente esta é a razão do erro, assim solicite a atualização para a versão superior a 2.1.3.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.



Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; Erro Número de Documentos.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Barra de Progresso Travando
----------------------------

Situação  
~~~~~~~~~~

Barra de Progresso Travando

Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~~~

Ao realizar upload de documentos ou imagens, o módulo cria uma barra de progresso azul que em alguns casos pode ficar piscando e não concluir o upload. Para ajustar esses casos devemos instalar uma versão específica de um componente do PHP. As versões atuais do pacote uploadprogress que causam esse erro, assim fazer o downgrade para:

pecl install uploadprogress-1.0.3.1


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; barra de progresso.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Tipo de documento [Especie XX] não encontrado
---------------------------------------------

Situação  
~~~~~~~~

Tipo de documento [Especie XX] não encontrado


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Nesses casos o erro que aparece é o ID do barramento, conforme o csv abaixo (tabela md_pen_especie_documental). Avaliar o ID que aparece e olhar no Tramita GOV.BR > mapeamento se esse tipo está corretamente configurado. No caso que vimos o tipo estava errado, estava como Extratos (no plural) e esse tipo estava inativo no SEI do órgão existindo apenas o Extrato (singluar).


id_especie,nome_especie

1,Abaixo-assinado

2,AcÃ³rdÃ£o

3,Acordo

4,AlvarÃ¡

5,Anais

6,Anteprojeto

7,ApÃ³lice

8,Apostila

9,Ata

10,Atestado

11,Ato

12,Auto

13,Aviso

14,Balancete

15,BalanÃ§o

16,Bilhete

17,Boletim

18,Carta

19,Cartaz

20,CÃ©dula

21,CertidÃ£o

22,Certificado

23,Cheque

24,Comprovante

25,Comunicado

26,Consulta

27,Contracheque

28,Contrato

29,ConvÃªnio

30,Convite

31,ConvenÃ§Ã£o

32,CrachÃ¡

33,Cronograma

34,CurrÃ­culo

35,DebÃªnture

36,DecisÃ£o

37,DeclaraÃ§Ã£o

38,Decreto

39,DeliberaÃ§Ã£o

40,Demonstrativo

41,Depoimento

42,Despacho

43,DiÃ¡rio

44,Diploma

45,Diretriz

46,DissertaÃ§Ã£o

47,DossiÃª

48,Edital

49,E-mail

50,Embargos

51,Emenda

52,Escala

53,Escritura

54,Estatuto

55,"ExposiÃ§Ã£o de Motivos"

56,Extrato

57,Fatura

58,Ficha

59,Fluxograma

60,Folha

61,Folheto/Folder

62,FormulÃ¡rio

63,"Grade Curricular"

64,Guia

65,HistÃ³rico

66,IndicaÃ§Ã£o

67,Informe

68,InstruÃ§Ã£o

69,InventÃ¡rio

70,Laudo

71,Lei

72,Lista/Listagem

73,Livro

74,Mandado

75,Manifesto

76,Manual

77,Mapa

78,"Medida ProvisÃ³ria"

79,Memorando

80,Memorando-circular


81,Memorial

82,Mensagem

83,Minuta

84,MoÃ§Ã£o

85,Norma

86,Nota

87,NotificaÃ§Ã£o

88,OfÃ­cio

89,OfÃ­cio-Circular

90,OrÃ§amento

91,Ordem

92,Organograma

93,OrientaÃ§Ã£o

94,Panfleto

95,Parecer

96,Passaporte

97,Pauta

98,PetiÃ§Ã£o

99,Planilha

100,Plano

101,Planta

102,Portaria

103,PrecatÃ³rio

104,Processo

105,ProcuraÃ§Ã£o

106,Programa

107,Projeto

108,ProntuÃ¡rio

109,Pronunciamento

110,Proposta

111,Prospecto

112,Protocolo

113,Prova

114,QuestionÃ¡rio

115,Receita

116,Recibo

117,Recurso

118,Regimento

119,Registro

120,Regulamento

121,RelaÃ§Ã£o

122,RelatÃ³rio

123,Release

124,RepresentaÃ§Ã£o

125,Requerimento

126,RequisiÃ§Ã£o

127,ResoluÃ§Ã£o

128,Resumo

129,Roteiro

130,SentenÃ§a

131,Sinopse

132,SolicitaÃ§Ã£o

133,SÃºmula

134,Tabela

135,Telegrama

136,Termo

137,Tese

138,Testamento

139,TÃ­tulo

140,Voto

141,Carteira

142,CartÃ£o

143,CPF/CIC

144,CNPJ

145,CalendÃ¡rio

146,CNH

147,RG

148,Agenda

149,AnÃ¡lise

150,AnotaÃ§Ã£o

151,Ãudio

152,Boleto

153,Conta

154,ContrarrazÃµes

155,CorrespondÃªncia

156,Cota

157,Credencial

158,Croqui

159,Defesa

160,DemonstraÃ§Ã£o

161,DenÃºncia

162,Esclarecimento

163,EscrituraÃ§Ã£o

164,EstratÃ©gia

165,ImpugnaÃ§Ã£o

166,InformaÃ§Ã£o

167,IntenÃ§Ã£o

168,LicenÃ§a

169,MatÃ©ria

170,Material

171,MemÃ³ria

172,MovimentaÃ§Ã£o

173,Pedido

174,ReclamaÃ§Ã£o

175,Referendo

176,Resultado

177,VÃ­deo

178,AlegaÃ§Ãµes

179,Anexo

180,Documento

181,Apartado

182,ApresentaÃ§Ã£o

183,DiagnÃ³stico

184,Exame

185,PÃ¡gina

186,Estudo

999,Outra


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; espécie não encontrada.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Update em NRE errado
---------------------

Situação  
~~~~~~~~

Update em NRE errado

Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Nos casos que dois tramites apresentem NREs diferentes, devemos rodar a seguinte transação para corrigir:

- checar se está com autocommit 
- checar auditoria com os horários do painel
 
START TRANSACTION;

:: 
  
  SET @novoNRE= '0000006889528888';

::
  
  SET @novoTramite= 89898;
 
- NRE que será substituído

::

  SET @velhoNRE= '0000006889522021';

::
  
  SET @velhoTramite= 66224;
 

* **passo 1**, clona o registro de processo eletrônico anterior com o NRE correto
 
::
  
  Insert into md_pen_processo_eletronico (numero_registro,id_procedimento,sta_tipo_protocolo) 
  (select @novoNRE,id_procedimento,sta_tipo_protocolo 
  from md_pen_processo_eletronico where numero_registro=@velhoNRE);
 

* **passo 2**, clona o registro de tramite anterior com o NRE correto
 

::

  Insert into d_pen_tramite (numero_registro,id_tramite,ticket_envio_componentes,dth_registro,id_andamento,id_usuario,id_unidade,id_repositorio_origem,id_estrutura_origem,id_repositorio_destino,id_estrutura_destino,sta_tipo_tramite)
  (select @novoNRE,@novoTramite,ticket_envio_componentes,dth_registro,id_andamento,id_usuario,id_unidade,id_repositorio_origem,id_estrutura_origem,id_repositorio_destino,id_estrutura_destino,sta_tipo_tramite
   from md_pen_tramite where numero_registro=@velhoNRE and id_tramite=@velhoTramite);
 
* **passo 3**, clona o registro de recibos de tramites anterior com o NRE correto
 
::

  Insert	into	md_pen_recibo_tramite (numero_registro,id_tramite,dth_recebimento,hash_assinatura,cadeia_certificado) 
  (select @novoNRE,@novoTramite,dth_recebimento,hash_assinatura,cadeia_certificado
  from md_pen_recibo_tramite where numero_registro=@velhoNRE and id_tramite=@velhoTramite);
 
* **passo 4**, atualiza a tabela de sequencia e gera próximo número de sequência de hash
 
::

  SET @rownum= (select max(id) from md_pen_seq_recibo_tramite_hash );
 
::

  Insert	into	md_pen_recibo_tramite_hash (id_tramite_hash,numero_registro,id_tramite,tipo_recibo,hash_componente_digital)
  (select(@rownum:=@rownum + 1 ),@novoNRE,@novoTramite,tipo_recibo,hash_componente_digital
  from md_pen_recibo_tramite_hash where numero_registro=@velhoNRE and id_tramite=@velhoTramite);

::
 
  insert into md_pen_seq_recibo_tramite_hash (id,campo) values (@rownum,0);
 

* **passo 5**, clona o registro de recibos de tramites enviados anteriores com o NRE correto
 
Insert	into	md_pen_recibo_tramite_enviado (numero_registro,id_tramite,dth_recebimento,hash_assinatura,cadeia_certificado) 
(select @novoNRE,@novoTramite,dth_recebimento,hash_assinatura,cadeia_certificado
from md_pen_recibo_tramite_enviado where numero_registro=@velhoNRE and id_tramite=@velhoTramite);
 
* passo 6, clona o registro de componentes digitais com o NRE correto
 
::

  Insert into md_pen_componente_digital  (numero_registro,id_procedimento,id_documento,id_tramite,id_anexo,protocolo,nome,hash_conteudo,algoritmo_hash,tipo_conteudo,mime_type,dados_complementares,tamanho,ordem,sin_enviar,codigo_especie,nome_especie_produtor,ordem_documento,id_procedimento_anexado,protocolo_procedimento_anexado,ordem_documento_anexado,ordem_documento_referenciado)
 (select @novoNRE,id_procedimento,id_documento,@novoTramite,id_anexo,protocolo,nome,hash_conteudo,algoritmo_hash,tipo_conteudo,mime_type,dados_complementares,tamanho,ordem,sin_enviar,codigo_especie,nome_especie_produtor,ordem_documento,id_procedimento_anexado,protocolo_procedimento_anexado,ordem_documento_anexado,ordem_documento_referenciado
 from md_pen_componente_digital where numero_registro=@velhoNRE and id_tramite=@velhoTramite);
 

* **passo 7**, exclui registro antigo
 
::

  delete from md_pen_componente_digital where numero_registro=@velhoNRE and id_tramite=@velhoTramite;

:: 

  delete from md_pen_recibo_tramite_enviado where numero_registro=@velhoNRE and id_tramite=@velhoTramite;

:: 

  delete from md_pen_recibo_tramite_hash where numero_registro=@velhoNRE and id_tramite=@velhoTramite;

:: 

  delete from md_pen_recibo_tramite where numero_registro=@velhoNRE and id_tramite=@velhoTramite;

:: 

  delete from md_pen_tramite where numero_registro=@velhoNRE and id_tramite=@velhoTramite;

:: 

  delete from md_pen_processo_eletronico where numero_registro=@velhoNRE;

:: 

  COMMIT;


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; NRE; Errada.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 

Processamento lento de Pendências
---------------------------------

Situação  
~~~~~~~~

Processamento lento de Pendências

Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Quando olhamos o agendamento no sei, tem na descrição um parâmetro WORKER, podemos aumentar até "workers=9"
Assim, se no minuto X os 9 paralelos estão executando, no próximo minuto do agendamento ele não vai chamar mais processos paralelos
Podemos olhar se tem processos com tempo de vida muito grande:

ps -aux |grep MonitoramentoTarefasTramita GOV.BR.php

Isso pode significar que podem estar travados, assim executamos o kill

 kill -9 XXXXX
 
Outra solução seria rodar com nohup xxxx & nohup xxxx.
Como a cada chamada do Monitoramento é feito um shuffle das pendencias, teoricamente entre os 2 nohup paralelos serão executados processos diferentes.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; Processamento; lento.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Documentos Externos desformatados quando HTML
---------------------------------------------

Situação  
~~~~~~~~

Documentos Externos desformatados quando HTML

Quando Ocorre
~~~~~~~~~~~~~~

Ocorreu quando o usuário tenta incluir um documento externo HTML com encoding UTF-8, e ao abrir a visualização do SEI os caracteres estiverem com erro de formatação. 


Solução Sugerida
~~~~~~~~~~~~~~~~~

Verificar se o pacote 'files' está instalado no servidor de aplicação do SEI, caso contrario instale com "yum/apt install file'


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; desformatados; HTML; documentos externos.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 


Erro escrevendo no infra_log
----------------------------

Situação  
~~~~~~~~~

Erro escrevendo no infra_log

Quando Ocorre
~~~~~~~~~~~~~~

Quando não se tem o LANGUAGE no cron configurado como ISO8859


Solução Sugerida
~~~~~~~~~~~~~~~~~~

Um dos erros conhecidos para esse caso foi o fato de não ter o LANGUAGE no cron configurado como ISO8859, assim rodando diretamente pelo Monitorar.php funciona mas usando o cron estoura o erro de escrita em infra_log

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; cron; infra_log.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Erro na quantidade de processos
-------------------------------

Situação  
~~~~~~~~

Erro na quantidade de processos

Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Pedir para rodar o SQL abaixo, na coluna ordem_documento tem que vir na sequência (1,2,3..) que é a sequência de documentos do processo. A coluna ORDEM é a ordem do COMPONENTE DIGITAL desse documento, geralmente vai vir sempre 1, já que a maioria só tem 1 componente digital mesmo

::

  SELECT 
  cp.numero_registro,id_tramite,id_anexo,protocolo,nome,ordem_documento ,ordem
  FROM sei.md_pen_componente_digital cp
  inner join sei.md_pen_processo_eletronico pe on cp.numero_registro=pe.numero_registro
  inner join sei.protocolo pp on pp.id_protocolo=pe.id_procedimento
  where pp.protocolo_formatado="95190.000001/2021-11"
  order by numero_registro,id_tramite,ordem_documento,ordem

Exemplo de saída

.. figure:: _static/images/exemplo_saida_SQL.png

Caso o erro no órgão seja do tipo "Inconsistência identificada no recebimento de processo: - Número de documentos do processo não confere com o registrado nos dados do processo no enviado externamente.”, muito provável que a coluna ORDEM ou ORDEM_DOCUMENTO esteja diferente do presente na foto acima...na SEPLAG por exemplo a coluna ORDEM_DOCUMENTO estava com um valor NULL. ai criava o erro e a recusa. Para corrigir rodamos o sql:

::
  
  update sei.md_pen_componente_digital
  set ordem_documento=ordem,ordem=1
  where ordem_documento is null

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; erro; processados.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 

  

Metadados - Erro: A parte informada ultrapassa o tamanho do componente digital informado nos metadados do trâmite
-----------------------------------------------------------------------------------------------------------------

Situação  
~~~~~~~~

Erro: A parte informada ultrapassa o tamanho do componente digital informado nos metadados do trâmite

Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Segue a correção para o problema enfrentado.

1- Escolher um horário fora do uso regular da aplicação
2- Efetuar um back-up da base de dados para possíveis restaurações
3- Rodar os seguintes scripts:

:: 

  update anexo set tamanho=2378925 where id_anexo=25466310;
  update anexo set tamanho=151846 where id_anexo=25466214;

4- Testar novamente o envio do processo

Como foi relatado que houve restaurações de arquivos no órgão, após a correção deste incidente é recomendável rodar o script abaixo para identificação de possíveis erros de mesma natureza:

php -c /etc/php.ini  /opt/sei/scripts/verificacao_repositorio_arquivos.php 28/03/2022



.. admonition:: Observação 
  
   Ajustar a data de exemplo (28/03/2022) para a data que houve o ataque


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; metadados; ultrapassar tamanho; componente; digital.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Erro criar permissão
--------------------

Situação  
~~~~~~~~

Erro criar permissão

Quando Ocorre
~~~~~~~~~~~~~

Caso um usuário ao tentar criar uma nova permissão pelo SIP aparecer uma mensagem de erro informando que 'já existe registro' isso ocorre porque foi excluída da base do SIP o user, porém permanece na base do SEI. Essa falta de sincronismo gera o erro mencionado.


Solução Sugerida
~~~~~~~~~~~~~~~~

Dessa forma, buscar o usuário na base sei para alterarem o valor da coluna sin_ativo para N


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; erro; permissão.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



Falha ao conectar ao barramento mesmo com script de validação com sucesso
-------------------------------------------------------------------------

Situação  
~~~~~~~~

Falha ao conectar ao barramento mesmo com script de validação com sucesso


Quando Ocorre
~~~~~~~~~~~~~~

Esse erro ocorreu na PR, onde o script de instalação estava rodando corretamente. Ao testar o "php /opt/sei/scripts/mod-pen/MonitoramentoTarefasTramita GOV.BR.php" pela CLI, o resultado era correto também, trazendo as pendências. Porém, pelo front end parecia que o SEI não se conectava ao barramento.


Solução Sugerida
~~~~~~~~~~~~~~~~~

Nesse caso verifique se os arquivos de certificado do pem possuem permissão para o apache.

Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*(Indicar quem é responsável pelo atendimento da demanda, se são os atendentes de 1º nível ou se o chamado deve ser encaminhado para outras instâncias)*  


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Indicar como o atendente deverá responder ao chamado, incluindo o texto de saudação inicial, o corpo da resposta e a despedida ou fecho. Exemplo aqui.)

Respostas em Construção.


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; falha conexão.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 



