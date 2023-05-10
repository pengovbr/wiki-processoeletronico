Processo recusado por erro "Número do Processo NUP já se encontra cadastrado"
=============================================================================

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
