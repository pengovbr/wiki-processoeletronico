Utiliza Tramita Envio e recebimento de processos
=================================================

Como enviar processos pelo Tramita GOV.BR?
+++++++++++++++++++++++++++++++++++++++++++

Antes de enviar processos via plataforma do Tramita GOV.BR, é preciso se certificar que o órgão já está integrado à plataforma. Feito isso, basta seguir alguns passos simples: 


.. admonition:: Para órgãos que utilizam SEI:
   
   1. Acessar uma das unidades autorizadas a realizar esse tipo de operação; 
   
   2. Acessar o processo a ser enviado e clicar no botão de Envio Externo de Processo, representado pelo ícone |transmissao|.
   
   3. Após clicar no botão mencionado, uma tela de seleção de destinatário será exibida e o usuário deverá, nesta ordem:
   
   3.1. Selecionar o Repositório de Estruturas Organizacionais; 
   
   3.2. Informar a Unidade Administrativa à qual o processo deverá ser remetido; 
   
   3.2.1. Caso haja dificuldade em encontrar o nome da Unidade Administrativa, é possível:

   Digitar parte do nome, no campo indicado, e clicar no botão Consultar;ou

   Utilizar a função Consultar Organograma, representada pelo ícone |organograma|, identificar e selecionar a unidade de destino e, em seguida, clicar no botão Fechar.  
   
   3.3. Clicar no botão Enviar.

.. |transmissao| image:: _static/images/icone_transmissao.png
   :align: middle
   :width: 30

.. |organograma| image:: _static/images/icone_organograma.png
   :align: middle
   :width: 30


.. admonition:: Para órgãos que não utilizam SEI:

   Gestor de Protocolo deverá identificar internamente como foi desenvolvido o processo de envio para o SPE em questão. Recomenda-se veemente a elaboração de material de orientação (manual, guia, cartilha etc.) acerca do procedimento, de modo a assegurar que os usuários executem os trâmites de forma correta.

O que significa o status de processo bloqueado?
+++++++++++++++++++++++++++++++++++++++++++++++

O status **bloqueado** é ativado após o trâmite do processo ao órgão de destino e corresponde ao impedimento da realização de novas operações, até que o processo eventualmente retorne ao órgão de origem. Ou seja: uma vez enviado, o processo sempre recebe o status de bloqueado no órgão de origem, não sendo permitida sua alteração. Este mecanismo possibilita que o processo receba novos documentos em apenas um órgão, impedindo que se gere duplicidade processual. 

É possível tramitar um processo anexado?
++++++++++++++++++++++++++++++++++++++++

Sim, a plataforma **não impõe restrições** de qualquer natureza sobre o envio ou recebimento de processos anexados. Para os órgãos que utilizam o SEI, essa movimentação processual somente pode ser realizada a partir da versão 1.5.0 do módulo de integração do SEI ao Tramita GOV.BR.

A plataforma permite o envio ou recebimento de documentos avulsos?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sim, o Tramita GOV.BR **permite o envio e o recebimento de documento avulso**. Contudo, posto que o SEI não permite a utilização de documentos avulsos (apenas processos, mesmo que com um único documento), o módulo de integração do SEI (MOD-SEI-PEN) também não permite o envio de documento avulso.  

Dessa forma, para o SEI, é possível apenas receber documento avulso, o qual é transformado em processo no ato do recebimento. Se os SPEs dos órgãos envolvidos no trâmite processual recebem e enviam documentos avulsos, o trâmite será realizado com sucesso. 

Como proceder após o recebimento de processos?
++++++++++++++++++++++++++++++++++++++++++++++

Os processos são recebidos pelo SPE de destino de forma semelhante àqueles enviados internamente. É importante ressaltar que alguns metadados são atribuídos de acordo com o mapeamento realizado pelo Gestor de Protocolo do órgão de destino. 

.. admonition:: Observação

   Por esse motivo, é essencial verificar os metadados toda vez que um processo for recebido através do Tramita GOV.BR, e, se necessário, proceder com as devidas alterações.

O ajuste é necessário para garantir uma correta classificação e tipificação do processo durante o período em que este estiver tramitando no SPE de destino. Além disso, o respeito aos prazos de temporalidade previstos na legislação depende de uma correta identificação processual. 

.. admonition:: Para órgãos que utilizam SEI:

    A alteração de algum metadado do processo recebido é realizada da seguinte forma: 

    1. Abra o processo recebido, clicando sobre seu NUP ou número de processo na tela Controle de Processos; 

    2. Uma vez que o processo esteja aberto, clique no botão Consultar/Alterar Processo, representado pelo ícone |consultar_processo|;
 
    3. Altere os metadados que considerar necessário, de acordo com seu juízo técnico, e clique no botão Salvar, localizado no canto superior direito da tela.

.. |consultar_processo| image:: _static/images/icone_consultar_processo.png
   :align: middle
   :width: 30


.. admonition:: Para órgãos que NÃO utilizam SEI:

   O Gestor de Protocolo deverá identificar internamente como foi desenvolvido o processo alteração de metadados para o SPE em questão. Recomenda-se veemente a elaboração de material de orientação (manual, guia, cartilha etc.) acerca do procedimento, de modo a assegurar que os usuários executem eventuais alterações de metadados de forma correta.


É recomendado alterar a ordem dos documentos de um processo recebido?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Não, a ordem de documentos **não deve ser alterada** pelo órgão de destino após o recebimento do processo. A alteração da ordem de documentos impede que o processo seja devolvido para o órgão de origem, gerando erro no processamento do envio. Portanto, não é recomendada a alteração da ordem dos documentos do processo.  

Nos casos de necessidade de se utilizar documento produzido em outro órgão como referência para decisão produzida localmente (e caso seja necessário ter o documento referenciado próximo ao ato produzido), ao invés de se modificar a ordem do processo já estabelecida no órgão de origem, recomenda-se duplicar o documento gerado no outro órgão, uma vez que não há restrição a tal duplicidade, mas há à modificação de ordem do processo. 

O que significa a recusa de um trâmite?
++++++++++++++++++++++++++++++++++++++++

A recusa é uma das três formas de conclusão do trâmite processual e consiste em um mecanismo do Tramita GOV.BR no qual o **órgão de destino do processo pode negar o seu recebimento**, caso seja constatada alguma característica não suportada por seu SPE. Normalmente, a recusa possui sua origem na ocorrência de algum comportamento não esperado.

As regras de recusa são definidas pela plataforma?
++++++++++++++++++++++++++++++++++++++++++++++++++

Não, **as regras de recusa são definidas pelo SPE do órgão de destino**. Portanto, se o processo foi recusado, é necessário entrar em contato com um dos gestores do órgão de destino. Os gestores de protocolos podem visualizar o motivo de recusa por meio do Painel de Controle. 

Quais situações podem resultar na recusa de um trâmite?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++

A notificação de recusa processual e, consequentemente, sua devolução ao órgão de origem se dá por meio de **inúmeras situações possíveis**. A seguir são elencadas algumas dessas possíveis situações: 

   1. O processo contém um tipo de documento não mapeado para recebimento no SPE do órgão de destino; 

   2. O processo contém um documento com formato de arquivo não permitido no SPE do órgão de destino; 

   3. O processo contém um documento com tamanho superior ao permitido no SPE do órgão de destino.

Qual é o tamanho máximo de arquivo permitido pelo Tramita GOV.BR?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

O **tamanho máximo do documento não é definido pelo Tramita GOV.BR**, mas sim pelo SPE do órgão de destino. Vale lembrar que o envio de arquivos que ultrapassam o tamanho máximo permitido pelo SPE do órgão de destino resulta na recusa do processo. 

.. admonition:: Exemplo 

   Supondo que o órgão de destino limite o tamanho máximo de documento permitido a 200 MB, um trâmite de um documento de tamanho 300 MB será recusado. 

Quais são as extensões de arquivos aceitas pelo Tramita GOV.BR?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

O **Tramita GOV.BR não define quais as extensões de arquivo podem, ou não, tramitar dentro dos processos**. A plataforma apenas serve de conexão entre os órgãos, transportando os documentos de um SPE para o outro. Cada órgão possui autonomia para definir quais extensões podem ser utilizadas no seu SPE, não cabendo à plataforma intervir nessa decisão. 

O que representa o status de um trâmite e como proceder caso o processo esteja parado em algum dos status?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

O status de um processo representa a condição em que ele se encontra dentro da plataforma do Tramita GOV.BR, e serve para indicar se o processo está seguindo o fluxo de tramitação com sucesso ou não. 

Atualmente estão definidos dez tipos de status, os quais representam situações que podem ou não exigir ação direta do usuário, caso seja percebida estagnação do processo em determinado status. 

São eles:

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 1                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================+
|  Descrição              | Aguardando o envio dos arquivos digitais.                                                                                                                                                  |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| As informações básicas (número, descrição, interessado, relação de documentos etc.) foram fornecidas e recebidas pelo Tramita GOV.BR, porém o sistema está aguardando o envio dos arquivos.|
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de processo eletrônico de origem.                                                                                                                                                  |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | O trâmite do processo pode ser cancelado manualmente pelo usuário do sistema de origem.                                                                                                    |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 2                                                                                                                                                                                                                                     | 
+=========================+====================================================================================================================================================================================================================+
|  Descrição              | Arquivos digitais recebidos pelo Tramita GOV.BR.                                                                                                                                                                   |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| Os arquivos digitais do processo foram recebidos e validados quanto à integridade pelo Tramita GOV.BR. A plataforma aguarda o Sistema de Processo Eletrônico de destino buscar as informações do processo.         |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Tramita GOV.BR                                                                                                                                                                                                     |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | O trâmite do processo pode ser cancelado pelo usuário do sistema de origem.                                                                                                                                        |
|                         |                                                                                                                                                                                                                    |
|                         | Caso o processo esteja parado no status 2, é muito provável que o sistema de destino esteja com problemas para recebimento. Nessa situação, entre em contato com um dos gestores de protocolo do órgão de destino. |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 3                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Metadados recebidos pelo sistema de processo eletrônico destinatário                                                                                                                                                                                       |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| As informações básicas (número, descrição, interessado, relação de documentos etc.) foram informadas e recebidas pelo Sistema de Processo Eletrônico de destino e o sistema está aguardando a transferência dos arquivos digitais para o referido sistema  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Tramita GOV.BR                                                                                                                                                                                                                                             |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | Caso o processo esteja parado no status 3, provavelmente o sistema de destino está com problemas para recebimento. Nessa situação, entre em contato com um dos gestores de protocolo do órgão de destino.                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 4                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Arquivos digitais recebidos pelo destinatário                                                                                                                                                                                                              |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| Os arquivos digitais foram recebidos pelo Sistema de Processo Eletrônico de destino e o Tramita GOV.BR está aguardando o sistema de destino enviar o recibo de conclusão do trâmite.                                                                       |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de destino                                                                                                                                                                                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | Caso o processo esteja parado no status 4, provavelmente o sistema de destino está com problemas para recebimento. Nessa situação, entre em contato com um dos gestores de protocolo do órgão de destino.                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 5                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|Descrição                | Recibo de conclusão recebido pelo Tramita GOV.BR                                                                                                                                                                                                           |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| O Sistema de Processo Eletrônico de destino validou a integridade do processo e enviou o recibo de conclusão do trâmite para o Tramita GOV.BR.                                                                                                             |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de destino                                                                                                                                                                                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | Caso o processo esteja parado no status 5, provavelmente o sistema de origem está indisponível. Nessa situação, entre em contato com um dos gestores de protocolo do órgão de origem.                                                                      |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 6                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Recibo de conclusão recebido pelo remetente                                                                                                                                                                                                                |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| O recibo de conclusão do trâmite foi recebido com sucesso pelo Sistema de Processo Eletrônico de origem.                                                                                                                                                   |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de destino                                                                                                                                                                                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | _                                                                                                                                                                                                                                                          |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 7                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Trâmite cancelado                                                                                                                                                                                                                                          |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| O trâmite foi cancelado manualmente pelo usuário do Sistema de Processo Eletrônico de origem ou por falha na transferência dos dados do processo. Exemplo: Identificação de envio do processo para o destinatário errado.                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de destino                                                                                                                                                                                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | _                                                                                                                                                                                                                                                          |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 8                                                                                                                                                                                                                                                                                                       | 
+=========================+======================================================================================================================================================================================================================================================================================+
|  Descrição              | Trâmite recusado. Aguardando ciência do remetente                                                                                                                                                                                                                                    |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| O trâmite foi recusado pelo Sistema de Processo Eletrônico de destino por alguma falha na validação dos dados recebidos e está aguardando a ciência do sistema de origem para realizar o desbloqueio do processo. Exemplo: o Formato de arquivo não é aceito pelo sistema de destino |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Tramita GOV.BR                                                                                                                                                                                                                                                                       |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | Cenários Possíveis:                                                                                                                                                                                                                                                                  |
|                         |                                                                                                                                                                                                                                                                                      |
|                         | 1. Caso o trâmite esteja parado no status 8, provavelmente o sistema de origem está com problema de comunicação com o Tramita GOV.BR. Nessa situação, entre em contato com um dos gestores de protocolo do órgão de origem.                                                          |          
|                         |                                                                                                                                                                                                                                                                                      |
|                         | 2. Após mudanças de estruturas de órgãos no SIORG, algumas unidades podem ser inativadas. Por esse motivo, um trâmite em andamento que foi recusado ficará parado no status 8, visto que não é possível localizar a unidade de origem para concluir o trâmite.                       |
|                         |                                                                                                                                                                                                                                                                                      |
|                         | Uma solução possível é verificar se a unidade de origem ainda permanece disponível no Portal de Administração e mapear novamente essa unidade para receber processos.                                                                                                                |
|                         |                                                                                                                                                                                                                                                                                      |
|                         | 3. Nos casos de recusa com justificativa com mais de 500 caracteres, caso o erro seja reportado, atualizar o módulo para no mínimo a versão 3.1.8.                                                                                                                                   |
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 9                                                                                                                                                                                                                                                                             | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Ciência da recusa recebido pelo remetente                                                                                                                                                                                                                  |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| A notificação da recusa do trâmite foi recebida pelo Sistema de Processo Eletrônico de origem e o processo foi desbloqueado.                                                                                                                               |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de origem                                                                                                                                                                                                                   |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | Verificar o motivo da recusa e entrar em contato com um dos gestores de protocolo do órgão de destino.                                                                                                                                                     |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Status 10                                                                                                                                                                                                                                                                            | 
+=========================+============================================================================================================================================================================================================================================================+
|  Descrição              | Trâmite cancelado automaticamente                                                                                                                                                                                                                          |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que significa o status?| O trâmite é cancelado automaticamente pelo Tramita GOV.BR após o prazo estabelecido pelos Administradores do Tramita GOV.BR.                                                                                                                               |
|                         |                                                                                                                                                                                                                                                            | 
|                         | Apenas os trâmites com status 1, 2, 3 e 4 podem ser cancelados automaticamente.                                                                                                                                                                            |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|Onde está o processo?    | Sistema de Processo Eletrônico de origem                                                                                                                                                                                                                   |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|O que pode ser feito?    | _                                                                                                                                                                                                                                                          |
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
 
