2023.05.08-Falha ao conectar ao barramento mesmo com script de validação com sucesso-V1
=======================================================================================

Situação  
~~~~~~~~

Falha ao conectar ao barramento mesmo com script de validação com sucesso


Quando Ocorre
~~~~~~~~~~~~~~

Esse erro ocorreu na PR, onde o script de instalação estava rodando corretamente. Ao testar o "php /opt/sei/scripts/mod-pen/MonitoramentoTarefasPEN.php" pela CLI, o resultado era correto também, trazendo as pendências. Porém, pelo front end parecia que o SEI não se conectava ao barramento.


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