Documentação de Apoio
======================

FAQ
++++
 
- `FAQ <https://wiki.processoeletronico.gov.br/pt-br/homologacao/Tramita_GOV_BR/Perguntas_frequentes/index.html#perguntas-frequentes-faq>`_

Manuais
+++++++

- `Manual do Portal de Administração Tramita.GOV.BR <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/MANUAL_PORTAL_DE_ADMINISTRACAO/index.html>`_
- `Manual Técnico-Operacional do Tramita.GOV.BR <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/MANUAL_TECNICO_OPERACIONAL/index.html>`_
-  `Manual de Instalação do Módulo de Integração do Tramita.GOV.BR <https://github.com/spbgovbr/mod-sei-pen/blob/master/docs/INSTALL.md>`_
-  `Manual de Utilização da API <https://drive.google.com/file/d/1K8qe9Yp0736ICh6Sz4G8MLeKFAJTmki9/view?usp=sharing>`_
-  `Padrão de Criação de Repositório <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/Criacao_repositorio_de_estruturas/index.html>`_ 
-  `Tabela de Espécies Documentais <https://www.gov.br/gestao/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/copy_of_especiesdocumentais.xls>`_
-  `Swagger - Homologação <https://homolog.api.processoeletronico.gov.br/swagger/swagger-ui.html>`_
-  `Swagger - Produção <https://api.conectagov.processoeletronico.gov.br/swagger/swagger-ui/>`_

Vídeos
+++++++

-  `Integração do SEI com o Tramita.GOV.BR - Parte 1 <https://drive.google.com/file/d/1vkwGTxbiSPZ2w-AoACg2Ab2YBZnVr9xw/view?usp=sharing>`_
-  `Integração do SEI com o Tramita.GOV.BR - Parte 2 <https://drive.google.com/file/d/1Yb9ughH4wNy34zKGUuZNBHaSUlWG5W4e/view?usp=sharing>`_
-  `Vídeo expositivo sobre o projeto Barramento (Antigo nome do TRAMITA.GOV.BR) <https://www.youtube.com/watch?v=eXVAerj6LHc&t=754s>`_

Script SQL
++++++++++

- Para descobrir unidades destino dos tramites

::
  
  SELECT 
  id_tramite,dth_registro,aa.valor as destino FROM sei.md_pen_tramite tra
  inner join atributo_andamento aa on aa.id_origem=tra.id_estrutura_destino

 
