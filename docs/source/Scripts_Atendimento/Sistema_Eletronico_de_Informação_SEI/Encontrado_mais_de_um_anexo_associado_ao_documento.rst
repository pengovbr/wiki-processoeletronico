2024.02.09-Encontrado mais de um anexo associado ao documento-V1
=================================================================

Situação  
~~~~~~~~

Documentos duplicados no processo e ao tentar selecionar o processo o mesmo apresenta mensagem.


Quando Ocorre
~~~~~~~~~~~~~~

Após o gestor tentar selecionar o processo é apresentada uma mensagem Erro – encontrado mais de um anexo associado ao documento devido a isso o processo fica impossibilitado.

Solução Sugerida
~~~~~~~~~~~~~~~~

Basta atualizar o campo 'sin_ativo' dos dois registros de anexos para 'N' na tabela de anexo referentes a inclusão indevida. Dessa forma os dois anexos se tornarão inativos. 

Caso o gestor informe que não existe documentos duplicados o atendente deve solicitar: Resultado do SQL dos registros dos processos.

::

  "select an.* 
  from protocolo pt  
  inner join anexo an on pt.id_protocolo = an.id_protocolo  
  inner join documento dc on pt.id_protocolo = dc.id_documento  
  where dc.id_procedimento = 5159772 

  and an.sin_ativo = 'S' 
  order by an.id_protocolo;" 

Após envio do resultado caso verificado que exista documentos duplicados  
o atendente deve avisar que que o script de correção que remove o ativo de um dos anexos precisa ser executado. Com o update do SQL 
 
update anexo set sin_ativo = 'N' where id_anexo = xxxx;   

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Modelo de resposta inicial: 

Prezada Xxxxxxx, 

Não é necessário apagar os registros da base de dados. Basta atualizar o campo 'sin_ativo' dos dois registros de anexos para 'N' na tabela de anexo referentes a inclusão indevida. Dessa forma os dois anexos se tornarão inativos. 

Será, também, criado uma issue para tratamento desse erro no sistema no repositório https://github.com/supergovbr/super. 

Atenciosamente, 

Xxxxxxxxxx 


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente N3   

Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Atendente N3 


Palavras-chave  
~~~~~~~~~~~~~~

Error; duplicados; mais de um documento; anexo 


Referências  
~~~~~~~~~~~~

4511005 