Não execução do agendamento do SEI via crontab
==============================================

Situação  
~~~~~~~~~

Não execução do agendamento do SEI via crontab


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Script para testar com usuário casos de não execução do agendamento do SEI via crontab.(Pode ser enviado para execução direta deles)

* Caso usem centOS (versão que ocorreu esse erro em 2 orgãos foi a centos-release-7-4.1708.el7.centos.x86_64), na crontab tirar o root do começo da instrução ****  root.

* Caso a máquina seja de desenvolvimento e fruto de clone da máquina de producao, avaliar se a configuração está correta no ConfiguracaoSEI.php(endereços de certificados, URL de serviços, etc).

* Caso sua instalação do PHP possua mais de 1 php.ini (por exemplo em distribuições DEBIAN, ou em instalações onde o php.ini não está em /etc/php.ini), favor atualizar módulo do PEN para versão superior a 2.1.3.

* Caso o servidor do SEI utilize um proxy, liberar o acesso direto à internet do mesmo.

* No front-end do SEI acessar Infra>Agendameento e verificar se as configurações do PENAgendamentoRN :: processarTarefasPEN estão corretas:
  
  - Atenção para a periodicidade ser MINUTO e o penúltimo botão estar ATIVADO.

  - Executar na seta verde o agendamento e verificar se houve sucesso.

  - Avaliar se existem logs em Infra>Logs e analisar.

.. figure:: _static/images/Tela_agendamento_processar_tarefa.png

* Acessar o servidor e rodar os seguintes scripts:

/usr/bin/php -c /etc/php.ini XXXX/scripts/mod-pen/MonitoramentoTarefasPEN.php

/usr/bin/php -c /etc/php.ini XXXX/scripts/mod-pen/verifica_instalacao_modulo_pen.php

• Caso ambos executem com sucesso, testar a execução do agendamento via linha de comando:

/usr/bin/php -c /etc/php.ini XXXX/scripts/AgendamentoTarefaSEI.php

* Avaliar no front-end do SEI se no menu Infra>Agendamento houve atualização do horário no agendamento da tarefa PENAgendamentoRN :: processarTarefasPEN.

* Avaliar se existem logs em Infra>Logs e analisar.

* Caso o horário atualize, partiremos para a configuração do crontab. Ele só pode estar configurado em 1 nó dos servidores, se estiver em mais de 1 devemos desabilitar nos demais.

* Acessar o arquivo do crontab 

vim /etc/crontab 

* Primeiro verificar o arquivo de erros que aparece no crontab. Geralmente ele está em /root/agendamento_sei e avalie os erros caso existam.

* Como a execução do agendamento deve ter funcionado nos passos iniciais (ao ser executado pela linha de comando), devemos atualizar as variáveis de ambiente do crontab para utilizar as mesmas do contexto do shell.

* Primeiro exportaremos as variáveis do root em um arquivo.

env > /root/testeEnv

* Para comparar com as variáveis usadas pelo cron, adicionar a linha abaixo no crontab.

* ****root env > /root/testeEnvCron

* Efetuar restart do serviço 'systemctl restart crond'

* Comparar ambos os arquivos. Caso sejam diferentes teremos que copiar as variáveis do arquivo "testeEnv" e colar na parte superior do crontab, conforme exemplo abaixo.

SHELL=bin/bash
LANG=pt_BR.UTF-8
PATH=XXX
HOME=XXX
* * * * * root /usr/bin/php -c /etc/php.ini /opt/sei/scripts/AgendamentoTarefaSEI.php

* algumas variáveis devem estar entre aspas, avaliar caso a caso.

* São soluções conhecidas e necessárias adicionar:

LANG=pt_BR.UTF-8

* Nos casos do BD Oracle:

LD_LIBRARY_PATH=xxx
LD_LIBRARY_PATH64=xxx
ORACLE_HOME=xxxxx

* No intervalo configurado do SEI(caso sejam os minutos pares), avaliar se houve atualização do agendamento no front-end do SEI.

* Avaliar se existem logs em Infra>Logs e analisar.
 
* Caso o agendamento tenha sido executado com sucesso, porém os trâmites não tenham sido recebidos ou enviados pelo barramento, executar via linha de comando:

curl--cert/opt/sei/config/mod-pen/certificado.pem:SENHA https://homolog.api.processoeletronico.gov.br/interoperabilidade/rest/v2/tramites/pendentes
 
* Avaliar se existem logs em Infra>Logs e analisar.

* Caso execute com sucesso até esta etapa, e mesmo assim não tramite processos, entrar em contato com o suporte PEN.


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
~~~~~~~~~~~~~~~

Tramita; crontab.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_.