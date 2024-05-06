Documentação de Apoio
======================

FAQ
++++
 
- `FAQ <https://wiki.processoeletronico.gov.br/pt-br/homologacao/Tramita_GOV_BR/Perguntas_frequentes/index.html#perguntas-frequentes-faq>`_

Manuais
+++++++

- `Manual Operacional do Tramita.GOV.BR <https://manuais.processoeletronico.gov.br/pt-br/latest/TRAMITA.GOV.BR/index.html>`_
-  `Manual de Instalação do Módulo Tramita.GOV.BR <https://github.com/spbgovbr/mod-sei-pen/blob/master/docs/INSTALL.md>`_
-  `Manual de Utilização da API <_https://mtegovbr-my.sharepoint.com/:u:/g/personal/vinicius_mendonca_gestao_gov_br/EV7vPGV2ylxAhKrtCxm4QUkBSfuwr_vgYn_96LSEr9H_7A?e=NdKFKY>`
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

 