Metadados - Erro A parte informada ultrapassa o tamanho do componente digital informado nos metadados do trâmite
================================================================================================================

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