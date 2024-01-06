2023.10.30-Processos concluídos automaticamente na chegada da Tramitação-V1
===========================================================================

Situação  
~~~~~~~~

O Usuário relata que os processos estão sendo concluídos automaticamente na chegada em uma tramitação de Processo.

Quando Ocorre
~~~~~~~~~~~~~~

Alguns administradores cadastram, no menu "Administração > Processo Eletrônico Nacional > Parâmetros de Configuração do Módulo de Tramitações PEN", nesse parâmetro "Unidade SEI para Representação de Órgãos Externos", uma unidade já em uso no sistema, como o Protocolo Central etc. e NÃO uma unidade específica para o Tramita, como solicita o Manual.

Até é recomendado, nesse documento, os dados da unidade a ser criada SÓ pra gerar os processos do Tramita: "sigla = Tramita.GOV.BR, nome: Processo recebido via Tramita.GOV.BR" (cadastrado dessa forma, fica mais fácil para o usuário, ao visualizar o andamento, entender que se trata de um processo que veio via Tramita).


Solução Sugerida
~~~~~~~~~~~~~~~~

O Usuário dever verificar se na configuração do Sistema de Processo Eletrônico módulo do Tramita foi feita com sucesso, como consta no manual, especificamente - para este problema - no item 2.1, em `"Unidade SEI para representação de órgãos externos". <https://github.com/supergovbr/mod-sei-pen/blob/master/docs/INSTALL.md#unidade-sei-para-representa%C3%A7%C3%A3o-de-%C3%B3rg%C3%A3os-externos>`_

Em caso negativo, deve se corrigir a configuração como aparece no link acima.  

Modelo de Resposta para Chamados  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prezado Senhor(a) [nome do usuário], 

Verifique se, no seu sistema, fizeram corretamente a configuração do módulo do Tramita, como consta no manual, especificamente - para este problema - no item 2.1, em `"Unidade SEI para representação de órgãos externos". <https://github.com/supergovbr/mod-sei-pen/blob/master/docs/INSTALL.md#unidade-sei-para-representa%C3%A7%C3%A3o-de-%C3%B3rg%C3%A3os-externos>`_

Para saber mais sobre as ações do PEN, acesse gov.br/pen 

Atenciosamente, 

[nome profissional do atendente]” 


Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

N1


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Negocial.

Palavras-chave  
~~~~~~~~~~~~~~

Tramita.gov.br; Processos concluídos na chegada do sistema; bug,


Referências  
~~~~~~~~~~~~

`Github <https://github.com/supergovbr/mod-sei-pen/blob/master/docs/INSTALL.md#unidade-sei-para-representa%C3%A7%C3%A3o-de-%C3%B3rg%C3%A3os-externos>`_