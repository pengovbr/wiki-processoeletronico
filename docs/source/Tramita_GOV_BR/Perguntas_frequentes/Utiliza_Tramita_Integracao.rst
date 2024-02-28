Utiliza Tramita: Integração
============================

Como realizar a integração de um Sistema de Processo Eletrônico à plataforma?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

O processo de integração ao Tramita GOV.BR irá depender do SPE utilizado pelo órgão solicitante. Sendo bem-sucedida a integração do órgão à plataforma, é necessário realizar um conjunto de operações no Portal de Administração do PEN, conforme orientado nos itens 4, 5, 6 e 7 do Manual Técnico Operacional do Tramita GOV.BR.  

É recomendada a leitura completa do referido Manual Técnico, para que haja um máximo domínio acerca dos procedimentos técnicos e negociais, bem como dos comportamentos, esperados ou não, da aplicação. As orientações distinguem duas situações:

.. list-table::
   :header-rows: 1
   
   - * Órgãos que utilizam o SEI (versão 3.1.x ou superior):
   - * É necessário instalar o `MOD-SEI-PEN <https://github.com/pengovbr/mod-sei-pen>`_, uma vez que a conexão com o Tramita GOV.BR não é nativa. Para uma correta integração do SEI à plataforma, é necessário seguir as `instruções de instalação <https://github.com/pengovbr/mod-sei-pen/blob/master/docs/INSTALL.md>`_ disponíveis para o módulo de integração.

.. list-table::
   :header-rows: 1
   
   - * Órgãos que não utilizam o SEI:
   - * Estes órgãos devem desenvolver uma Solução de Integração própria, respeitando os padrões de interoperabilidade da solução. A documentação de suporte para este desenvolvimento está disponível na página de `Material de Apoio do Tramita GOV.BR <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br>`_. Nesta página, também está disponível o `Manual de Utilização da API <https://wiki.processoeletronico.gov.br/pt-br/homologacao/Tramita_GOV_BR/Documentacao_de_Apoio.html>`_, o qual está dividido em sete partes. Ao concluir o download de todas as partes, é preciso abrir o primeiro arquivo com o software de compactação/descompactação de arquivos de sua preferência e, em seguida, extrair todo o seu conteúdo para uma pasta selecionada.

Quais Sistemas de Processo Eletrônico já estão integrados à plataforma?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

É possível que cada órgão possua o seu próprio SPE, o que faz com que a **lista de SPEs** integrados ao Tramita GOV.BR seja bastante dinâmica. Alguns dos SPE mais comuns, dentre os órgãos que solicitam integração à plataforma, estão dispostos a seguir, por ordem de recorrência.

* Sistema Eletrônico de Informações (SEI);
* `Sistema Integrado de Gestão de Patrimônio, Administração e Contratos <https://sipac.ufrn.br/public/jsp/portal.jsf>`_ (SIPAC);
* `Sistema Unificado de Administração Pública <https://portal.suap.ifrn.edu.br/>`_ (SUAP);
* `Sistema AGU de Inteligência Jurídica <https://www.gov.br/agu/pt-br/sapiens-1/super-sapiens>`_ (Sapiens).
A relação de todos os SPEs já integrados à plataforma, por sua vez, está disponível em uma `lista pública <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/conteudo/barramento-de-servicos/sistemas-integrados-ao-tramita-gov.br>`_, atualizada periodicamente. 

Em quais órgãos o Tramita GOV.BR está presente?
++++++++++++++++++++++++++++++++++++++++++++++++

O Tramita GOV.BR se faz presente em vários órgãos e está em fase de implementação em muitos outros. O nome de cada uma dessas instituições é disponibilizado por meio de uma `lista pública <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/conteudo/tramita.gov.br/relacao-dos-orgaos-e-entidades>`_, frequentemente atualizada.

A integração à plataforma está disponível apenas para órgãos que utilizam o Sistema Eletrônico de Informações?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Não, órgãos que utilizam outros sistemas eletrônicos também podem solicitar integração à plataforma. Para isso basta seguir as `orientações disponibilizadas no Material de Apoio <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br>`_, mais especificamente na documentação chamada Manual de Utilização da API.

O MOD-SEI-PEN é compatível com todas as versões do SEI?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Não, algumas versões mais antigas do SEI **não são compatíveis com o MOD SEI PEN**. Por isso, é importante verificar, antes da implantação do módulo, se a versão desejada é compatível com a versão do SEI implantado no órgão. 

Como obtenho acesso às atualizações disponibilizadas para o MOD-SEI-PEN?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

A **versão mais recente do MOD-SEI-PEN** encontra-se disponível em um endereço eletrônico fixo. Os arquivos são constantemente atualizados à medida que novas atualizações são realizadas.  

Por sua vez, caso deseje obter informações a respeito de versões mais antigas ou sobre o histórico de evoluções e correções do módulo, estes seguem disponíveis em um `repositório eletrônico de informações e notícias <https://github.com/pengovbr/mod-sei-pen/releases>`_.  

Como posso atualizar o MOD-SEI-PEN para a versão mais recente?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

A **atualização do MOD-SEI-PEN** pode ser realizada diretamente por meio da versão mais recente disponível, sem a necessidade de instalação das versões anteriores, sempre verificando a compatibilidade da versão com o SEI utilizado pelo órgão. A descrição do processo de atualização está disponível no `Manual de Atualização do Módulo de Integração do Processo Eletrônico Nacional <https://github.com/pengovbr/mod-sei-pen/blob/master/docs/UPGRADE.md>`_.  

A recomendação é que **sempre seja instalada a última versão do módulo de integração**, garantindo - assim - a implementação das medidas de segurança e melhorias mais recentes.