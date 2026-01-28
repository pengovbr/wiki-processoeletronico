Scripts de Conversão - Tabela de Assuntos SEI
-------------------------------------------

.. admonition:: Atenção

   Recomenda-se que os scripts sejam testados em ambiente de homologação antes de serem aplicados no ambiente de produção do SEI.  

Esta seção é dedicada à concentração do script a serem utilizados para a conversão ("De/Para") das tabelas de Assuntos utilizadas no SEI, conforme as portarias emitidas pelo Arquivo Nacional.

A planilha de De/Para utilizada para conversão da Resolução n. 14 de 24 de outubro de 2001, do CONARQ para Portaria AN/MGI nº 174, de 23 de setembro de 2024 está disponível para download na `Página do Arquivo Nacional <https://www.gov.br/arquivonacional/pt-br/servicos/gestao-de-documentos/orientacao-tecnica-1/planilha-eletronica-com-instrumentos-de-gestao-de-documentos-relativos-as-atividades-meio>`_

Já a planilha de De/Para utilizada para conversão da Portaria AN nº47, de 14 de fevereiro de 2020 para a Portaria AN/MGI nº 174, de 23 de setembro de 2024 foi elaborada pelo PEN com base nos documentos publicados pelo Arquivo Nacional e submetida para avaliação do referido órgão, estando disponível em `Planilha de Equivalência da Tabela de Assuntos <https://mtegovbr-my.sharepoint.com/:x:/r/personal/caroline_ribeiro_gestao_gov_br/_layouts/15/Doc2.aspx?action=edit&sourcedoc=%7B5292f0d2-82f2-4e51-b6e4-9853fb8686db%7D&wdOrigin=TEAMS-WEB.undefined_ns.rwc&wdExp=TEAMS-TREATMENT&wdhostclicktime=1760990982880&web=1>`_. Esta planilha foi criada apenas para fins de subsidiar a construção do script, não devendo substituir o material disponibilizado pelo Arquivo Nacional.

O script de mapeamento executará a criação de uma nova estrutura com os respectivos assuntos arquivísticos, conforme estabelecido pela Portaria AN/MGI nº 174/2024. Em seguida, os assuntos atualmente existentes serão transferidos para essa nova estrutura. Por fim, será realizado o mapeamento dos assuntos de acordo com a tabela de equivalência atualizada pelo Arquivo Nacional.


Sobre esse tema, algumas observações:

- O script deverá ser executado por colaboradores com perfil profissional técnico e acesso ao banco de dados SEI do seu Órgão/UNIDADE; e

- Esta solução só poderá ser utilizada em versões superiores a 4.0.

   
Script de Conversão da Tabela de Assuntos do SEI para a Portaria AN/MGI nº 174, de 23 de Setembro de 2024. 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Foi elaborado apenas um script em linguagem PHP, de maneira a ser compatível com os bancos de dados Oracle, MySql e SqlServer no qual o usuário irá inserir um parâmetro para escolher a partir de qual tabela será feita a equivalência: a partir da Resolução n. 14 de 24 de outubro de 2001, do CONARQ, ou a partir da Portaria AN nº47, de 14 de fevereiro de 2020.

Abaixo segue o script de mapeamento compatível com os bancos de dados informados:

- :download:`Script_Mapeamento_Tabela_Assuntos <_static/images_downloads/script_mapeamento_tabela_assuntos_14_47_174.php>`

.. admonition:: Nota

   O SEI possui, por padrão, uma limitação de 500 caracteres para o preenchimento dos campos. Como as notas explicativas excedem esse limite, seu conteúdo foi adaptado para a disponibilização do script citado     acima. As versões originais das notas explicativas podem ser consultadas em: <https://www.gov.br/arquivonacional/pt-br/servicos/gestao-de-documentos/orientacao-tecnica-1/planilha-eletronica-com-instrumentos-de-gestao-de-documentos-relativos-as-atividades-meio>`_


Orientações
+++++++++++
1) O script deve ser transferido (download realizado) para o servidor de destino onde será executado.
2) Após o download do script, execute o seguinte comando:

:: 
  
  /usr/bin/php -c /etc/php.ini /opt/sei/scripts/script_mapeamento_tabela_assuntos_14_47_174.php

3) Após a execução do script, serão apresentadas duas opções:

 .. figure:: _static/images_downloads/OPCOES_TABELA_ASSUNTOS.png 

4) Deverá ser fornecida a opção desejada (14 ou 47):  
 - 14 - Atualização dos assuntos arquivísticos, segundo a Portaria 174/2024 e mapeamento dos assuntos da tabela referente à resolução 14/2001 
 - 47 - Atualização dos assuntos arquivísticos, segundo a Portaria 174/2024 e mapeamento dos assuntos da tabela referente à Portaria 47/2020) 

5) Ao selecionar a opção, o próprio script identifica automaticamente o tipo de banco de dados em uso (SQL Server, Oracle ou MySQL) e executa o procedimento conforme o banco identificado.

6) Após a execução, ao verificar a tabela de assuntos no SEI e atualizar a página, será possível visualizar o mapeamento referente ao script executado. A execução atual permanece ativa, enquanto a anterior é desativada.

 .. figure:: _static/images_downloads/Tela_ativacao_nova_tabela_1.gif

7) Para concluir o trabalho, executar o script de atualização das sequências do banco de dados SEI, se o banco de dados for o MySQL ou Sql Server. Para isso, execute o comando: 

:: 
  
  /usr/bin/php -c /etc/php.ini /opt/sei/scripts/atualizar_sequencias.php > atualizacao_versao_sei.log

.. admonition:: Atenção

   O referido script contempla os códigos já existentes e/ou que possuem equivalência. Os novos códigos criados pelo Arquivo Nacional,    conforme `Tabela de Atualizações <https://www.gov.br/arquivonacional/pt-br/servicos/gestao-de-documentos/orientacao-tecnica-1/codigo-de-classificacao-e-tabela-de-temporalidade-e-destinacao-de-documentos-de-arquivo/cod_classif_tab_temp_ativ_meio_atualizacao_2024.pdf>`_, devem ser inseridos de forma manual. São eles:

   - 002.3
   - 002.31
   - 002.32
   - 002.33
   - 015.4
   - 015.41
   - 015.42
   - 015.5
   - 018.1
   - 018.2
   - 019.114
   - 019.13
   - 019.14
   - 029.13
   - 030.04
   - 041.7
   - 063.4
 


Notas do Arquivo Nacional
+++++++++++++++++++++++++

I - Quando a equivalência for de um código para muitos, é necessário realizar a reclassificação de processo a processo, mas diante do volume é possível adotar uma estratégia para essa migração automática. Pode-se relacionar o código anterior com o código estruturante imediatamente superior, do novo código da Portaria AN/MGI nº 174/2024, ficando esse código estruturante desabilitado em seguida e seja feita o planejamento da reclassificação, mesmo que no momento da avaliação e destinação; 

II - Deve-se considerar também os códigos que foram extintos, para os quais deve-se observar se há processos nele classificados e, caso haja, deve-se relacionar o código anterior ao código estruturante imediatamente superior, do novo código da Portaria AN/MGI nº 174/2024, apenas para fins de migração, também orientando que seja desabilitado em seguida e se faça o planejamento da reclassificação; 

III - Não é recomendada a alteração do descritor ou do código na mesma tabela ativa, o que afetaria a relação orgânica, temporalidade e destinação dos documentos; 

IV - Não é recomendada a criação de novos códigos provisórios ou a continuidade de uso dos códigos anteriores ao código da Portaria AN/MGI nº 174/2024.
