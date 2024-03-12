2023.05.08-Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde-V1
============================================================================================================

Situação  
~~~~~~~~

Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde


Quando Ocorre
~~~~~~~~~~~~~~

Quando um usuário tenta remeter um processo pelo Tramita.GOV.BR, o sistema não permite o trâmite e exibe a mensagem: “Falha de comunicação com o Tramita GOV.BR. Por favor, tente novamente mais tarde.”

Esta falha ocorre quando o módulo não consegue estabelecer conexão com os serviços do Tramita.gov.br e pode se dar pelos seguintes motivos:

1) O certificado digital utilizado para autenticação nos serviços do Tramita.GOV.BR encontra-se inválido;
2) Os servidores de aplicação do SEI não confiam no Certificado Digital utilizado na criptografia do protocolo HTTPS do Tramita.GOV.BR; 
3) As regras de firewall impedem o acesso do SEI aos serviços do Tramita.GOV.BR; ou
4) Está ocorrendo uma indisponibilidade momentânea da Infraestrutura do Tramita.GOV.BR.


Solução Sugerida
~~~~~~~~~~~~~~~~

1. O certificado digital utilizado para autenticação nos serviços do Tramita.GOV.BR encontra-se inválido:

Neste caso, o gestor de protocolo do órgão deverá acessar o Portal de Administração do Tramita.GOV.BR e gerar um novo certificado digital para o sistema.

- `Homologação <https://homolog.gestaopen.processoeletronico.gov.br>`_

- `Produção <https://gestaopen.processoeletronico.gov.br>`_


Maiores informações acerca deste procedimento podem ser encontradas no `FAQ do Tramita.GOV.BR <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/FAQ%20do%20tramita-gov-.br/tramita-gov.br>`_


2. Os servidores de aplicação do SEI não confiam no Certificado Digital utilizado na criptografia do protocolo HTTPS do Tramita.GOV.BR: 

A partir da versão 3.2.2 do módulo de integração do SEI com o Tramita.GOV.BR (mod-sei-tramitagovbr), o módulo passou a forçar a validação da confiabilidade do certificado digital utilizado pela API do Tramita.GOV.BR. Desta forma, caso o servidor do SEI não confie no certificado utilizado pelo Tramita.GOV.BR (Let's Encrypt), irá ser apresentado o erro em questão. 

Para resolver o problema, a equipe de operações deverá atualizar os servidores do SEI para confiar nos certificados Let's Encrypt utilizados pela API de serviços. 

Os procedimentos para atualização dependem da distribuição do Linux que está sendo utilizada. Para maiores informações, acesse a documentação da distribuição utilizada.

Exemplo Ubuntu:

# sudo apt-get update
# apt-get install ca-certificates
# update-ca-certificates

Maiores informações sobre atualização da confiabilidade dos certificados podem ser encontradas no `link <https://letsencrypt.org/certificates/>`_

Outras informações sobre a expiração dos certificados Let's Encrypt podem ser vistas no `link <https://letsencrypt.org/docs/dst-root-ca-x3-expiration-september-2021/>`_


3. As regras de firewall impedem o acesso do SEI aos serviços do Tramita.GOV.BR:

Neste caso, a equipe de infraestrutura da instituição deverá ser consultada para revisar as regras de firewall e identificar se as requisições enviadas para os endereços abaixo estão sendo bloqueados:

- `Homologação <https://homolog.api.processoeletronico.gov.br/interoperabilidade/soap/v3/>`_

- `Produção <https://api.conectagov.processoeletronico.gov.br/interoperabilidade/soap/v3/>`_


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
~~~~~~~~~~~~~~

Tramita; falha de comunicação.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_. 