2024.10.09-ERRO NA ATUALIZAÇÃO DO CERTIFICADO-V1
================================================

Situação  
~~~~~~~~

O Órgão ou entidade abriu chamado relatando ocorrência de erro relacionado à atualização de certificado do Protocolo Integrado. 

Quando Ocorre
~~~~~~~~~~~~~~

Quando o Protocolo Integrado do órgão apresenta erro relacionado à atualização de certificado do Protocolo Integrado, como no exemplo do log abaixo: 

.. admonition:: Detalhes 

   Trilha de Processamento: 

   Exception: https://protocolointegrado.gov.br/ProtocoloWS/integradorService?wsdl Erro ao obter requisição CURL. Erro detalhado: Peer's Certificate issuer is not recognized. in /opt/sei/web/modulos/protocolo-integrado/ws/ProtocoloIntegradoClienteWS.php:73 

 
Solução Sugerida
~~~~~~~~~~~~~~~~

Informar ao solicitante que ocorreu atualização do tipo de certificado utilizado pelo Protocolo Integrado e sugerir cadastramento da autoridade certificadora no Sistema. 


Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado(a) senhor(a), 

Atualmente o Protocolo Integrado utiliza um certificado emitido pela UserTrust, tendo como autoridade intermediária a Sectigo. 
Esta CA (Autoridade Certificadora) intermediária não é confiável por Sistemas Operacionais mais antigos, como CentOS7, visto que não há mais atualizações. Outros Sistemas Operacionais como o Debian 9 apresentarão o mesmo problema. 

Sendo assim, a solução para o problema é cadastrar a CA da autoridade intermediária Sectigo no Sistema Operacional, ou diretamente na lista de CAs confiadas pelo php. 
Esta atividade deverá ser executada por um profissional da infraestrutura responsável pelo SEI do órgão. 

O certificado da autoridade Sectigo, bem como toda a cadeia do certificado do Protocolo Integrado, pode ser retirada diretamente do site: protocolointegrado.gov.br acessando as opções de visualizar o certificado no browser. 

Atenciosamente, 

(Nome do atendente)


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

N2


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Demanda de caráter técnico. 


Palavras-chave  
~~~~~~~~~~~~~~

Protocolo Integrado, certificado, erro certificado. 


Referências  
~~~~~~~~~~~~

Script elaborado pela equipe do PEN