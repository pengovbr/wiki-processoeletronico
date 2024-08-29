2024.08.29-Processo parado no status 2-V2
=========================================

Situação  
~~~~~~~~

Após o envio do processo este se encontra parado no status 2 – Arquivos digitais recebidos pelo Tramita GOV.BR. 

Quando Ocorre
~~~~~~~~~~~~~~

Caso o processo esteja parado no status 2, é muito provável que o sistema de destino esteja com problemas para recebimento de trâmite. 


Solução Sugerida
~~~~~~~~~~~~~~~~

**Caso o remetente (origem) tenha aberto o chamado:** 

- Orientar, inicialmente, a entrar em contato com o órgão destinatário, conforme disposto no `Item 7.12 (status 2) <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br>`_ Perguntas Frequentes (FAQ) do Tramita; 

- O contato com o órgão remetente deve ser acompanhado de mensagem clara que informe sobre o problema estar centrado no órgão de destino, e que para isso é fundamental que haja um contato com o órgão para saber se eles estão cientes da situação. 

- Por fim, é esperado que o órgão de destino receba os arquivos digitais para que dessa forma o trâmite avance para os status posteriores, conforme disponível no `Manual Técnico Operacional <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/ACESSO_AO_AMBIENTE_DE_PRODUCAO.html#fluxo-de-status>`_ do Tramita GOV.BR. 


**Caso o destinatário (destino) tenha aberto o chamado:** 

- Orientar a verificar o log do script de monitoramento, seguido da desabilitação dos agendamentos do módulo e desligamento do Gearman e supervisor, caso configurados na infraestrutura do órgão destinatário. Além disso, realizar o comentário de eventual configuração do Gearman na configuração do módulo. Matar todos os workers em execução; 

- Orientar ainda que, após essa sequência de comandos sejam executados o script de verificação e o script de monitoramento, e que seus logs sejam armazenados. Após a execução de todas as verificações, realizar a análise dos resultados providenciando a correção dos problemas identificados; 

- Orientar que os agendamentos devem ser reativados ao final de todos os ajustes realizados; 

- Na sequência, é esperado que o órgão envie os componentes digitais para que dessa forma o trâmite avance para os status posteriores, conforme definido no `Manual Técnico Operacional <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/ACESSO_AO_AMBIENTE_DE_PRODUCAO.html#fluxo-de-status>`_ do Tramita GOV.BR; 

- Mencionar o `Item 7.12 (status 2) <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br>`_ Perguntas Frequentes (FAQ) do Tramita 

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Modelo de resposta para o Destinatário** 

Prezado(a), 

O processo XXXXXX parado no status 2 ocorre devido a um problema no sistema de destino do trâmite. Para resolução do problema é necessário que seja realizado o seguinte passo a passo: 

* Verifique o log do script de monitoramento (Disponível em: https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#33-opcional-script-de-monitoramento); 
Desabilite o agendamento do módulo do tramita ‘PENAgendamentoRN :: processarTarefasPEN’; 

* Caso utilize o Gearman ou Supervisor: 

  * Desligue o serviço;	 

  * Comente eventual configuração do Gearman na configuração do módulo do Tramita ‘ConfiguracaoModPEN.php’  (Disponível em: https://github.com/pengovbr/mod-seipen/blob/master/docs/INSTALL.md#42-tr%C3%A2mites-n%C3%A3o-realizados-ou-recibos-n%C3%A3o-obtidos); 

  * Mate todos os workers que ainda estejam sendo executados.. 

* Caso não utilize o Gearman ou Supervisor:

  * Verifique se as eventuais configurações do Gearman estão comentadas na configuração do módulo do Tramita  ‘ConfiguracaoModPEN.php’ (Disponível em: https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#42-tr%C3%A2mites-n%C3%A3o-realizados-ou-recibos-n%C3%A3o-obtidos); 

  * Mate todos os workers que ainda estejam sendo executados, caso existam. 

Após concluir essas etapas, realize o seguinte: 

* Execute o script de verificação ‘verifica_instalacao_modulo_pen.php’ e armazene seu log (Disponível em: https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#110-verifica%C3%A7%C3%A3o-e-testes-da-instala%C3%A7%C3%A3o-do-m%C3%B3dulo) 

* Execute o script MonitoramentoTarefasPEN.php e armazene seu Log. 

* Verifique o log resultante do processo. Após verificar o log e tomar as medidas necessárias, pedimos que reative todas as funcionalidades anteriormente desativadas. 

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen). Conheça, também, nossa `FAQ Tramita.GOV.BR <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html>`_. 


Atenciosamente, 

Equipe do Processo Eletrônico Nacional 

 
**Modelo de resposta para o Remetente** 


Prezado(a), 

Informamos que situação reportada, definida no `item 7.12 da FAQ <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/Utiliza_Tramita_Envio_e_recebimento_de_processos.html#o-que-representa-o-status-de-um-tramite-e-como-proceder-caso-o-processo-esteja-parado-em-algum-dos-status>`_ do Tramita GOV.BR, ocorre devido a um problema no sistema de destino em receber o trâmite enviado. 

Nossa recomendação é que entre em contato com órgão de destino questionando sobre eventual ciência da atual situação, e orientando a realização de uma verificação interna na tentativa de solucionar essa situação.  

Se porventura esse contato já tenha sido realizado, e mesmo com análises internas o órgão não conseguiu resolver o problema, é necessário que seja aberto um chamado por parte do órgão de destino, para que nossa equipe seja capaz de avaliar com mais cautela a situação reportada.  

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen). Conheça, também, nossa `FAQ Tramita.GOV.BR <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html>`_. 


Atenciosamente, 

Equipe do Processo Eletrônico Nacional 

Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendentes N1 – Caso remetente 
Atendentes N2 – Caso destinatário  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Gestor


Palavras-chave  
~~~~~~~~~~~~~~

Status 2| monitoramento | gearman | supervisor | verificação | Parado 


Referências  
~~~~~~~~~~~~

10106886 