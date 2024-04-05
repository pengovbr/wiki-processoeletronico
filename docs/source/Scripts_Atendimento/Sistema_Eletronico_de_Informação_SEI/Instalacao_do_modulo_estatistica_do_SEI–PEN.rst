2024.04.05-Instalação do módulo estatística do SEI–PEN-V1
=========================================================

Situação  
~~~~~~~~

Usuário com dificuldade/dúvidas na instalação do módulo.


Quando Ocorre
~~~~~~~~~~~~~~

Quando o técnico recebe um chamado no portal com dúvidas relacionadas à instalação do modulo estatística do SEI.

Solução Sugerida
~~~~~~~~~~~~~~~~

Caso a dúvida seja relacionada a instalação/configuração do ambiente, indique o seguinte `link. <https://github.com/pengovbr/mod-sei-estatisticas/blob/master/README.md>`_ 
 

Em uma das etapas de instalação do módulo, o usuário deverá solicitar a chave de conexão para completar a configuração, esta chave é gerada pela equipe do PEN, neste caso deve-se registrar um chamado com a categoria PEN – Módulo Estatística – Instalação e direcioná-lo para o grupo CIT 3º Nível - PEN. 

 
.. admonition:: Importante

   Verifique se há rota aberta do servidor do SEI onde roda o agendamento para o servidor Webservice coletor; 

   A rota pode ser facilmente verificada usando, por exemplo, o comando: 
   
    curl https://estatistica.processoeletronico.gov.br 

   o resultado deverá ser algo como: 

   {"sistema":"WebService Estatísticas do SEI","versao":"1.0.0"} 
 

**Cadastro de Sigla e Chave para Novos Órgão** 

Antes de cadastrar algum órgão/sistema faz-se necessária avaliação sobre a sigla a ser criada. A sigla deve ser única, é ela que o órgão irá informar no arquivo de configuração do SEI para enviar as informações. 

**Sigla:** deve ter no máximo 10 caracteres  

**Senha:** deve ter no máximo 10 caracteres (use letras maiúscula, minúscula, números) (evite caracteres especiais como "@", "'" (aspas), ".." (trema)) 

 
.. admonition:: Importante

   Verificar se o e-mail do solicitante vem do órgão. Não aceite e-mail que não sejam do órgão solicitante, por ex: gmail.com, Hotmail.com 

**Cadastrar em Dev/**

* https://estatistica.dev.processoeletronico.gov.br/admin 
* User: admin; senha: admin@123; 
* Clique em Novo; 
* A sigla de homolog deve obrigatoriamente conter -H no final para indicar que se trata de homologação; 
* Adicione a sigla e a senha definida anteriormente e salve; 
* Envie ao user: 
   **Homologação:** 
    **url:** https://estatistica.dev.processoeletronico.gov.br 
   
    **sigla:** <<sigla gerada>>
   
    **chave:** <<chave gerada>> 

**Cadastrar em Prod** 

* https://estatistica.processoeletronico.gov.br/admin 
* User: admin; senha: admin@123; 
* Clique em Novo; 
* Adicione a sigla e a senha definida anteriormente e salve; 
* Envie ao user: 
   **Produção:**  
    **url:** https://estatistica.processoeletronico.gov.br 
    
    **sigla:** <<sigla gerada>> 
    
    **chave:** <<chave gerada>> 

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

“Prezado Senhor(a) [nome do usuário], 

Em atenção à sua solicitação, informamos que há um link das instruções da instalação do ambiente no seguinte link: https://github.com/pengovbr/mod-sei-estatisticas/blob/master/README.md

Em uma das etapas de instalação do modulo citado, você deverá solicitar uma chave de conexão para completar a configuração, a chave em questão é gerada pela equipe do PEN. Para a chave ser gerada, registre um chamado com a categoria PEN – Módulo Estatística – Instalação. 

Para saber mais sobre as ações do PEN, acesse: gov.br/pen 

Atenciosamente, 

[nome profissional do atendente]” 


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atribuído ao atendente de 1º nível. Somente a criação da chave de conexão é feita pelo atendente de 3º nível. 

Perfil do usuário  
~~~~~~~~~~~~~~~~~~

A demanda tem caráter técnico, sendo o usuário com perfil Infra.


Palavras-chave  
~~~~~~~~~~~~~~

Módulo estatística, PEN, SEI, instalação


Referências  
~~~~~~~~~~~~

https://github.com/pengovbr/mod-sei-estatisticas/blob/master/README.md   

gov.br/pen