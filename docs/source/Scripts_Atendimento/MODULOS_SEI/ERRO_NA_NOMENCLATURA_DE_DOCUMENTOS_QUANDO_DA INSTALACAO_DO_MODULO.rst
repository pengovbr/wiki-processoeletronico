2025.03.14-Erro na Nomenclatura de Documentos Quando da Instalação do Módulo de Gestão Documental-V1
====================================================================================================

Situação  
~~~~~~~~

Órgão está em processo de instalação do módulo de Gestão Documental, mas encontrou erro relacionado à nomenclatura de documentos. Na instalação aparece a seguinte mensagem de erro: 
 

03229 - Módulo de Gestão Documental - ERRO: ERRO ATUALIZANDO VERSAO 

Validação: 

Existe outra ocorrência de Tipo de Documento que utiliza o mesmo Nome. 
 

Quando Ocorre
~~~~~~~~~~~~~~

Quando o nome do documento no módulo é igual ao nome de um documento já existente no SEI do órgão.


Solução Sugerida
~~~~~~~~~~~~~~~~

Orientar o usuário a confirmar a duplicidade nos nomes dos documentos, executar comando e alterar nome do documento no SEI do órgão.

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"Prezado, 

Verifique se, na base antes de instalar o módulo, existe o tipo de documento "Listagem de Eliminação de Documentos". Para isso, é preciso executar o comando SELECT * FROM serie WHERE serie.id_serie IS NOT NULL AND serie.nome='Listagem de Eliminação de Documentos' no banco de dados, ou verificar se há esse tipo de documento na lista de documentos do seu órgão. Se a resposta for positiva, sugerimos que altere o nome do referido documento, visto que o erro apresentado na instalação do módulo ocorre devido à duplicidade de nomenclatura entre a listagem de eliminação do SEI e do módulo. 

Ressaltamos que o mesmo erro ocorrerá se houver outros documentos com nomenclatura idêntica aos demais documentos criados pelo módulo: Edital de Ciência de Eliminação de Documentos, Termo de Arquivamento, Termo de Desarquivamento e Termo de Eliminação de Documentos. 

Atenciosamente, 

Equipe de Suporte do PEN”


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente de nível 2


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Demanda de caráter técnico.


Palavras-chave  
~~~~~~~~~~~~~~

Módulo Gestão documental, erro nome de documentos


Referências  
~~~~~~~~~~~~

Script desenvolvido pela equipe do PEN