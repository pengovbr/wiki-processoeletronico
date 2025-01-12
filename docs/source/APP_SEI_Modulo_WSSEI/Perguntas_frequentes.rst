Perguntas Frequentes
====================

O que é APP SEI?
----------------

O Aplicativo SEI foi desenvolvido para dispositivos móveis, com o objetivo de permitir aos usuários: consultar, acompanhar, assinar e tramitar documentos eletrônicos, em interação automática com a ferramenta SEI da instituição. 

O aplicativo se conecta nativamente com o SEI Web?
--------------------------------------------------

Não, a versão WEB não se conecta nativamente com o aplicativo. Essa conexão é realizada por meio de módulo instalado na instância do órgão/ entidade.

Entre em contato com a área responsável em seu órgão/ entidade e confirme se o módulo está instalado antes de avaliar negativamente o aplicativo nas lojas.

O aplicativo possui todas as funcionalidades disponíveis no SEI Web?
--------------------------------------------------------------------

O aplicativo e a versão web são produtos diferentes. O aplicativo está em constante evolução e novas funcionalidades são incluídas à medida que novas versões são lançadas.  Caso você tenha interesse em sugerir uma nova funcionalidade ou alguma evolução, registre a sugestão de melhoria por meio da `Central de Atendimento <https://www.gov.br/gestao/pt-br/assuntos/central-de-atendimento>`_.

A categoria do chamado é PEN - APLICATIVO DO SEI - SUGESTÃO DE MELHORIA.

Quais são as funcionalidades disponíveis atualmente no aplicativo?
------------------------------------------------------------------

1. Controle de Processos;
2. Gerenciamento de Acompanhamento Especial;
3. Gerenciamento de Bloco Interno;
4. Gerenciamento de Bloco de Assinatura;
5. Gerenciamento de Marcadores;
6. Criação de Processo;
7. Criação e Edição de Documento Interno;
8. Criação de Documento Externo;
9. Atribuição de Processo;
10. Atribuição de Credencial de Acesso;
11. Sobrestamento de Processo;
12. Atualizar andamento do Processo;
13. Realizar anotações no Processo;
14. Assinatura de Documentos Interno por senha e por biometria;
15. Dar ciência em Documento e em Processo;
16. Envio de Processo para outra unidade;
17. Conclusão de Processo na unidade;
18. Pesquisa de Processos e de Documentos;
19. Compartilhamento de Documento Interno, de Documento Externo, de Acompanhamento Especial, de Bloco Interno e de Bloco Externo.

O aplicativo é compatível com qual versão do SEI Web?
-----------------------------------------------------

O aplicativo é compatível com as versões 3.0.11 até 3.1.4 do SEI Web.

Lembrando que é preciso instalar o módulo de conexão com o aplicativo na instância.

Qual é o nome do módulo utilizado para conexão do aplicativo com o SEI Web?
---------------------------------------------------------------------------

O nome do módulo é o WSSEI (Webservice SEI).

Qual é o endereço para download do módulo de conexão do SEI com o aplicativo?
------------------------------------------------------------------------------

O endereço é o seguinte: https://github.com/pengovbr/mod-wssei/.

Qual é o objetivo de ler o QRCode na versão web do SEI?
-------------------------------------------------------

O aplicativo SEI e o SEI Web são produtos diferentes. A conexão entre o aplicativo e o SEI Web é realizada por meio de um módulo denominado WSSEI. O QRCode é exibido apenas se o módulo foi instalado na instância do órgão.

A infraestrutura do SEI descentralizada, ou seja, cada órgão possui a sua própria infraestrutura. O papel do QRCode é poupar o usuário digitar o endereço da versão web, bem como confirmar que o módulo foi instalado. 

Qual é a localização do QRCode utilizado pelo aplicativo SEI?
--------------------------------------------------------------

O QRCode está abaixo do menu esquerdo. Contudo, ele é exibido apenas se o módulo WSSEI (https://github.com/spbgovbr/mod-wssei) está instalado na instância do órgão. Caso não o encontre, por favor entrar em contato com a área responsável pelo SEI em seu órgão/ entidade. Esse QRCode não se confunde com aquele disponível no rodapé dos documentos internos. 

Os serviços do módulo WSSEI estão documentados?
-----------------------------------------------

Sim, eles estão documentados por meio do Postman.

Mais informações em https://github.com/pengovbr/mod-wssei/blob/master/docs/api.md. 

Os serviços do módulo WSSEI podem ser testados?
------------------------------------------------

Os testes funcionais dos serviços podem ser executados por meio do Postman. 

É importante que durante a atualização do módulo em algum ambiente de homologação ou local sejam executados os testes no objetivo de verificar se os serviços realmente estão funcionando corretamente.

Mais informações em: https://github.com/pengovbr/mod-wssei/blob/master/tests/README.md.

O aplicativo não está carregando documentos ou processos, o que está acontecendo?
---------------------------------------------------------------------------------

O aplicativo depende do módulo WSSEI à medida que uma nova versão é lançada esse módulo deve ser atualizado para evitar problemas de funcionamento.

Entre em contato com a área responsável pelo SEI em seu órgão/entidade e confirme se o módulo foi atualizado para a última versão antes de abrir chamado na Central de Atendimento do PEN ou avaliar o aplicativo na loja.  A categoria utilizada para registro de erro no aplicativo é PEN - APLICATIVO DO SEI - ERRO.

Quais são o login e a senha?
----------------------------

O login e senha são os mesmos utilizados na instância do SEI  na qual foi lido o QRCode.

Quais são os usuários que podem utilizar o aplicativo?
------------------------------------------------------

Apenas usuários internos podem utilizar o aplicativo.

O aplicativo envia notificações? Se sim, em qual(is) situação(ções)?
---------------------------------------------------------------------

Sim, o aplicativo envia notificações. Atualmente, apenas é enviada notificação para atribuição de processo ao usuário logado. A versão web contínua não enviando notificações.

Qual é a versão mínima do módulo necessária para o aplicativo enviar notificações?
----------------------------------------------------------------------------------

A versão mínima do módulo de conexão com o aplicativo é a 0.8.12. 

Ressalta-se que a orientação é sempre manter o módulo de conexão com aplicativo atualizado em seu órgão, uma vez que ausência de atualização impede que o aplicativo funcione plenamente.

Em que canal eu posso solicitar a configuração do envio de notificações?
--------------------------------------------------------------------------

O responsável pela instalação e configuração deve abrir um chamado na Central de Atendimento do PEN. A categoria do chamado é PEN - WSSEI - INSTALAÇÃO. Ressalta-se que a configuração é apenas repassada por meio de chamado.

A autenticação biometria é ativada?
-----------------------------------

Sim, a partir da versão 3.1.0 do aplicativo. Ela é ativada na tela de login por meio do botão Autenticação Biométrica.Após ativada, todas as operações realizadas por meio de senha serão substituídas pela autenticação biométrica configurada pelo usuário do aparelho. Caso o usuário deseje inativar, apenas retorne a tela principal do aplicativo e desative a Autenticação Biométrica.

O aplicativo permite a assinatura de documentos por meio de biometria?
----------------------------------------------------------------------

A biometria é utilizada para login, assinatura de documentos internos e para acesso a processos sigilosos.

Alguns exemplos de biometria permitidos: digital, reconhecimento facial e íris.

O tipo de biometria utilizado depende do aparelho no qual o aplicativo está instalado e no caso de mais um tipo, o usuário deve configurar no seu aparelho qual é a principal.

O que eu posso compartilhar por meio do aplicativo?
----------------------------------------------------

O compartilhamento é uma funcionalidade disponível a partir da versão 3.1.0 do aplicativo. 

É possível compartilhar os seguintes conteúdos: documento, processo, bloco de assinatura, bloco interno e acompanhamento especial.

Ainda ficou com dúvida(s)?
--------------------------

Sem problema, registre um chamado na Central de Atendimento do PEN e contribua para a melhoria do FAQ.

O canal de comunicação oficial do Processo Eletrônico Nacional é o `Portal da Central de Serviços <https://www.gov.br/gestao/pt-br/assuntos/central-de-atendimento>`_ da Central de Atendimento e siga as seguintes etapas:

1. Clicar em PEN;
2. Depois Escolher o Produto (Tramita GOV.BR, SEI etc.);
3. Escolher a categoria (Erro, Dúvida etc.); 
4. Descrever o problema e incluir evidências.

Caso não tenha acesso, consulte as `perguntas e respostas da Central de Atendimento <https://www.gov.br/gestao/pt-br/assuntos/central-de-atendimento/faq-da-central-de-atendimento-dos-sistemas-estruturantes-do-mgi>`_ e saiba como se cadastrar.