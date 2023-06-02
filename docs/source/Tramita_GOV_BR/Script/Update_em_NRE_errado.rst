2023.05.08-Update em NRE errado-V1
==================================

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