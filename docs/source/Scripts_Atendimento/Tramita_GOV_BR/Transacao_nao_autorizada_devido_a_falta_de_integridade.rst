2023.00.18-Transação não autorizada devido à falta de integridade do seu certificado com common name-V1
=======================================================================================================

Situação  
~~~~~~~~

Ao ser executado, o agendamento PENAgendamentoRN :: processarTarefasPEN registra a seguinte mensagem de erro no InfraLog do SEI: 

:: 

  SoapFault exception: [SOAP-ENV:Server] Transação não autorizada devido a falta de integridade do seu certificado com common name... 


Quando Ocorre
~~~~~~~~~~~~~~




Solução Sugerida
~~~~~~~~~~~~~~~~

Verificar se o certificado utilizado é o correto para o ambiente em uso. Certificado de produção para o ambiente de produção e o certificado de homologação para o ambiente de homologação. Idem para os órgãos que possuam mais de um SPE vinculado ao Tramita; 

Verificar se os certificados utilizados não estão duplicados, ou seja, se não existe mais de um ambiente utilizando o mesmo certificado; 

Orientar que seja feita a substituição dos certificados, caso seja identificada alguma inconsistência ou duplicidade; 

Encaminhar o vídeo elaborado pela equipe que auxilia na solução desse tipo de situação (link do vídeo - https://www.youtube.com/watch?v=hP6XDEdvS5Q) 

Após as devidas verificações e alterações, instruir que seja realizada uma nova tentativa de execução das rotinas. 

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado(a), 

Gostaríamos de destacar um ponto importante sobre o uso dos certificados no Tramita GOV.BR. 

É fundamental que o certificado esteja corretamente associado ao ambiente em que será utilizado, seja ele de homologação ou produção.  

Os certificados de homologação devem ser utilizados exclusivamente no ambiente de homologação, enquanto certificados de produção devem ser aplicados apenas no ambiente de produção. A mesma questão se aplica para os órgãos que possuem mais de um SPE vinculado ao Tramita, para cada SPE um certificado exclusivo. 

Caso tente utilizar um certificado de homologação no ambiente de produção, isso pode resultar em conflitos e erros durante a integração ou a execução de algumas rotinas de agendamento relacionadas ao módulo. Reforçamos que as orientações estão de acordo com o estabelecido no `item 4.2 da FAQ do Tramita <https://wiki.processoeletronico.gov.br/pt-br/homologacao/Tramita_GOV_BR/Perguntas_frequentes/Ambientes_de_Homologacao_e_de%20_Producao.html#cada-ambiente-possui-seu-proprio-certificado-digital>`_. 

Dessa forma, recomendamos que verifique se os certificados utilizados estão devidamente configurados e utilizados nos ambientes corretos. Recomendamos ainda que verifique a existência de mais de um ambiente utilizando o mesmo certificado digital. 

Após as verificações e eventuais alterações, orientamos que realize uma nova tentativa de execução dos comandos e observe se há a persistência do registro de erro no InfraLog do sistema. 

Para ilustrar melhor essa questão e fornecer um entendimento mais detalhado do problema, orientamos que assista vídeo demonstrativo, específico para a situação relada, elaborado por nossa equipe: `Vídeo no YouTube <https://www.youtube.com/watch?v=hP6XDEdvS5Q>`_ 

Informamos ainda que não havendo mais nenhum tipo de comunicação, esse chamado será encerrado após 48 horas. 

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em gov.br/pen (https://gov.br/pen). Conheça também nossa FAQ Tramita.GOV.BR. 


Atenciosamente, 

Equipe de Suporte PEN 


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente N2


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Atendente N2


Palavras-chave  
~~~~~~~~~~~~~~

Atendente N2


Referências  
~~~~~~~~~~~~

`Item 4.2 do FAQ do Tramita <https://wiki.processoeletronico.gov.br/pt-br/homologacao/Tramita_GOV_BR/Perguntas_frequentes/Ambientes_de_Homologacao_e_de%20_Producao.html#cada-ambiente-possui-seu-proprio-certificado-digital>`_  

`Vídeo no canal <https://www.youtube.com/watch?v=hP6XDEdvS5Q>`_  

Chamado - 6794652 