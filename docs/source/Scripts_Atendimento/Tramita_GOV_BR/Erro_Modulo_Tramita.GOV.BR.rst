2024.04.12-Erro Módulo Tramita.GOV.BR-V1
========================================

Situação  
~~~~~~~~

Este procedimento tem a finalidade de orientar o usuário sobre “ERRO MÓDULO TRAMITA.GOV.BR DO SEI”.

Quando Ocorre
~~~~~~~~~~~~~~

Sobre erro apresentado na instalação/utilização do módulo TRAMITA.GOV.BR.


Solução Sugerida
~~~~~~~~~~~~~~~~

Configure o sistema para que não envie o e-mail de notificação quando receber novos processos. 


1º Passo: Validar junto ao usuário a versão do módulo em uso, e identificar em que momento o erro relatado ocorre.  
 
2º Passo: Após identificação do momento do erro, obter os logs do sistema (em Infra >> Log) do horário em que ocorre, e caso nada seja apresentado, solicitar à equipe de TI do órgão em questão, os logs do Apache.  

3º Passo: Possuindo as evidências e logs do erro, validar no site do projeto se o erro em questão já foi corrigido em versões mais atuais do módulo, em https://github.com/supergovbr/mod-sei-pen/issues?q=is%3Aopen+is%3Aissue. Se já houver uma melhoria com a correção, solicitar ao usuário requisite a atualização do módulo à equipe de TI.  

4º Passo: Se no passo anterior não houver uma solução para o caso, através dos logs obtidos, será necessária uma avaliação se o erro é um bug do módulo, erro no sistema de processo eletrônico (exemplo: SEI, SUPER.BR), configuração incorreta do módulo ou questões internas do ambiente do solicitante.  
 
5º Passo: Finalizado o passo acima, o erro sendo um bug desconhecido do módulo ou do sistema de processo eletrônico, reportar à equipe de desenvolvimento do PEN para que seja feita a melhoria na solução. Caso o erro apresentado aparente ser uma configuração incorreta do módulo, solicitar à equipe de TI a execução do script php <DIRETÓRIO RAIZ DE INSTALAÇÃO DO SEI E SIP>/sei/scripts/mod-pen/verifica_instalacao_modulo_pen.php, que verifica todos os passos da instalação, observar o ponto que a verificação é finalizada, de acordo com isso, pelo manual do módulo, adequar a instalação no ambiente orientando a equipe de TI do órgão.

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado Senhor(a) [nome do usuário], 

Configure o sistema para que não envie o e-mail de notificação quando receber novos processos. 

1º Passo: Validar junto ao usuário a versão do módulo em uso, e identificar em que momento o erro relatado ocorre.  
 
2º Passo: Após identificação do momento do erro, obter os logs do sistema (em Infra >> Log) do horário em que ocorre, e caso nada seja apresentado, solicitar à equipe de TI do órgão em questão, os logs do Apache.  

3º Passo: Possuindo as evidências e logs do erro, validar no site do projeto se o erro em questão já foi corrigido em versões mais atuais do módulo, em https://github.com/supergovbr/mod-sei-pen/issues?q=is%3Aopen+is%3Aissue. Se já houver uma melhoria com a correção, solicitar ao usuário requisite a atualização do módulo à equipe de TI.  

4º Passo: Se no passo anterior não houver uma solução para o caso, através dos logs obtidos, será necessária uma avaliação se o erro é um bug do módulo, erro no sistema de processo eletrônico (exemplo: SEI, SUPER.BR), configuração incorreta do módulo ou questões internas do ambiente do solicitante.  
 
5º Passo: Finalizado o passo acima, o erro sendo um bug desconhecido do módulo ou do sistema de processo eletrônico, reportar à equipe de desenvolvimento do PEN para que seja feita a melhoria na solução. Caso o erro apresentado aparente ser uma configuração incorreta do módulo, solicitar à equipe de TI a execução do script php <DIRETÓRIO RAIZ DE INSTALAÇÃO DO SEI E SIP>/sei/scripts/mod-pen/verifica_instalacao_modulo_pen.php, que verifica todos os passos da instalação, observar o ponto que a verificação é finalizada,  de acordo com isso, pelo manual do módulo, adequar a instalação no ambiente orientando a equipe de TI do órgão. 
 

Para saber mais sobre as ações do PEN, acesse gov.br/pen 
  

Atenciosamente, 

[nome profissional do atendente]” 


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Não se aplica.


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Negócio/Técnico 


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; NRE; Errada.


Referências  
~~~~~~~~~~~~

Não se aplica.