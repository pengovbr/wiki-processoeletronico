Erros de hash e de ordem de documentos
======================================

Situação  
~~~~~~~~~

Erros de hash e de ordem de documentos.


Quando Ocorre
~~~~~~~~~~~~~~

Não se aplica.


Solução Sugerida
~~~~~~~~~~~~~~~~

Inicialmente solicitar que executem a query abaixo para descobrir se a ordem dos documentos do processo estão certas no órgão:
 
:: 
  
  SELECT

  cd.protocolo as 'numero processo',
  cd.ordem_documento as 'ordem dos documentos',
  p.protocolo_formatado as 'protocolo do documento',
  cd.nome_especie_produtor as 'tipo de documento',
  cd.id_tramite as 'ID do tramite',
  cd.numero_registro as 'NRE'
 
  FROM 

  sei.md_pen_componente_digital cd
  inner join md_pen_processo_eletronico pe on cd.numero_registro=pe.numero_registro
  inner join documento d on d.id_documento=cd.id_documento
  inner join protocolo p on p.id_protocolo=d.id_documento
  inner join md_pen_tramite t on pe.numero_registro=t.numero_registro and cd.id_tramite=t.id_tramite
  where t.id_tramite= (select MAX(t1.id_tramite) from md_pen_tramite t1
              where t1.numero_registro=pe.numero_registro
              and t1.sta_tipo_tramite="R" )
  and cd.protocolo in ( ' XXXXXXXXXXX ')
  order by cd.protocolo , cd.ordem_documento

 
Caso a ordem de documentos esteja errada, alterar na árvore os documentos e tentar novamente.
 
Se mesmo assim o processo está com problemas no envio, inicialmente solicitar que o órgão exporte em ZIP o conteúdo do processo. Paralelamente, solicite que o órgão que enviou a última vez exporte o mesmo processo em ZIP.
Calcule o hash dos documentos que está com problema com o comando:
 
cat arquivo_pequeno.txt | openssl dgst -binary -sha256 | base64
 
Para calcular hash de todos na pasta criar um arquivo calculaHash.sh:

for f in * do echo "Processing $f" cat $f | openssl dgst -binary -sha256 | base64 echo "" done
 
E rodar com 'bash calculaHash.sh'. Comparar com a listagem no painel do PEN para verificar ordens e erros.
 
Caso o hash não esteja igual, abra em um editor de texto e procure a diferença:
 
vimdiff ARQ1 ARQ2
 
**Erro conhecido:** se o usuário alterar o tipo de documento no menu de administração do SEI ('Aviso' para 'Aviso ME' por exemplo), mesmo já tendo assinado o documento o hash será calculado novamente. 

**Solução:** Assim, paleativamente estamos solicitando que o usuário altere o Tipo para o valor anterior (no exemplo seria 'Aviso') e tramite. Após o tramite volte para o valor que estava configurado antes da intervenção('Aviso ME').
 
**Erro conhecido:** Em versões antigas do módulo, ao executar a query acima, a coluna ordem podia conter inteiros diferentes de '1', nesse caso deveríamos efetuar a alteração para '1' e testar novamente

.. figure:: _static/images/imagem_alteracao_ordem.png

**Erro conhecido:** Caso o erro seja "espécie não confere" ou "espécie não encontrada", isso pode ocorrer em versões anteriores à 2.1.0 do módulo. 

**Soluação:** Assim, solicitar que atualizem a versão para a mais atual.
 
**Erro conhecido:** Caso o processo tenha sido tramitado pelo barramento, mas não recebido pelo destino (ex: o IDT ficou com status 9), não teremos como comparar os arquivos entre os órgãos. 

**Solução:** Nesse caso, caso o hash dos documentos não forem iguais aos que estão no BD do barramento a única solução é duplicar o processo no usuário e tramitar novamente pelo barramento.
 
**Erro conhecido:** Caso o usuário tenha desanexado um processo que recebeu pelo barramento, isso tem que ser refeito. A ideia é o barramento barrar esse trâmite mesmo, pois seria uma alteração do processo. 

**Solução:** Assim solicite que o órgão anexe novamente o processo e coloque após o processo desanexado anteriormente.


.. figure:: _static/images/imagem_processo_desanexado.png


Caso o órgão tenha dado "vida independente" ao processo após essa desanexação (ex da foto 95190.000148/2021-01), o órgão deverá mover todos os documentos desse processo e deixar apenas os originais do barramento antes de anexar novamente.


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

Tramita; hash; ordem; documento.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_.