2024.02.21-Processo parado no status 2-V1
=========================================

Situação  
~~~~~~~~

O processo ficou parado no status 2 e não é recebido pelo sistema de destino. 

Quando Ocorre
~~~~~~~~~~~~~~

Verificação do agendamento, esse agendamento é o responsável por fazer com que o sistema de destino "pergunte" ao tramita se há algo endereçado para ele monitorando o tempo da verificação periódica.


Solução Sugerida
~~~~~~~~~~~~~~~~

O seguinte passo a passo deve ser executado pelo destinatário do trâmite:

**Inicialmente, realizar os passos a seguir:**

* Verifique o log do script de monitoramento (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#33-opcional-script-de-monitoramento)
* Desabilite o agendamento do módulo do tramita 'PENAgendamentoRN :: processarTarefasPEN'.
* Desligue gearman e supervisor. 
* Comente eventual configuração do Gearman na configuração do módulo do Tramita 'ConfiguracaoModPEN.php' (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#42-tr%C3%A2mites-n%C3%A3o-realizados-ou-recibos-n%C3%A3o-obtidos)
* Mate todos os workers que ainda estejam sendo executados.

**Após concluir essas etapas, realize o seguinte:**

* Execute o script de verificação 'verifica_instalacao_modulo_pen.php' e armazene seu log (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#110-verifica%C3%A7%C3%A3o-e-testes-da-instala%C3%A7%C3%A3o-do-m%C3%B3dulo)
* Execute o script MonitoramentoTarefasPEN.php e armazene seu Log.
* Verifique o log resultante do processo. Após verificar o log e tomar as medidas necessárias, pedimos que reative todas as funcionalidades anteriormente desativadas.

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Órgão de Destino**

Prezado xxxxx.

O procresso parado no status 2 é devido problema no ssitema de destino do trâmite.. Para resolução do problema,. é necessário que seja  realizado o seguinte passo a passo:

* Verifique o log do script de monitoramento (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#33-opcional-script-de-monitoramento)
* Desabilite o agendamento do módulo do tramita 'PENAgendamentoRN :: processarTarefasPEN'.
* Desligue gearman e supervisor. 
* Comente eventual configuração do Gearman na configuração do módulo do Tramita 'ConfiguracaoModPEN.php' (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#42-tr%C3%A2mites-n%C3%A3o-realizados-ou-recibos-n%C3%A3o-obtidos)
* Mate todos os workers que ainda estejam sendo executados.

Após concluir essas etapas, realize o seguinte:

* Execute o script de verificação 'verifica_instalacao_modulo_pen.php' e armazene seu log (https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md#110-verifica%C3%A7%C3%A3o-e-testes-da-instala%C3%A7%C3%A3o-do-m%C3%B3dulo)
* Execute o script MonitoramentoTarefasPEN.php e armazene seu Log.
* Verifique o log resultante do processo. Após verificar o log e tomar as medidas necessárias, pedimos que reative todas as funcionalidades anteriormente desativadas.

Atenciosamente,

Equipe do Processo Eletrônico Nacional
Recomendamos que acompanhe as notícias e atualizações fornecidas no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen) e também ⁠FAQ Tramita GOV.BR (https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br

Atenciosamente,
Xxxxxxx.

**Órgão Remetente**

Prezado(a),
 
Informamos que situação reportada, definida no item 7.12.5 da FAQ Tramita (Embutir o link da FAQ no “7.12.5 da FAQ Tramita”), ocorre devido a um problema no sistema de destino em receber o trâmite enviado.

Nossa recomendação é que entre em contato com órgão de destino questionando sobre eventual ciência da atual situação, e orientando a realização de uma verificação interna na tentativa de solucionar essa situação.
Se porventura esse contato já tenha sido realizado, e mesmo com análises internas o órgão não conseguiu resolver o problema, é necessário que seja aberto um chamado por parte do órgão de destino, para que nossa equipe seja capaz de avaliar com mais cautela a situação reportada. Recomendamos que acompanhe as notícias e atualizações fornecidas no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen) e também ⁠FAQ Tramita GOV.BR (https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/faq-tramita-gov.br

Atenciosamente,

Equipe do Processo Eletrônico Nacional


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(Atendente N3)  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Gestor


Palavras-chave  
~~~~~~~~~~~~~~

Status 5 | monitoramento | gearman


Referências  
~~~~~~~~~~~~

Não há