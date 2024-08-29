2024.08.29-Ambientes diferentes utilizando o mesmo certificado digital-V2
===========================================================================

Situação  
~~~~~~~~

O processo tramitado recebe status 6. Contudo, o órgão de destino não consegue localizar o processo no seu sistema.

Quando Ocorre
~~~~~~~~~~~~~~

Se o trâmite está no status 6, isso que confirma que o processo foi realmente entregue no sistema de destino. Contudo, o usuário não localiza no seu sistema. Isso geralmente acontece quando dois ambientes distintos estão utilizando o meu certificado e o processo foi recebido por um ambiente não desejado.


Solução Sugerida
~~~~~~~~~~~~~~~~

Se o trâmite está no status 6, isso que confirma que o processo foi realmente entregue no sistema de destino. Contudo, o usuário não localiza no seu sistema. Isso geralmente acontece quando dois ambientes distintos estão utilizando o meu certificado e o processo foi recebido por um ambiente não desejado. 


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado(a),  

Informamos que o problema relatado está relacionado à existência de mais de um ambiente utilizando o mesmo certificado digital. Geralmente isso decorre da utilização do certificado do ambiente de produção no ambiente de homologação, ou seja, o mesmo certificado em dois ambientes distintos. Conforme instruído no item `Item 4.2 da FAQ <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/Ambientes_de_Homologacao_e_de%20_Producao.html#cada-ambiente-possui-seu-proprio-certificado-digital>`_, cada ambiente deve possuir o seu próprio certificado digital. 

Para esses casos em que o processo recebe o status 6 e o órgão de destino não identifica o seu recebimento, cabe ressaltar que o processo foi tramitado com sucesso, ou seja, sim ele foi recebido em algum sistema e, provavelmente, o não desejado pelo usuário. Dessa forma, é necessário identificar qual ambiente recebeu o processo de forma indevida. 

Uma vez identificado o ambiente, é necessário desabilitar os agendamentos¹ e que o processo seja devolvido para a origem, por meio deste. Somente após sua devolução o ambiente pode ter seu certificado alterado para que não volte a utilizar o mesmo certificado do ambiente de produção. 

    ¹ O SEI não necessita do agendamento para trâmite individual do processo. Não se deve enviar via lote pois é necessário que o agendamento esteja habilitado. Para       os outros SPEs é necessário que o setor responsável verifique a forma de realizar esse procedimento.  

Para as exceções em que não seja possível realizar o acesso ou a identificação do ambiente que está fazendo o uso do certificado de produção de forma indevida, se faz necessário que: 

Seja gerado um novo certificado para o ambiente de produção; 

O processo seja desbloqueado² no órgão de origem; 

O processo seja enviado novamente para o órgão de destino, já de posse do novo certificado digital. 
 
     ² O desbloqueio mencionado é válido para o SEI. Para os outros SPEs é necessário que o setor responsável verifique a forma de realizar esse procedimento. 

É fundamental enfatizar que, antes de qualquer alteração na base, é imperativo realizar uma cópia de segurança dos dados. Isso é essencial para garantir a conformidade com as políticas de segurança e a continuidade das operações do órgão em questão. Complementamos que o tramita não controla a posse do processo. 

Informamos ainda que não havendo mais nenhum tipo de comunicação, esse chamado será encerrado após 48 horas. 

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen). Conheça, também, nossa `FAQ Tramita.GOV.BR <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html#perguntas-frequentes-faq>`_. 

Atenciosamente, 

Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente N2

Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Gestor


Palavras-chave  
~~~~~~~~~~~~~~

Certificado digital | status 6 | Processo não recebido | Ambientes concorrentes  

Referências  
~~~~~~~~~~~~

* `Item 4.2 da FAQ <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/Ambientes_de_Homologacao_e_de%20_Producao.html#cada-ambiente-possui-seu-proprio-certificado-digital>`_ 

* Chamado 3201224 