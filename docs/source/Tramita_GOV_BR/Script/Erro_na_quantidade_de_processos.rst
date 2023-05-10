Erro na quantidade de processos
================================

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