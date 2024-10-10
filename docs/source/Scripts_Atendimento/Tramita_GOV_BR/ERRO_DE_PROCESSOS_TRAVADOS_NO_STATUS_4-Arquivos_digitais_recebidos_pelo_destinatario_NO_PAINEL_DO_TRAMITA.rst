2023.05.08-ERRO DE PROCESSOS TRAVADOS NO STATUS 4- Arquivos digitais recebidos pelo destinatário NO PAINEL DO TRAMITA-V1
========================================================================================================================

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