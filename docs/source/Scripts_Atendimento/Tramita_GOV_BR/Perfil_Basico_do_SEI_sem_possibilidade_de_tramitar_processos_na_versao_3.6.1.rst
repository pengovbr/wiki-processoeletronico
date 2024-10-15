2024.05.13-Perfil Básico do SEI sem possibilidade de tramitar processos na versão 3.6.1-V1
===========================================================================================

Situação  
~~~~~~~~

Após a atualização do módulo de integração para a versão 3.6.1, a qual disponibiliza a nova funcionalidade de “Mapeamento de Envio Parcial”, ficou constatado que o script de atualização do SIP não atribuía ao perfil Básico do SEI à permissão "pen_map_envio_parcial_listar", estando essa atribuída apenas ao perfil Administrador. A ausência dessa permissão impede que o perfil Básico realize tramitações externas via Tramita. Assim sendo, a atribuição de permissão necessitava ser realizada de forma manual pelo Administrador do SEI via SIP.

Quando Ocorre
~~~~~~~~~~~~~~

O problema ocorre quando um usuário com perfil Básico tenta realizar tramitação externa de processo por meio do Tramita GOV.BR via SEI. Ao tentar acessar essa função, o usuário recebe a mensagem de "Acesso negado a este recurso nesta unidade", indicando a falta de permissão. Esse erro acontece na versão 3.6.1. 


Solução Sugerida
~~~~~~~~~~~~~~~~

A primeira proposta de solução é a realização de um ajuste no Perfil Básico manualmente por meio do SIP sem a necessidade de atualização do módulo. Outra solução, é por meio da versão 3.6.2, a qual já possui a correção desse erro no perfil por meio de um script de atualização.  

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado(a), 

A solução de contorno imediata é a realização de ajuste no Perfil Básico por meio do SIP com a inclusão do recurso faltante pen_map_envio_parcial_listar". Contudo, a solução automatizada é por meio da versão 3.6.2 (https://github.com/pengovbr/mod-sei-pen/releases) do módulo de integração do Tramita GOV.BR com o SEI, a qual foi lançada para correção do problema citado anteriormente.   

Recomendamos que acompanhe as notícias e atualizações fornecidas no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen) e na FAQ do Tramita.GOV.BR (https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html).  


Atenciosamente, 

Equipe Suporte PEN.


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente 1° nível 

Caso a solução apresentada não seja capaz de resolver o problema relatado, necessário encaminhar para outras instâncias.  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

*(Indicar se a demanda tem caráter negocial ou técnico. Se técnico, indicar o perfil do usuário no sistema)*


Palavras-chave  
~~~~~~~~~~~~~~

Permissão | Perfil básico | Acesso Negado | Envio Parcial | Módulo do Tramita GOV.BR |  


Referências  
~~~~~~~~~~~~

Issue 504 (Atribuição do recurso de Envio Parcial para o Perfil Básico no Script de Instalação do módulo) - https://github.com/pengovbr/mod-sei-pen/issues/504