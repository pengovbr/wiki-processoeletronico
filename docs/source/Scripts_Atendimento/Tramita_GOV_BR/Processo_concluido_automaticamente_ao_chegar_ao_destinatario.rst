2023.08.08-Processo concluído automaticamente ao chegar ao destinatário-V1
===========================================================================

Situação  
~~~~~~~~~

Usuário descreve que os processos são tramitados, via Tramita.GOV.BR, com sucesso, mas observam que no destinatário os processos são concluídos automaticamente na chegada. Dessa forma, o usuário destinatário não sabe que os processos chegaram na sua unidade.   Foi relatado a situação com a versão 3.3.0 do módulo do Tramita, mas, em princípio, independe de versão

Quando Ocorre
~~~~~~~~~~~~~~

Por alguma característica do SEI, a integração do Tramita ao Sistema não executa a operação de envio do mesmo jeito que o sistema executa em trâmites internos. Ao consultar o andamento, nota-se que ao enviar o processo de uma unidade pra outra, o sistema envia o processo e (a menos que você mantenha aberto o processo na unidade) conclui automaticamente na unidade remetente. Por essa limitação, o Tramita.GOV.BR, depois que gera o processo na unidade indicada como "Unidade SEI para Representação de Órgãos Externos", faz duas operações separadas: 1ª) ele envia o processo. 2ª) Ele conclui na unidade remetente. 

O problema começa a surgir quando os administradores cadastram, no menu "Administração > Tramita GOV.BR > Parâmetros de Configuração do Módulo de Tramitações Tramita GOV.BR", nesse parâmetro "Unidade SEI para Representação de Órgãos Externos", uma unidade já em uso no sistema, como o Protocolo Central etc. e NÃO uma unidade específica para o Tramita, como solicita o Manual. Ele recomenda que, os dados da unidade a ser criada SÓ pra gerar os processos do Tramita: "sigla = Tramita.GOV.BR, nome: Processo recebido via Tramita.GOV.BR" (cadastrado dessa forma, fica mais fácil para o usuário, ao visualizar o andamento, entender que se trata de um processo que veio via Tramita).

Solução Sugerida
~~~~~~~~~~~~~~~~~~

Após a contextualização, temos o seguinte caminho: 

  

1) O admin cadastrou a unidade "Protocolo.Sede" nesse menu que citei.  

2) O remetente do processo escolheu como destinatária a unidade "Protocolo" (ou alguma unidade do órgão mapeada lá no portal de Administração para fazer chegar os processos na unidade "Protocolo.Sede"). 

3) O SEI gerou o processo e os documentos na unidade "Protocolo.Sede"; 

4) O SEI enviou o processo da unidade "Protocolo" para a unidade "Protocolo.Sede"; 

5) O SEI concluiu o processo na unidade "Protocolo.Sede". 

 

Após essas etapas a situação do processo é “Concluído”.


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado Senhor(a), 

Solicito que verifique se a configuração do módulo do Tramita GOV.BR em seu sistema foi realizada corretamente, conforme instruções detalhadas no manual. Especificamente, para resolver o problema em questão, consulte o item 2.1 intitulado Unidade SEI para representação de órgãos externos no seguinte `link <https://github.com/supergovbr/mod-sei-pen/blob/master/docs/INSTALL.md#unidade-sei-para-representa%C3%A7%C3%A3o-de-%C3%B3rg%C3%A3os-externos>`_ 

Para contextualizar a questão, por alguma característica do SEI, a integração do Tramita ao Sistema não executa a operação de envio do mesmo jeito que o sistema executa em trâmites internos. Ao consultar o andamento, nota-se que ao enviar o processo de uma unidade pra outra, o sistema envia o processo e (a menos que você mantenha aberto o processo na unidade) conclui automaticamente na unidade remetente. Por essa limitação, o Tramita.GOV.BR, depois que gera o processo na unidade indicada como "Unidade SEI para Representação de Órgãos Externos", faz duas operações separadas: 1ª) ele envia o processo. 2ª) Ele conclui na unidade remetente. 

O problema começa a surgir quando os administradores cadastram, no menu "Administração > Tramita GOV.BR > Parâmetros de Configuração do Módulo de Tramitações Tramita GOV.BR", nesse parâmetro "Unidade SEI para Representação de Órgãos Externos", uma unidade já em uso no sistema, como o Protocolo Central etc. e NÃO uma unidade específica para o Tramita, como solicita o Manual. Ele recomenda que, os dados da unidade a ser criada SÓ pra gerar os processos do Tramita: "sigla = Tramita.GOV.BR, nome: Processo recebido via Tramita.GOV.BR" (cadastrado dessa forma, fica mais fácil para o usuário, ao visualizar o andamento, entender que se trata de um processo que veio via Tramita). 

Após a contextualização, temos o seguinte caminho: 

  
1) O admin cadastrou a unidade "Protocolo.Sede" nesse menu que citei.  

2) O remetente do processo escolheu como destinatária a unidade "Protocolo" (ou alguma unidade do órgão mapeada lá no portal de Administração para fazer chegar os processos na unidade "Protocolo.Sede"). 

3) O SEI gerou o processo e os documentos na unidade "Protocolo.Sede"; 

4) O SEI enviou o processo da unidade "Protocolo" para a unidade "Protocolo.Sede"; 

5) O SEI concluiu o processo na unidade "Protocolo.Sede". 

Após essas etapas a situação do processo é “Concluído” 

Para saber mais sobre as ações do Tramita GOV.BR, acesse gov.br/pen 
  

Atenciosamente, 

[nome profissional do atendente]


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 Atendentes de 1º nível  


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Perfil negocial


Palavras-chave  
~~~~~~~~~~~~~~

Tramita; bug; concluído


Referências  
~~~~~~~~~~~~

`Manual de instalação Tramita.GOV.BR 
<https://github.com/supergovbr/mod-sei-pen/blob/master/docs/INSTALL.md#unidade-sei-para-representa%C3%A7%C3%A3o-de-%C3%B3rg%C3%A3os-externos>`_ 