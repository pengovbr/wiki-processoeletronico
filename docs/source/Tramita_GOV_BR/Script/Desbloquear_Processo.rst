Desbloquear Processo
====================

Situação  
~~~~~~~~

Processo Bloqueado.

Quando Ocorre
~~~~~~~~~~~~~~

O processo está bloqueado pois foi recebido com sucesso em um sistema devidamente habilitada no barramento de serviços, através de um certificado digital único.
Por este motivo, não existe uma funcionalidade disponível no sistema rementente, pois o desbloqueio do processo quebraria uma regra estabelecida para o projeto.


Solução Sugerida
~~~~~~~~~~~~~~~~

Considerando a situação específica de recebimento indevido precisamos de uma alteração manual no BD para desbloquear o processo e permitir o reenvio para o XXXXX. Dito isto, peço que entre em contato com o equipe de BD responsável pelo sistema no XXXX e solicite que alterem a coluna sta_estado para o valor 0 no processo com problema. 
 
Segue exemplo de sql para execução:
 
update sei.protocolo 
set sta_estado='0' 
where protocolo_formatado='{Informe o Protocolo Aqui}' and sta_estado='4';
 
Lembrando que deve ser aplicado o filtro na coluna 'protocolo_formatado' pelo numero do processo.
 
Conforme as orientações de manutenções de BD, esta intervenção somente deve ser feita após a realização de um backup do BD. E de preferência em um horário fora do comercial.
 
Os valores de sta_estado são:

0 = Normal
1 = Processo Sobrestado
2 = Documento Cancelado
3 = Processo Anexado
4 = Processo Bloqueado


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

Tramita; Bloqueado; Desbloqueado.


Referências  
~~~~~~~~~~~~

Material construído conforme o conteúdo abordado nos treinamentos/apresentações ocorridas nos dias `05/04/2023  <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_, `12/04/2023 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_ e `19/04/2023 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_.