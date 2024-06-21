2024.02.09-Processo parado no Status 5-V1
===========================================

Situação  
~~~~~~~~

Após envio do processo este se encontra parado no status 5 - Recibo de conclusão do trâmite recebido pelo tramita. 


Quando Ocorre
~~~~~~~~~~~~~~

A situação decorre do fato de o remetente não ter recebido o recibo para conclusão do trâmite. Por conta disso, o processo permanece no status 5, aguardando o recebimento do recibo. 

Solução Sugerida
~~~~~~~~~~~~~~~~

**Caso o remetente (origem) tenha aberto o chamado:** 

Orientar a verificar o log do script de monitoramento, seguido da execução do script de verificação e armazenamento do log referente ao script. Além disso, é necessário orientar que seja verificado o comando curl e após a execução de todas as verificações, realizar a análise dos resultados providenciando a correção dos problemas identificados.  

Na sequência, é esperado que o órgão/entidade receba os recibos de conclusão para que dessa forma o trâmite seja finalizado, conforme definido no `fluxo de status disponível no Manual Técnico Operacional do Tramita GOV.BR <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/MANUAL_TECNICO_OPERACIONAL/ACESSO_AO_AMBIENTE_DE_PRODUCAO.html#fluxo-de-status>`_. 

Mencionar o `Item 7.12 das Perguntas Frequentes (FAQ) do Tramita <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/Utiliza_Tramita_Envio_e_recebimento_de_processos.html#o-que-representa-o-status-de-um-tramite-e-como-proceder-caso-o-processo-esteja-parado-em-algum-dos-status>`_.  

**Caso o destinatário (destino)  tenha aberto o chamado:**

Orientar, inicialmente, a entrar em contato com o órgão remetente, conforme disposto no item 7.12.5 das Perguntas Frequentes (FAQ) do Tramita (Embutir: https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br).  

O contato com o órgão destinatário deve ser acompanhado de mensagem clara que informe sobre o problema estar centrado no órgão de origem, e que para isso é fundamental que haja um contato com o órgão para saber se eles estão cientes da situação.  

Por fim, é esperado que o órgão/entidade de origem receba os recibos de conclusão para que dessa forma o trâmite seja finalizado, conforme definido no fluxo de status disponível no Manual Técnico Operacional do Tramita GOV.BR (Embutir no nome do manual - https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/ACESSO_AO_AMBIENTE_DE_PRODUCAO.html#fluxo-de-status). 


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Modelo resposta para o Remetente:** 

Prezado(a), 

Informamos que situação reportada, definida no item 7.12.5 da FAQ Tramita (Embutir o link da FAQ no “7.12.5 da FAQ Tramita”), ocorre devido a um problema de comunicação com o Sistema de Processo Eletrônico (SPE) do(a) órgão/entidade remetente (origem).  
 
Conforme disponível no Portal de Administração, o trâmite ainda não foi concluído. Isto é evidenciado por meio da mensagem de aviso  

                    *"O trâmite ainda não foi concluído. Acompanhe no Painel de Controle o andamento da tramitação, antes de realizar uma nova tentativa. NRE: xxxxxxxxxxxxxxxx. Processo: XXXXX.XXXXXX/XXXX-XX."*  

Nesse sentido, é necessário que seu órgão receba (remetente) o recibo de conclusão, finalizando assim o trâmite, atualizando para o Status 6. 

Para isso, recomendamos que a área técnica responsável realize os seguintes passos: 

Verificar o log do script de monitoramento (Verificar o log – Embutir link); 

Executar o script de verificação 'verifica_instalacao_modulo_pen.php' e armazenar o log gerado (Verificação - Embutir link); 

Verificar o comando curl: curl –cert <caminho_para_meu_certificado.pem>     'https://api.conectagov.processoeletronico.gov.br/interoperabilidade/rest/v3/tramites/pendentes?todas=true'-v 

Após executar os passos 1 ao 3, analisar os resultados apresentados e proceder com a correção dos problemas identificados. 

A tempo, como forma de melhor orientar a compreensão da situação relatada é sugerida a leitura dos itens 7.12.5 e 6.1 da nossa FAQ (Embutir link da FAQ no “nossa FAQ”), respectivamente.  

Não obstante, uma vez que a sequência apresentada como solução não tenha sido suficiente para desbloquear o status do referido trâmite, será necessária a coleta de evidências adicionais a serem solicitadas pela equipe do PEN, a depender da situação. 

Caso existam dúvidas sobre como executar algum dos passos, acesse o vídeo de orientação (Embutir em “vídeo de orientação” - https://youtu.be/GY9dtTHs9RU) elaborado por nossa equipe e disponibilizado em nosso canal oficial. Além disso, é possível que suas dúvidas possam ser esclarecidas em nossa página de perguntas frequentes (FAQ) (Embutir link - https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br) ou por meio do nosso Manual Técnico Operacional (Embutir link - https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/index.html) 

Recomendamos que acompanhe as notícias e atualizações fornecidas no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen) e a FAQ Tramita GOV.BR. 

Atenciosamente, 

Processo Eletrônico Nacional 

**Modelo resposta para o Destinatário:** 

 

Prezado(a), 
  

Informamos que situação reportada, definida no item 7.12.5 da FAQ Tramita (Embutir o link da FAQ no “7.12.5 da FAQ Tramita”), ocorre devido a um problema de comunicação com o Sistema de Processo Eletrônico (SPE) do(a) órgão/entidade remetente (origem).  
 
Conforme disponível no Portal de Administração, o trâmite ainda não foi concluído. Isto é evidenciado por meio da mensagem de aviso  

   *"O trâmite ainda não foi concluído. Acompanhe no Painel de Controle o andamento da tramitação, antes de realizar uma nova tentativa. NRE: xxxxxxxxxxxxxxxx. Processo: XXXXX.XXXXXX/XXXX-XX."*  

Nesse sentido, é necessário que o órgão remetente receba o recibo de conclusão, finalizando assim o trâmite, atualizando para o Status 6. 

Nossa recomendação é que entre em contato com órgão remetente questionando sobre eventual ciência da atual situação, e orientando a realização de uma verificação interna na tentativa de solucionar essa situação. 

Se porventura esse contato já tenha sido realizado, e mesmo com análises internas o órgão não conseguiu realizar o recebimento do recibo e consequentemente, o desbloqueio do trâmite, é necessário que seja aberto um chamado por parte do órgão remetente, para que nossa equipe seja capaz de avaliar com mais cautela a situação reportada. 

Recomendamos que acompanhe as notícias e atualizações fornecidas no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen) e a FAQ Tramita GOV.BR 

Atenciosamente, 

Processo Eletrônico Nacional 

 
Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendentes 1° Nível 

Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Gestor

Palavras-chave  
~~~~~~~~~~~~~~

STATUS 5; Tramita; Parado;  

Referências  
~~~~~~~~~~~~

4572359 | 4526561 

 