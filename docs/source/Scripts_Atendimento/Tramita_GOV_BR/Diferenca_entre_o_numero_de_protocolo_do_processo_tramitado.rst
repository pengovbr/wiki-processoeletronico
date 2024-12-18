2024.12.17-Diferença entre o número de protocolo do processo tramitado-V1
=========================================================================

Situação  
--------

Considerando um processo que foi tramitado com sucesso, no momento de realizar uma nova tramitação uma das seguintes mensagens de erro são apresentadas: 

**Primeira mensagem:** 

  “Inconsistência no número de protocolo do processo tramitado por este NRE [Nº do NRE]. Protocolo anterior: [Número do Protocolo anterior] atual: [Número do Protocolo atual]” 

 
**Segunda mensagem:** 

  “Número do protocolo obtido não confere com o original. (protocolo SEI: [Número do Protocolo anterior], protocolo Tramita GOV.BR: [Número do Protocolo atual])” 

Quando Ocorre
-------------

A situação ocorre quando, por algum motivo interno, o órgão que detém o processo tramitado, realiza a alteração de sua numeração dentro do seu SPE. Alguns exemplos já mapeados desse tipo de alteração consistem na aplicação, ou supressão, de caracteres especiais, complementação, ou remoção, de dígitos etc. 

No SEI, as unidades que possuem esse poder de alteração da numeração de protocolo são sinalizadas como “unidades de protocolo”, dentro da configuração da unidade pelo administrador do sistema. Em outros SPEs, pelo fato de não possuirmos conhecimento, não é possível afirmar como é o funcionamento desses sistemas. 


Solução Sugerida
----------------

A solução sugerida é que o órgão que detém o processo e está tentado realizar a devolutiva deste, reverta a alteração na numeração do protocolo, mantendo-a exatamente como foi recebida. No SEI, muito provavelmente essa ação será executada somente na unidade em que a alteração foi realizada ou outra unidade que possui a mesma capacidade de atuação no gerenciamento do número de protocolo. Em outros SPEs somente os responsáveis pelo seu gerenciamento serão capazes de orientar o órgão sobre como realizar tais alterações. 

Para o SEI, a ação exige um usuário com acesso ao menu “infra” do SEI, este por sua vez deverá se comunicar como usuário que possui acesso à unidade em que a alteração no número do processo foi realizada.


Modelo de Resposta para Chamados  
--------------------------------

Caso o órgão que detém o processo utilize o SEI: 
++++++++++++++++++++++++++++++++++++++++++++++++

Prezado(a), 
  
Identificamos que a situação relatada é proveniente da alteração do número do processo em algum momento após o recebimento deste pelo órgão de destino. 

Dessa forma, observamos um caminho alternativo para que o processo em questão possa ser devolvido para o órgão de origem. 

Caso seja de interesse do órgão, sugerimos que a equipe técnica responsável pelo gerenciamento do SEI execute os seguintes passos: 

1. Acesse o menu Infra > Parâmetros; 

2. Identifique o parâmetro SEI_MASCARA_NUMERO_PROCESSO_INFORMADO; 

3. Na sequência edite o parâmetro, inserindo no campo "valor", a seguinte expressão: #####.######/####-##|#################; 

.. list-table::
   :widths: 20 35
   :header-rows: 0

   - * SEI_MASCARA_NUMERO_PROCESSO_INFORMADO
     * #####.######/####-##|#################
 
4. Clicar em "Salvar" 

Feita essa alteração, é necessário que, na mesma unidade em que a alteração de numeração inicial foi realizada, sejam executados os seguintes passos: 

1. Clicar sobre o número do processo; 

2. Clicar em "Consultar/Alterar Processo" 

3. No campo "Protocolo" seja feita a substituição da numeração com pontuação, pela numeração sem pontuação. É necessário apagar a numeração existente e colar a numeração sem pontuação (original) 

4. Clicar em "Salvar" 

Realizadas as alterações, é esperado que o processo possa ser tramitado com sucesso. 
  
Reforçamos que as etapas aqui apresentadas são apenas sugestões, que visam unicamente resolver a situação relatada, e que compete à equipe técnica do órgão analisar a viabilidade de sua execução. Além disso, após a conclusão do trâmite todas as alterações realizadas no parâmetro mencionado devem ser desfeitas. 

Reforçamos que não é recomendado realizar a alteração da numeração de processos recebidos de outros órgãos. Portanto, ao receber um processo por meio da plataforma Tramita GOV.BR não realizar alteração da numeração do protocolo. Tal tratamento também é aplicado aos processos recebidos fisicamente. 

Informamos ainda que não havendo mais nenhum tipo de comunicação, esse chamado será encerrado após 72 horas. 

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em `gov.br/pen <https://gov.br/pen>`_. Conheça, também, nossa `FAQ Tramita.GOV.BR <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html>`_. 

Atenciosamente, 

Equipe do Processo Eletrônico Nacional

 
Caso o órgão que detém o processo não utilize o SEI: 
++++++++++++++++++++++++++++++++++++++++++++++++++++
 

Prezado(a), 

Identificamos que a situação relatada é proveniente da alteração do número do processo em algum momento após o recebimento deste pelo órgão de destino. 

Por se tratar de um SPE que essa equipe não fornece suporte, recomendamos que entre em contrato com os gestores do SPE. 

Reforçamos que não é recomendado realizar a alteração da numeração de processos recebidos de outros órgãos. Portanto, ao receber um processo por meio da plataforma Tramita GOV.BR não realizar alteração da numeração do protocolo. Tal tratamento também é aplicado aos processos recebidos fisicamente. 

Informamos ainda que não havendo mais nenhum tipo de comunicação, esse chamado será encerrado após 72 horas. 

Acompanhe nossas notícias e atualizações no portal do PEN, no site oficial do Ministério da Gestão e da Inovação em Serviços Públicos - MGI, acessível em `gov.br/pen <https://gov.br/pen>`_. Conheça, também, nossa `FAQ Tramita.GOV.BR <https://wiki.processoeletronico.gov.br/pt-br/latest/Tramita_GOV_BR/Perguntas_frequentes/index.html>`_. 

Atenciosamente, 

Equipe do Processo Eletrônico Nacional

Atribuições e responsabilidades  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Atendente N2 


Perfil do usuário  
~~~~~~~~~~~~~~~~~~

Gestor de protocolo, Básico, Informática 


Palavras-chave  
~~~~~~~~~~~~~~

Número de protocolo / inconsistência / alteração

Referências  
~~~~~~~~~~~~

`Item 2.5  – 2. Protocolo – Software Público Brasileiro <https://softwarepublico.gov.br/social/sei/manuais/manual-do-protocolo-e-arquivo/2.-protocolo>`_  

`Módulo 2 curso SEI Administrar ENAP <https://repositorio.enap.gov.br/jspui/bitstream/1/4990/2/M%c3%b3dulo%202%20-%20Estrutura%20Organizacional.pdf>`_  

Chamados: 9531541 e 15932600 