Base de Conhecimento
====================

Documentação de Apoio
+++++++++++++++++++++
 
- `FAQ <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/faq/FAQ%20do%20tramita-gov-.br/tramita-gov.br>`_

**Manuais**

- `Manual Operacional do Tramita.GOV.BR <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/arquivos/tramita-gov-br-documentos/Manual_Tecnico_Operacional_do_Tramita.GOV.BR.pdf>`_
-  `Manual de Instalação do Módulo Tramita.GOV.BR <https://github.com/spbgovbr/mod-sei-pen/blob/master/docs/INSTALL.md>`_
-  `Manual de Utilização da API - Parte 1 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento-zip.001>`_
-  `Manual de Utilização da API - Parte 2 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.002>`_
-  `Manual de Utilização da API - Parte 3 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.003>`_
-  `Manual de Utilização da API - Parte 4 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.004>`_
-  `Manual de Utilização da API - Parte 5 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/copy_of_kit_desenvolvimento.zip.005>`_
-  `Manual de Utilização da API - Parte 6 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.006>`_
-  `Manual de Utilização da API - Parte 7 <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/tramita-gov.br/kit_desenvolvimento.zip.007>`_
-  `Tabela de Espécies Documentais <https://www.gov.br/economia/pt-br/assuntos/processo-eletronico-nacional/destaques/material-de-apoio-2/copy_of_especiesdocumentais.xls>`_
-  `Swagger - Homologação <https://homolog.api.processoeletronico.gov.br/swagger/swagger-ui/>`_
-  `Swagger - Produção <https://api.conectagov.processoeletronico.gov.br/swagger/swagger-ui/>`_

**Vídeos**

-  `Integração do SEI com o Tramita.GOV.BR - Parte 1 <https://drive.google.com/file/d/1vkwGTxbiSPZ2w-AoACg2Ab2YBZnVr9xw/view?usp=sharing>`_
-  `Integração do SEI com o Tramita.GOV.BR - Parte 2 <https://drive.google.com/file/d/1Yb9ughH4wNy34zKGUuZNBHaSUlWG5W4e/view?usp=sharing>`_
-  `Vídeo expositivo sobre o projeto Barramento (Antigo nome do TRAMITA.GOV.BR) <https://www.youtube.com/watch?v=eXVAerj6LHc&t=754s>`_

**Script SQL**

- Para descobrir unidades destino dos tramites

::
  
  SELECT 
  id_tramite,dth_registro,aa.valor as destino FROM sei.md_pen_tramite tra
  inner join atributo_andamento aa on aa.id_origem=tra.id_estrutura_destino

 
Treinamentos/Apresentações
++++++++++++++++++++++++++ 

+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
|Realizado em |    Responsável    | Assuntos Tratados    |                Link                                                                              |
+=============+===================+======================+==================================================================================================+
| 05/04/2023  |- Vinícius Mendonça| - Conceito           |                                                                                                  |
|             |                   | - Histórico          | `Treinamento Parte 1 <https://drive.google.com/file/d/1rZL24WiAyqzBCSKvElNc7y785VdUHxia/view>`_  | 
|             |                   | - Status de trâmites |                                                                                                  |
|             |                   |                      |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
| 12/04/2023  |- Vinícius Mendonça| - Módulo             |                                                                                                  |
|             |- Guilherme Cantoni| - API                | `Treinamento Parte 2 <https://drive.google.com/file/d/1BxBIhO7YURqbae5LtGCQut9nQ2RF9Byz/view>`_  | 
|             |                   | - Portal             |                                                                                                  |
|             |                   | - Simulação          |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+
| 19/04/2023  |- Vinícius Mendonça|- Portal Administração|                                                                                                  |
|             |                   |- Análise de Cenários | `Treinamento Parte 3 <https://drive.google.com/file/d/1H4qfihC8DAcvDuOOodPi34TK2Q29XQ5E/view>`_  | 
|             |                   |                      |                                                                                                  |
|             |                   |                      |                                                                                                  |
+-------------+-------------------+----------------------+--------------------------------------------------------------------------------------------------+

