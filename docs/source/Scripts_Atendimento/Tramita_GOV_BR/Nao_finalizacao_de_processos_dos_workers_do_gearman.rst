2023.05.08-Não finalização de processos dos workers do gearman-V1
=================================================================

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