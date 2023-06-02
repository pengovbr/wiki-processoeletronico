2023.05.08-Processamento lento de Pendências-V1
===============================================

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

ps -aux |grep MonitoramentoTarefasPEN.php

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