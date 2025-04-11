##SCRIPT PARA ATUALIZAÇÃO DOS ASSUNTOS ARQUIVÍSTICOS, SEGUNDO A PORTARIA 174/2024 E MAPEAMENTO DOS ASSUNTOS DA TABELA REFERENTE À PORTARIA 47/2020
##BANCO DE DADOS MYSQL

##MODIFICANDO O CAMPO OBSERVACAO DA TABELA ASSSUNTO

ALTER TABLE assunto MODIFY COLUMN observacao varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL NULL;


##INSERINDO A TABELA NOVA

INSERT INTO seq_tabela_assuntos (campo) VALUES (0);
SET @idtabelaatual=LAST_INSERT_ID();
INSERT INTO tabela_assuntos (id_tabela_assuntos,nome,descricao,sin_atual) VALUES (@idtabelaatual,'Tabela de Assuntos Arquivísticos - 2024','Tabela de Assuntos Arquivísticos de Atividades-Meio - Atualização 2024','N');

##INSERINDO OS ASSUNTOS DA TABELA NOVA

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'000','ADMINISTRAÇÃO GERAL','Esta classe contempla documentos referentes às atividades relacionadas à administração interna do órgão e entidade, que viabilizam o seu funcionamento e o alcance dos  objetivos para os quais foram criados.','000 000 Esta classe contempla documentos referentes as atividades relacionadas a administracao interna do orgao e entidade que viabilizam o seu funcionamento e o alcance dos objetivos para os quais foram criados.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'001','RELAÇÃO INTERINSTITUCIONAL','Incluem-se documentos referentes à formalização, execução e acompanhamento das relações entre o órgão e entidade e outros órgãos e entidades, públicos e privados, firmadas por meio de acordos, contratos, convênios, termos e outros atos de ajustes, que abranjam, ao mesmo tempo, a execução de várias atividades, bem como aqueles referentes à fiscalização, prestação e tomada de contas, relatórios técnicos e termos de aditamento.','001 001 Incluem-se documentos referentes a formalizacao execucao e acompanhamento das relacoes entre o orgao e entidade e outros orgaos e entidades publicos e privados firmadas por meio de acordos contratos convenios termos e outros atos de ajustes que abranjam ao mesmo tempo a execucao de varias atividades bem como aqueles referentes a fiscalizacao prestacao e tomada de contas relatorios tecnicos e termos de aditamento.','S',20,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002','ATENDIMENTO AO CIDADÃO','Nas subdivisões deste descritor classificam-se documentos referentes às solicitações de informações e às comunicações enviadas ao órgão e entidade pelos canais de atendimento ao cidadão, tais como: Serviço de Informações ao Cidadão (SIC), ouvidoria e outros canais de comunicação.','002 002 Nas subdivisoes deste descritor classificam-se documentos referentes as solicitacoes de informacoes e as comunicacoes enviadas ao orgao e entidade pelos canais de atendimento ao cidadao tais como: Servico de Informacoes ao Cidadao (SIC) ouvidoria e outros canais de comunicacao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre o acesso à informação pública executado pelos canais de atendimento ao cidadão.','002.01 00201 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre o acesso a informacao publica executado pelos canais de atendimento ao cidadao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.1','ACESSO À INFORMAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes aos pedidos de acesso à informação e aos documentos institucionais, encaminhados ao SIC, bem como os recursos impetrados em razão de negativa de acesso.  Quanto ao controle de satisfação dos usuários em relação aos canais de atendimento ao cidadão, classificar no código 002.2. Quanto tratamento de demandas recebidas pela ouvidoria e por outros canais de comunicação, classificar nas subdivisões do código 002.3. Quanto às comunicações eventuais trocadas entre o órgão e entidade e demais instituições, classificar no código 991.','002.1 0021 Nas subdivisoes deste descritor classificam-se documentos referentes aos pedidos de acesso a informacao e aos documentos institucionais encaminhados ao SIC bem como os recursos impetrados em razao de negativa de acesso.  Quanto ao controle de satisfacao dos usuarios em relacao aos canais de atendimento ao cidadao classificar no codigo 002.2. Quanto tratamento de demandas recebidas pela ouvidoria e por outros canais de comunicacao classificar nas subdivisoes do codigo 002.3. Quanto as comunicacoes eventuais trocadas entre o orgao e entidade e demais instituicoes classificar no codigo 991.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.11','PEDIDO DE ACESSO À INFORMAÇÃO E RECURSO','Incluem-se documentos referentes às solicitações, respostas e recursos referentes aos pedidos de acesso à informação, presenciais e não presenciais, realizados por intermédio do SIC, tais como: formulários com pedidos de acesso à informação e formulários de recursos.  Quanto ao acesso e ao controle das consultas aos documentos arquivísticos, bibliográficos e museológicos, classificar no código 063.1.','002.11 00211 Incluem-se documentos referentes as solicitacoes respostas e recursos referentes aos pedidos de acesso a informacao presenciais e nao presenciais realizados por intermedio do SIC tais como: formularios com pedidos de acesso a informacao e formularios de recursos.  Quanto ao acesso e ao controle das consultas aos documentos arquivisticos bibliograficos e museologicos classificar no codigo 063.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.12','ACOMPANHAMENTO DO ATENDIMENTO AO CIDADÃO','Incluem-se documentos referentes ao acompanhamento das atividades desempenhadas pelo SIC, tais como: relatórios estatísticos, de atendimento, de controle de consultas e de perfil do usuário.','002.12 00212 Incluem-se documentos referentes ao acompanhamento das atividades desempenhadas pelo SIC, tais como: relatorios estatisticos, de atendimento, de controle de consultas e de perfil do usuario.','S',NULL,2,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.2','CONTROLE DE SATISFAÇÃO DO USUÁRIO','Incluem-se documentos referentes à pesquisa de satisfação dos usuários dos serviços públicos, decorrentes de pedidos de acesso à informação e de manifestações registradas na ouvidoria e nos demais canais de comunicação do órgão e entidade.  Quanto aos pedidos de acesso à informação e aos documentos institucionais, classificar nas subdivisões do código 002.1.  Quanto ao tratamento das demandas recebidas pela ouvidoria e por outros canais de comunicação, classificar nas subdivisões do código 002.3. Quanto às comunicações eventuais trocadas entre o órgão e entidade e demais instituições, classificar no código 991.','002.2 0022 Incluem-se documentos referentes a pesquisa de satisfacao dos usuarios dos servicos publicos decorrentes de pedidos de acesso a informacao e de manifestacoes registradas na ouvidoria e nos demais canais de comunicacao do orgao e entidade.  Quanto aos pedidos de acesso a informacao e aos documentos institucionais classificar nas subdivisoes do codigo 002.1.  Quanto ao tratamento das demandas recebidas pela ouvidoria e por outros canais de comunicacao classificar nas subdivisoes do codigo 002.3. Quanto as comunicacoes eventuais trocadas entre o orgao e entidade e demais instituicoes classificar no codigo 991.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.3','ACOMPANHAMENTO DE MANIFESTAÇÃO DO USUÁRIO','Nas subdivisões deste descritor classificam-se documentos referentes ao acompanhamento e tratamento de manifestações de usuários do órgão e entidade, recebidas pela ouvidoria e demais canais de comunicação institucional, abrangendo as reclamações, elogios, solicitações, sugestões ou denúncias, bem como às ações de ouvidoria ativa. Quanto aos pedidos de acesso à informação e aos documentos institucionais, classificar nas subdivisões do código 002.1. Quanto à conversão da demanda em processo administrativo, classificar de acordo com a atividade decorrente da manifestação ou da denúncia.','002.3 0023 Nas subdivisoes deste descritor classificam-se documentos referentes ao acompanhamento e tratamento de manifestacoes de usuarios do orgao e entidade recebidas pela ouvidoria e demais canais de comunicacao institucional abrangendo as reclamacoes elogios solicitacoes sugestoes ou denuncias bem como as acoes de ouvidoria ativa. Quanto aos pedidos de acesso a informacao e aos documentos institucionais classificar nas subdivisoes do codigo 002.1. Quanto a conversao da demanda em processo administrativo classificar de acordo com a atividade decorrente da manifestacao ou da denuncia.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.31','TRATAMENTO DE MANIFESTAÇÃO ','Incluem-se documentos referentes à análise e tratamento de manifestações recebidas pela ouvidoria e demais canais de comunicação do órgão ou entidade, pertinentes às reclamações, elogios, solicitações e sugestões de usuários. Quanto ao tratamento de denúncias e comunicações de ilegalidade ou irregularidade, classificar no código 002.32.','002.31 00231 Incluem-se documentos referentes a analise e tratamento de manifestacoes recebidas pela ouvidoria e demais canais de comunicacao do orgao ou entidade pertinentes as reclamacoes elogios solicitacoes e sugestoes de usuarios. Quanto ao tratamento de denuncias e comunicacoes de ilegalidade ou irregularidade classificar no codigo 002.32.','S',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.32','TRATAMENTO DE DENÚNCIA','Incluem-se documentos referentes à análise e tratamento de denúncias e comunicações de irregularidade ou ilegalidade, recebidas pela ouvidoria e demais canais de comunicação do órgão ou entidade.  Quanto ao tratamento de reclamações, elogios, solicitações e sugestões, classificar no código 002.31.','002.32 00232 Incluem-se documentos referentes a analise e tratamento de denuncias e comunicacoes de irregularidade ou ilegalidade recebidas pela ouvidoria e demais canais de comunicacao do orgao ou entidade.  Quanto ao tratamento de reclamacoes elogios solicitacoes e sugestoes classificar no codigo 002.31.','S',15,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'002.33','DESENVOLVIMENTO DE AÇÕES DE OUVIDORIA ATIVA','Incluem-se documentos referentes ao planejamento e execução de ações proativas de ouvidoria, para coleta de manifestações junto aos usuários, no tocante à qualidade dos serviços do órgão ou entidade.','002.33 00233 Incluem-se documentos referentes ao planejamento e execucao de acoes proativas de ouvidoria para coleta de manifestacoes junto aos usuarios no tocante a qualidade dos servicos do orgao ou entidade.','S',5,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'003','CONTROLE E FISCALIZAÇÃO DA GESTÃO PÚBLICA','Nas subdivisões deste descritor classificam-se documentos referentes às ações de inspeção, correição, auditagem e controle interno a cargo do gestor, realizadas para verificação dos procedimentos internos do órgão e entidade com o objetivo de melhorar a gestão pública.','003 003 Nas subdivisoes deste descritor classificam-se documentos referentes as acoes de inspecao correicao auditagem e controle interno a cargo do gestor realizadas para verificacao dos procedimentos internos do orgao e entidade com o objetivo de melhorar a gestao publica.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'003.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre as ações de inspeção, correição, auditagem e controle interno do órgão e entidade. Quanto ao controle externo e à auditoria externa, classificar nas subdivisões do código 054.','003.01 00301 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre as acoes de inspecao correicao auditagem e controle interno do orgao e entidade. Quanto ao controle externo e a auditoria externa classificar nas subdivisoes do codigo 054.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'003.1','CONTROLE INTERNO. AUDITORIA INTERNA','Incluem-se documentos referentes à avaliação das ações executadas pelo órgão e entidade, da legalidade dos procedimentos e da atuação do gestor público.','003.1 0031 Incluem-se documentos referentes a avaliacao das acoes executadas pelo orgao e entidade da legalidade dos procedimentos e da atuacao do gestor publico.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'003.2','AÇÃO PREVENTIVA','Incluem-se documentos referentes às ações implementadas por orientação dos órgãos fiscalizadores para prevenção da corrupção no órgão e entidade.','003.2 0032 Incluem-se documentos referentes as acoes implementadas por orientacao dos orgaos fiscalizadores para prevencao da corrupcao no orgao e entidade.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'003.3','CORREIÇÃO','Incluem-se documentos referentes à fiscalização e apuração de responsabilidades realizada pelos órgãos fiscalizadores em caso de irregularidades cometidas no órgão e entidade.','003.3 0033 Incluem-se documentos referentes a fiscalizacao e apuracao de responsabilidades realizada pelos orgaos fiscalizadores em caso de irregularidades cometidas no orgao e entidade.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004','ASSESSORAMENTO JURÍDICO','Nas subdivisões deste descritor classificam-se documentos referentes à análise jurídica de instrumentos e de atos normativos e ao acompanhamento de ações judiciais.','004 004 Nas subdivisoes deste descritor classificam-se documentos referentes a analise juridica de instrumentos e de atos normativos e ao acompanhamento de acoes judiciais.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.1','ORIENTAÇÃO TÉCNICA E NORMATIVA','Nas subdivisões deste descritor classificam-se documentos referentes à análise jurídica de instrumentos e de atos normativos elaborados pelo órgão e entidade.','004.1 0041 Nas subdivisoes deste descritor classificam-se documentos referentes a analise juridica de instrumentos e de atos normativos elaborados pelo orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.11','UNIFORMIZAÇÃO DO ENTENDIMENTO JURÍDICO','Incluem-se documentos referentes à  análise e à fixação de interpretação da Constituição, das leis, dos tratados e dos demais atos normativos, a serem seguidos, de modo uniforme, pelo órgão e entidade, quando não houver orientação normativa superior, tais como: instruções, pareceres e notas.','004.11 00411 Incluem-se documentos referentes a  analise e a fixacao de interpretacao da Constituicao das leis dos tratados e dos demais atos normativos a serem seguidos de modo uniforme pelo orgao e entidade quando nao houver orientacao normativa superior tais como: instrucoes pareceres e notas.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.12','ANÁLISE DOS INSTRUMENTOS ADMINISTRATIVOS','Incluem-se documentos referentes ao exame e à análise prévia ou conclusiva de textos de editais de licitação, de contratos e de instrumentos congêneres a serem publicados e celebrados pelo órgão e entidade.','004.12 00412 Incluem-se documentos referentes ao exame e a analise previa ou conclusiva de textos de editais de licitacao de contratos e de instrumentos congeneres a serem publicados e celebrados pelo orgao e entidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.2','ATUAÇÃO EM CONTENCIOSO','Nas subdivisões deste descritor classificam-se documentos referentes à atuação contenciosa judicial e administrativa, nas hipóteses de contestação, conflito ou litígio, exercida pela assessoria ou consultoria jurídica do órgão e entidade.','004.2 0042 Nas subdivisoes deste descritor classificam-se documentos referentes a atuacao contenciosa judicial e administrativa nas hipoteses de contestacao conflito ou litigio exercida pela assessoria ou consultoria juridica do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.21','REPRESENTAÇÃO EXTRAJUDICIAL','Incluem-se documentos referentes à solução extrajudicial dos litígios, visando à composição entre as partes em conflito de interesses, por meio de mediação, conciliação, arbitragem e demais técnicas de composição e administração de conflitos.','004.21 00421 Incluem-se documentos referentes a solucao extrajudicial dos litigios visando a composicao entre as partes em conflito de interesses por meio de mediacao conciliacao arbitragem e demais tecnicas de composicao e administracao de conflitos.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'004.22','REPRESENTAÇÃO JUDICIAL','Incluem-se documentos referentes às ações defendidas pela assessoria ou consultoria jurídica em processos administrativos e judiciais, perante todas as instâncias, ordinárias ou extraordinárias, utilizando as medidas capazes de propiciar a efetiva defesa dos interesses do órgão e entidade.','004.22 00422 Incluem-se documentos referentes as acoes defendidas pela assessoria ou consultoria juridica em processos administrativos e judiciais perante todas as instancias ordinarias ou extraordinarias utilizando as medidas capazes de propiciar a efetiva defesa dos interesses do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'005','PARTICIPAÇÃO EM ÓRGÃOS COLEGIADOS','Nas subdivisões deste descritor classificam-se documentos referentes à organização e ao funcionamento de colegiados, como comissões, conselhos, comitês, juntas e grupos de trabalho, criados pelo próprio órgão e entidade ou por outros órgãos de deliberação coletiva, que contem com a participação de servidores da instituição. Quanto aos documentos referentes às atividades do órgão colegiado, classificar no descritor referente ao objeto de sua atuação. Quanto aos documentos referentes ao processo eletivo, classificar nas subdivisões do código 014.','005 005 Nas subdivisoes deste descritor classificam-se documentos referentes a organizacao e ao funcionamento de colegiados como comissoes conselhos comites juntas e grupos de trabalho criados pelo proprio orgao e entidade ou por outros orgaos de deliberacao coletiva que contem com a participacao de servidores da instituicao. Quanto aos documentos referentes as atividades do orgao colegiado classificar no descritor referente ao objeto de sua atuacao. Quanto aos documentos referentes ao processo eletivo classificar nas subdivisoes do codigo 014.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'005.1','CRIAÇÃO E ORGANIZAÇÃO','Incluem-se documentos referentes à implantação de órgãos colegiados, tais como: ato de instituição, regras para atuação, designação e substituição de membros.  Quanto aos documentos referentes à atuação do órgão colegiado, devem ser classifi-cados no descritor referente ao objeto de sua atuação.','005.1 0051 Incluem-se documentos referentes a implantacao de orgaos colegiados tais como: ato de instituicao regras para atuacao designacao e substituicao de membros.  Quanto aos documentos referentes a atuacao do orgao colegiado devem ser classifi-cados no descritor referente ao objeto de sua atuacao.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'005.2','OPERACIONALIZAÇÃO DE REUNIÕES','Incluem-se documentos referentes à organização das reuniões dos órgãos colegiados, bem como aqueles referentes ao agendamento, convocação, pauta e lista de participantes.','005.2 0052 Incluem-se documentos referentes a organizacao das reunioes dos orgaos colegiados bem como aqueles referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'010','ORGANIZAÇÃO E FUNCIONAMENTO','Esta subclasse contempla documentos referentes à definição e alteração das políticas institucionais, à criação e modificação das estruturas organizacionais e aos registros que garantam a existência do órgão e entidade como pessoa jurídica e a sua atuação no meio público, privado, com o terceiro setor e com o cidadão, bem como aqueles referentes à contratação de prestação de serviços para o funcio-namento do órgão e entidade, e ao planejamento e acompanhamento das ações institucionais, da gestão ambiental e da comunicação social.','010 010 Esta subclasse contempla documentos referentes a definicao e alteracao das politicas institucionais a criacao e modificacao das estruturas organizacionais e aos registros que garantam a existencia do orgao e entidade como pessoa juridica e a sua atuacao no meio publico privado com o terceiro setor e com o cidadao bem como aqueles referentes a contratacao de prestacao de servicos para o funcio-namento do orgao e entidade e ao planejamento e acompanhamento das acoes institucionais da gestao ambiental e da comunicacao social.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'010.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais internos e às decisões de caráter geral sobre a organização e funcionamento de todas as atividades do órgão e entidade, bem como os boletins administrativos e de serviço. Quanto aos boletins de pessoal, classificar no código 020.01. Quanto à publicação de matérias em boletins administrativos, de serviço, de pessoal, em diários oficiais e em periódicos de grande circulação, classificar no código 069.3. Quanto a documentos referentes à função de normatização e regulamentação de determinada atividade que alcancem os órgãos e entidades do Poder Executivo federal, classificar na atividade finalística.','010.01 01001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais internos e as decisoes de carater geral sobre a organizacao e funcionamento de todas as atividades do orgao e entidade bem como os boletins administrativos e de servico. Quanto aos boletins de pessoal classificar no codigo 020.01. Quanto a publicacao de materias em boletins administrativos de servico de pessoal em diarios oficiais e em periodicos de grande circulacao classificar no codigo 069.3. Quanto a documentos referentes a funcao de normatizacao e regulamentacao de determinada atividade que alcancem os orgaos e entidades do Poder Executivo federal classificar na atividade finalistica.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'011','ORGANIZAÇÃO ADMINISTRATIVA','Incluem-se documentos referentes aos estudos para a definição da estrutura e das atribuições do órgão e entidade e para as mudanças estratégicas (missão, finalidade e forma de atuação) e estruturais (hierarquia, distribuição formal de autoridade e responsabilidade, abertura ou encerramento de unidades administrativas), bem como aqueles resultantes da implantação de reformas administrativas ou de processos de modernização, com impacto no órgão e entidade, na forma de fusão, privatização, reestatização ou extinção.','011 011 Incluem-se documentos referentes aos estudos para a definicao da estrutura e das atribuicoes do orgao e entidade e para as mudancas estrategicas (missao, finalidade e forma de atuacao) e estruturais (hierarquia, distribuicao formal de autoridade e responsabilidade, abertura ou encerramento de unidades administrativas), bem como aqueles resultantes da implantacao de reformas administrativas ou de processos de modernizacao, com impacto no orgao e entidade, na forma de fusao, privatizacao, reestatizacao ou extincao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'012','HABILITAÇÃO JURÍDICA E REGULARIZAÇÃO FISCAL','Incluem-se documentos referentes à inscrição, baixa e cancelamento nos órgãos competentes, tais como: cadastro bancário, registros de inscrição no Cadastro Nacional de Pessoa Jurídica (CNPJ), no Sistema de Operações, Registro e Controle do Banco Central (Sisbacen), no Serviço de Proteção ao Crédito (SPC), no Cadastro Informativo de Créditos e não Quitados do Setor Público Federal (Cadin).','012 012 Incluem-se documentos referentes a inscricao baixa e cancelamento nos orgaos competentes tais como: cadastro bancario registros de inscricao no Cadastro Nacional de Pessoa Juridica (CNPJ) no Sistema de Operacoes Registro e Controle do Banco Central (Sisbacen) no Servico de Protecao ao Credito (SPC) no Cadastro Informativo de Creditos e nao Quitados do Setor Publico Federal (Cadin).','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'013','COORDENAÇÃO E GESTÃO DE REUNIÕES','Nas subdivisões deste descritor classificam-se documentos relativos às atividades necessárias para a realização de assembleias, audiências, despachos e reuniões, gerais e setoriais, do órgão e entidade, bem como aqueles referentes ao registro de suas deliberações.','013 013 Nas subdivisoes deste descritor classificam-se documentos relativos as atividades necessarias para a realizacao de assembleias audiencias despachos e reunioes gerais e setoriais do orgao e entidade bem como aqueles referentes ao registro de suas deliberacoes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'013.1','OPERACIONALIZAÇÃO','Incluem-se documentos referentes à organização das reuniões do órgão e entidade, bem como aqueles referentes ao agendamento, convocação, pauta e lista de participantes.','013.1 0131 Incluem-se documentos referentes a organizacao das reunioes do orgao e entidade bem como aqueles referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'013.2','REGISTRO DE DELIBERAÇÕES','Incluem-se documentos referentes aos registros das deliberações e tomadas de decisão definidas nas assembleias, audiências, despachos e reuniões, tais como: atas e relatórios.','013.2 0132 Incluem-se documentos referentes aos registros das deliberacoes e tomadas de decisao definidas nas assembleias, audiencias, despachos e reunioes, tais como: atas e relatorios.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'014','GERENCIAMENTO DE PROCESSO ELETIVO','Nas subdivisões deste descritor classificam-se documentos referentes aos processos eletivos para preenchimento de função de direção, eleição para atuação em órgãos colegiados e demais consultas públicas ou institucionais, previstos em legislação competente à área de atuação do órgão e entidade.','014 014 Nas subdivisoes deste descritor classificam-se documentos referentes aos processos eletivos para preenchimento de funcao de direcao eleicao para atuacao em orgaos colegiados e demais consultas publicas ou institucionais previstos em legislacao competente a area de atuacao do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'014.1','NOMEAÇÃO E ATUAÇÃO DA COMISSÃO ELEITORAL','Incluem-se documentos referentes à constituição e às atividades da comissão eleitoral, das mesas de votação e dos fiscais, tais como: indicação dos membros, regimento eleitoral, convocação, pauta, lista de participantes e registros e atas das reuniões.','014.1 0141 Incluem-se documentos referentes a constituicao e as atividades da comissao eleitoral das mesas de votacao e dos fiscais tais como: indicacao dos membros regimento eleitoral convocacao pauta lista de participantes e registros e atas das reunioes.','S',1,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'014.2','INSCRIÇÃO','Incluem-se documentos referentes à definição do calendário eleitoral, à inscrição de candidatos para participação no processo eletivo e à divulgação das atividades eletivas e dos candidatos, tais como: cronograma, cópia de documentos pessoais dos inscritos ou integrantes das chapas concorrentes, propaganda eleitoral e pedidos de impugnação de candidatura.','014.2 0142 Incluem-se documentos referentes a definicao do calendario eleitoral a inscricao de candidatos para participacao no processo eletivo e a divulgacao das atividades eletivas e dos candidatos tais como: cronograma copia de documentos pessoais dos inscritos ou integrantes das chapas concorrentes propaganda eleitoral e pedidos de impugnacao de candidatura.','S',1,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'014.3','VOTAÇÃO','Incluem-se documentos referentes à apuração do processo eletivo, tais como: relação de eleitores habilitados, cédulas de votação e contagem de votos.','014.3 0143 Incluem-se documentos referentes a apuracao do processo eletivo tais como: relacao de eleitores habilitados cedulas de votacao e contagem de votos.','S',1,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'014.4','DIVULGAÇÃO DOS RESULTADOS E INTERPOSIÇÃO DE RECURSOS','Incluem-se documentos referentes aos resultados finais da eleição realizada e à divulgação dos candidatos eleitos, bem como aqueles referentes aos recursos impetrados.','014.4 0144 Incluem-se documentos referentes aos resultados finais da eleicao realizada e a divulgacao dos candidatos eleitos bem como aqueles referentes aos recursos impetrados.','S',1,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015','GESTÃO INSTITUCIONAL','Nas subdivisões deste descritor classificam-se documentos referentes ao planejamento, acompanhamento, avaliação, governança e acreditação das atividades do órgão e entidade.','015 015 Nas subdivisoes deste descritor classificam-se documentos referentes ao planejamento, acompanhamento, avaliacao, governanca e acreditacao das atividades do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.1','PLANEJAMENTO INSTITUCIONAL','Incluem-se documentos referentes ao planejamento, às ações e aos programas e projetos de trabalho do órgão e entidade, tais como: planejamento plurianual, planejamento estratégico, plano de desenvolvimento institucional, plano de metas e definição de indicadores de desempenho.','015.1 0151 Incluem-se documentos referentes ao planejamento as acoes e aos programas e projetos de trabalho do orgao e entidade tais como: planejamento plurianual planejamento estrategico plano de desenvolvimento institucional plano de metas e definicao de indicadores de desempenho.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.2','ACOMPANHAMENTO DAS ATIVIDADES','Incluem-se documentos referentes aos registros das atividades desempenhadas pelo órgão e entidade, tais como: relatórios parciais (mensal, trimestral ou semestral), relatório anual e relatório de gestão.','015.2 0152 Incluem-se documentos referentes aos registros das atividades desempenhadas pelo orgao e entidade, tais como: relatorios parciais (mensal, trimestral ou semestral), relatorio anual e relatorio de gestao.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.3','AVALIAÇÃO DA GESTÃO INSTITUCIONAL','Nas subdivisões deste descritor classificam-se documentos referentes às ações de autoavaliação, para verificação do desempenho do órgão e entidade, visando o controle da qualidade e a melhoria na prestação do serviço público.','015.3 0153 Nas subdivisoes deste descritor classificam-se documentos referentes as acoes de autoavaliacao para verificacao do desempenho do orgao e entidade visando o controle da qualidade e a melhoria na prestacao do servico publico.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.31','ELABORAÇÃO DOS INSTRUMENTOS DE AVALIAÇÃO','Incluem-se documentos referentes ao planejamento das atividades de avaliação e aos programas e projetos de implementação do controle da qualidade da gestão do órgão e entidade, tais como: definição de indicadores e de instrumentos para avaliação dos aspectos gerenciais, diagnósticos e cronogramas.','015.31 01531 Incluem-se documentos referentes ao planejamento das atividades de avaliacao e aos programas e projetos de implementacao do controle da qualidade da gestao do orgao e entidade, tais como: definicao de indicadores e de instrumentos para avaliacao dos aspectos gerenciais, diagnosticos e cronogramas.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.32','EXECUÇÃO E ACOMPANHAMENTO','Incluem-se documentos referentes à implementação das atividades de avaliação e controle da qualidade da gestão institucional, bem como aqueles referentes à análise crítica e à verificação da compatibilidade entre o planejamento e os resultados obtidos na apuração das metas institucionais.','015.32 01532 Incluem-se documentos referentes a implementacao das atividades de avaliacao e controle da qualidade da gestao institucional bem como aqueles referentes a analise critica e a verificacao da compatibilidade entre o planejamento e os resultados obtidos na apuracao das metas institucionais.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.33','CERTIFICAÇÃO DA CONFORMIDADE','Incluem-se documentos referentes à certificação da conformidade, às propostas de ações corretivas e preventivas e ao tratamento da não conformidade, bem como relatórios estatísticos, demonstrativos de resultados, certificados e premiações.','015.33 01533 Incluem-se documentos referentes a certificacao da conformidade as propostas de acoes corretivas e preventivas e ao tratamento da nao conformidade bem como relatorios estatisticos demonstrativos de resultados certificados e premiacoes.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.4','GOVERNANÇA','Nas subdivisões desse descritor classificam-se documentos referentes ao monitoramento de riscos, a integridade e o controle interno, visando dar transparência, equidade e responsabilização aos órgãos e entidades.','015.4 0154 Nas subdivisoes desse descritor classificam-se documentos referentes ao monitoramento de riscos, a integridade e o controle interno, visando dar transparencia, equidade e responsabilizacao aos orgaos e entidades.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.41','GERENCIAMENTO DE RISCO','Incluem-se documentos referentes aos procedimentos de identificação, análise, avaliação, tratamento e monitoramento dos riscos que podem afetar o alcance dos objetivos dos órgãos e entidades.','015.41 01541 Incluem-se documentos referentes aos procedimentos de identificacao, analise, avaliacao, tratamento e monitoramento dos riscos que podem afetar o alcance dos objetivos dos orgaos e entidades.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.42','INTEGRIDADE E CONTROLE INTERNO','Incluem-se documentos referentes a procedimentos internos adotados pelo órgão ou entidade com a intenção de prevenir, detectar e combater a corrupção e fraudes, garantindo a integridade do processo de tomada de decisão e da prática de atos de gestão.','015.42 01542 Incluem-se documentos referentes a procedimentos internos adotados pelo orgao ou entidade com a intencao de prevenir, detectar e combater a corrupcao e fraudes, garantindo a integridade do processo de tomada de decisao e da pratica de atos de gestao.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'015.5','ACOMPANHAMENTO DA ACREDITAÇÃO','Incluem-se documentos referentes à solicitação, obtenção e manutenção da acreditação, alusivo ao atendimento de requisitos previamente definidos para realizar as atividades com confiança, em seu âmbito de atuação. ','015.5 0155 Incluem-se documentos referentes a solicitacao obtencao e manutencao da acreditacao alusivo ao atendimento de requisitos previamente definidos para realizar as atividades com confianca em seu ambito de atuacao. ','S',NULL,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016','GESTÃO DE PROCESSOS','Nas subdivisões deste descritor classificam-se documentos referentes às etapas que envolvem planejamento, análise, mapeamento, desenho e modelagem de processos institucionais e ao gerenciamento de desempenho.','016 016 Nas subdivisoes deste descritor classificam-se documentos referentes as etapas que envolvem planejamento analise mapeamento desenho e modelagem de processos institucionais e ao gerenciamento de desempenho.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016.1','PLANEJAMENTO DO MAPEAMENTO DE PROCESSOS','Incluem-se documentos referentes ao planejamento do mapeamento de processos institucionais, tais como: identificação de objetivos e de ferramentas a serem utilizadas e cronograma de atividades.','016.1 0161 Incluem-se documentos referentes ao planejamento do mapeamento de processos institucionais, tais como: identificacao de objetivos e de ferramentas a serem utilizadas e cronograma de atividades.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016.2','EXECUÇÃO E ACOMPANHAMENTO','Incluem-se documentos referentes ao desenvolvimento do mapeamento de processos institucionais e à coleta de dados.','016.2 0162 Incluem-se documentos referentes ao desenvolvimento do mapeamento de processos institucionais e a coleta de dados.','S',9,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016.3','RESULTADO','Incluem-se documentos referentes aos resultados do mapeamento de processos institucionais, tais como: diagnósticos, fluxogramas e relatórios.','016.3 0163 Incluem-se documentos referentes aos resultados do mapeamento de processos institucionais, tais como: diagnosticos, fluxogramas e relatorios.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016.4','MODELAGEM DE PROCESSOS','Incluem-se documentos referentes à definição de especificações para a modelagem de processos novos ou modificados.','016.4 0164 Incluem-se documentos referentes a definicao de especificacoes para a modelagem de processos novos ou modificados.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'016.5','GERENCIAMENTO DE DESEMPENHO','Incluem-se documentos referentes à medição e monitoramento de processos e propostas de ações corretivas ou preventivas, tais como: questionários, avaliações, propostas, análises e laudos.','016.5 0165 Incluem-se documentos referentes a medicao e monitoramento de processos e propostas de acoes corretivas ou preventivas tais como: questionarios avaliacoes propostas analises e laudos.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'017','GESTÃO AMBIENTAL','Nas subdivisões deste descritor classificam-se documentos referentes à gestão ambiental, visando à utilização racional e sustentável dos recursos naturais, envolvendo o uso de práticas e o desenvolvimento de hábitos que garantam a proteção, conservação e preservação da biodiversidade, a reciclagem das matérias-primas e a redução do impacto ambiental.','017 017 Nas subdivisoes deste descritor classificam-se documentos referentes a gestao ambiental visando a utilizacao racional e sustentavel dos recursos naturais envolvendo o uso de praticas e o desenvolvimento de habitos que garantam a protecao conservacao e preservacao da biodiversidade a reciclagem das materias-primas e a reducao do impacto ambiental.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'017.1','PROTEÇÃO AMBIENTAL INTERNA','Incluem-se documentos referentes aos procedimentos de controle e preservação do ambiente de trabalho que envolve a conscientização dos servidores, tais como: campanhas de conscientização para redução do consumo de água e energia elétrica e programas de coleta seletiva solidária e reciclagem de resíduos descartáveis, bem como a produção de material de divulgação. Quanto ao controle de riscos ambientais, classificar no código 025.21. Quanto ao recolhimento de material inservível e de sucatas ao depósito, classificar no código 032.3.','017.1 0171 Incluem-se documentos referentes aos procedimentos de controle e preservacao do ambiente de trabalho que envolve a conscientizacao dos servidores, tais como: campanhas de conscientizacao para reducao do consumo de agua e energia eletrica e programas de coleta seletiva solidaria e reciclagem de residuos descartaveis, bem como a producao de material de divulgacao. Quanto ao controle de riscos ambientais, classificar no codigo 025.21. Quanto ao recolhimento de material inservivel e de sucatas ao deposito, classificar no codigo 032.3.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'017.2','PROTEÇÃO AMBIENTAL EXTERNA','Incluem-se documentos referentes aos procedimentos de controle e preservação ambiental externa que envolve a coleta seletiva solidária, a reciclagem de resíduos descartáveis e o uso de fontes não poluentes, tais como: projetos, questionários, avaliações, análises, laudos, relatórios estatísticos e de destinação de resíduos. Quanto à alienação definitiva, por desfazimento, de material permanente e de consumo em razão de serem considerados inservíveis e irrecuperáveis, classificar nos códigos 033.41 e 033.42, respectivamente.','017.2 0172 Incluem-se documentos referentes aos procedimentos de controle e preservacao ambiental externa que envolve a coleta seletiva solidaria a reciclagem de residuos descartaveis e o uso de fontes nao poluentes tais como: projetos questionarios avaliacoes analises laudos relatorios estatisticos e de destinacao de residuos. Quanto a alienacao definitiva por desfazimento de material permanente e de consumo em razao de serem considerados inserviveis e irrecuperaveis classificar nos codigos 033.41 e 033.42 respectivamente.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'018','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Nas subdivisões desse descritor classificam-se documentos referentes à contratação de pessoa jurídica ou pessoa física para a realização de serviços e/ou fornecimento de mão de obra terceirizada para o órgão ou entidade, com exceção dos referentes à execução de obras em bens imóveis. Quanto à contratação de pessoa jurídica ou física para execução de obras em bens imóveis do órgão e entidade, classificar nas subdivisões do código 045.3.','018 018 Nas subdivisoes desse descritor classificam-se documentos referentes a contratacao de pessoa juridica ou pessoa fisica para a realizacao de servicos e/ou fornecimento de mao de obra terceirizada para o orgao ou entidade com excecao dos referentes a execucao de obras em bens imoveis. Quanto a contratacao de pessoa juridica ou fisica para execucao de obras em bens imoveis do orgao e entidade classificar nas subdivisoes do codigo 045.3.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'018.1','CONTRATAÇÃO DE PESSOA JURÍDICA','Incluem-se documentos referentes à contratação de pessoa jurídica para a realização de serviços e/ou fornecimento de mão de obra para o órgão ou entidade, tais como: planejamento da contratação, divulgação, seleção do fornecedor, contrato, indicação e designação do gestor e dos fiscais da execução do contrato para acompanhamento, fiscalização, avaliação e aferição dos resultados previstos na contratação e demais documentos comprobatórios da prestação de serviços.','018.1 0181 Incluem-se documentos referentes a contratacao de pessoa juridica para a realizacao de servicos e/ou fornecimento de mao de obra para o orgao ou entidade tais como: planejamento da contratacao divulgacao selecao do fornecedor contrato indicacao e designacao do gestor e dos fiscais da execucao do contrato para acompanhamento fiscalizacao avaliacao e afericao dos resultados previstos na contratacao e demais documentos comprobatorios da prestacao de servicos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'018.2','CONTRATAÇÃO DE PESSOA FÍSICA','Incluem-se documentos referentes à contratação de pessoas físicas (autônomos e colaboradores) para a realização de serviços técnicos profissionais especializados, transitórios, de caráter eventual, por prazo determinado e sem vínculo empregatício, tais como: planejamento da contratação, divulgação, seleção, contrato, indicação e designação do gestor e dos fiscais da execução do contrato para acompanhamento, fiscalização, avaliação e aferição dos resultados previstos na contratação e demais documentos comprobatórios da prestação de serviços.','018.2 0182 Incluem-se documentos referentes a contratacao de pessoas fisicas (autônomos e colaboradores) para a realizacao de servicos tecnicos profissionais especializados transitorios de carater eventual por prazo determinado e sem vinculo empregaticio tais como: planejamento da contratacao divulgacao selecao contrato indicacao e designacao do gestor e dos fiscais da execucao do contrato para acompanhamento fiscalizacao avaliacao e afericao dos resultados previstos na contratacao e demais documentos comprobatorios da prestacao de servicos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019','OUTRAS AÇÕES REFERENTES À ORGANIZAÇÃO E FUNCIONAMENTO','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de organização e funcionamento não contempladas nos descritores anteriores.','019 019 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de organizacao e funcionamento nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.1','GERENCIAMENTO DE ESTRATÉGIAS DE MARKETING E DE COMUNICAÇÃO SOCIAL','Nas subdivisões deste descritor classificam-se documentos referentes à administração da comunicação, à divulgação interna, ao planejamento, elaboração, acompanhamento, execução e avaliação das estratégias e ações de marketing (como o cultural, social, ambiental, de relacionamento, institucional e endomarketing) e de merchandising, alinhadas com o posicionamento institucional, desenvolvidos com meios próprios, por meio da contratação de empresas terceirizadas ou profissionais transitórios, bem como às atividadesde comunicação social nos âmbitos externo e interno, compreendendo a escolha e os usos de mídias empregadas. Quanto aos documentos referentes à contratação de empresas terceirizadas ou de autônomo, classificar nas subdivisões do código 018.','019.1 0191 Nas subdivisoes deste descritor classificam-se documentos referentes a administracao da comunicacao a divulgacao interna ao planejamento elaboracao acompanhamento execucao e avaliacao das estrategias e acoes de marketing (como o cultural social ambiental de relacionamento institucional e endomarketing) e de merchandising alinhadas com o posicionamento institucional desenvolvidos com meios proprios por meio da contratacao de empresas terceirizadas ou profissionais transitorios bem como as atividadesde comunicacao social nos ambitos externo e interno compreendendo a escolha e os usos de midias empregadas. Quanto aos documentos referentes a contratacao de empresas terceirizadas ou de autônomo classificar nas subdivisoes do codigo 018.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.11','ADMINISTRAÇÃO DA COMUNICAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes ao credenciamento de jornalistas, relacionamento com a imprensa, elaboração de propagandas e campanhas publicitárias, elaboração e atualização de site institucional. Quanto ao assessoramento de cerimonial para a realização de solenidades oficiais e eventos do órgão e entidade, classificar nas subdivisões do código 910.','019.11 01911 Nas subdivisoes deste descritor classificam-se documentos referentes ao credenciamento de jornalistas, relacionamento com a imprensa, elaboracao de propagandas e campanhas publicitarias, elaboracao e atualizacao de site institucional. Quanto ao assessoramento de cerimonial para a realizacao de solenidades oficiais e eventos do orgao e entidade, classificar nas subdivisoes do codigo 910.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.111','CREDENCIAMENTO DE JORNALISTAS','Incluem-se documentos referentes ao credenciamento de jornalistas, tais como: normas de credenciamento, formulários e credenciais.','019.111 019111 Incluem-se documentos referentes ao credenciamento de jornalistas, tais como: normas de credenciamento, formularios e credenciais.','S',1,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.112','RELAÇÃO COM A IMPRENSA','Incluem-se documentos referentes à releases para publicação, mensagens, entrevistas, noticiários, reportagens e editoriais.','019.112 019112 Incluem-se documentos referentes a releases para publicacao mensagens entrevistas noticiarios reportagens e editoriais.','S',NULL,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.113','ELABORAÇÃO DE PROPAGANDAS, CAMPANHAS DE MARKETING E PUBLICITÁRIAS','Incluem-se documentos referentes àsações demarketing(como o cultural, social, ambiental, de relacionamento, institucional e endomarketing), ações de merchandising,campanhas institucionais, filmes, propagandas e à produção de material de divulgação do órgão e entidade,desenvolvidocom meios próprios, por meio de contratação de empresas terceirizadas ou profissionais transitórios, bem como os produtos resultantes da elaboração. Quanto aos documentos referentes à contratação de empresas terceirizadas oude autônomos, classificar nas subdivisões do código 018','019.113 019113 Incluem-se documentos referentes asacoes demarketing(como o cultural social ambiental de relacionamento institucional e endomarketing) acoes de merchandisingcampanhas institucionais filmes propagandas e a producao de material de divulgacao do orgao e entidadedesenvolvidocom meios proprios por meio de contratacao de empresas terceirizadas ou profissionais transitorios bem como os produtos resultantes da elaboracao. Quanto aos documentos referentes a contratacao de empresas terceirizadas oude autônomos classificar nas subdivisoes do codigo 018','S',10,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.114','ELABORAÇÃO E ATUALIZAÇÃO DESITEINSTITUCIONAL','Incluem-se documentos referentes à elaboração, atualização e publicação deconteúdos, postagens e interações no site institucional, bem como em mídias e redes sociais eletrônicas. Quanto aos documentos referentes ao desenvolvimento e manutenção dossites, pertinente aos requisitos informáticos, classificar nas subdivisões do código 066.','019.114 019114 Incluem-se documentos referentes a elaboracao atualizacao e publicacao deconteudos postagens e interacoes no site institucional bem como em midias e redes sociais eletrônicas. Quanto aos documentos referentes ao desenvolvimento e manutencao dossites pertinente aos requisitos informaticos classificar nas subdivisoes do codigo 066.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.12','DIVULGAÇÃO INTERNA','Incluem-se documentos referentes à divulgação para o público interno de notícias publicadas que envolvem o órgão e entidade ou sobre assuntos afins à sua missão, tais como: clipagem de notícias veiculadas em jornais, em revistas e em sites de comunicação e divulgação de avisos, comunicados, boletins e informativos.','019.12 01912 Incluem-se documentos referentes a divulgacao para o publico interno de noticias publicadas que envolvem o orgao e entidade ou sobre assuntos afins a sua missao tais como: clipagem de noticias veiculadas em jornais em revistas e em sites de comunicacao e divulgacao de avisos comunicados boletins e informativos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.13','PLANEJAMENTO, ELABORAÇÃO E ACOMPANHAMENTO','Incluem-se documentos referentes ao planejamento, elaboração e ao acompanhamento das estratégias e ações de marketing e de comunicação social, desenvolvidas pelo órgão ou entidade.','019.13 01913 Incluem-se documentos referentes ao planejamento, elaboracao e ao acompanhamento das estrategias e acoes de marketing e de comunicacao social, desenvolvidas pelo orgao ou entidade.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.14','EXECUÇÃO E AVALIAÇÃO DE ESTRATÉGIAS','Incluem-se documentos referentes à execução e avaliação das estratégias e ações de marketing e de comunicação social, desenvolvidas pelo órgão ou entidade.','019.14 01914 Incluem-se documentos referentes a execucao e avaliacao das estrategias e acoes de marketing e de comunicacao social desenvolvidas pelo orgao ou entidade.','S',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'019.2','AÇÃO DE RESPONSABILIDADE SOCIAL','Incluem-se documentos referentes à participação em ações de incentivo ao esporte, à cultura e à educação, com possibilidade de dedução de imposto de renda, conforme especificado em legislação. Quanto às ações de marketing e de merchandising, classificar no código 019.113.','019.2 0192 Incluem-se documentos referentes a participacao em acoes de incentivo ao esporte a cultura e a educacao com possibilidade de deducao de imposto de renda conforme especificado em legislacao. Quanto as acoes de marketing e de merchandising classificar no codigo 019.113.','S',9,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020','GESTÃO DE PESSOAS','Esta subclasse contempla documentos referentes aos direitos e obrigações dos servidores e empregados públicos, dos servidores temporários, dos residentes (aqueles inscritos nas residências médica, multiprofissional em saúde, pedagógica e jurídica, entre outras), dos estagiários, dos ocupantes de cargo comissionado e de função de confiança sem vínculo, lotados no órgão e entidade, bem como aqueles referentes aos direitos e obrigações do empregador.','020 020 Esta subclasse contempla documentos referentes aos direitos e obrigacoes dos servidores e empregados publicos, dos servidores temporarios, dos residentes (aqueles inscritos nas residencias medica, multiprofissional em saude, pedagogica e juridica, entre outras), dos estagiarios, dos ocupantes de cargo comissionado e de funcao de confianca sem vinculo, lotados no orgao e entidade, bem como aqueles referentes aos direitos e obrigacoes do empregador.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão de pessoas do órgão e entidade, bem como os boletins de pessoal. Quanto aos boletins administrativos e de serviço, classificar no código 010.01. Quanto à publicação de matériasemboletins administrativos, de serviço, de pessoal, emdiários oficiais e em periódicos de grande circulação, classificar no código 069.3.','020.01 02001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao de pessoas do orgao e entidade bem como os boletins de pessoal. Quanto aos boletins administrativos e de servico classificar no codigo 010.01. Quanto a publicacao de materiasemboletins administrativos de servico de pessoal emdiarios oficiais e em periodicos de grande circulacao classificar no codigo 069.3.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.02','IMPLEMENTAÇÃO DAS POLÍTICAS DE PESSOAL','Nas subdivisões deste descritor classificam-se documentos referentes ao planejamento, desenvolvimento e implantação das políticas de pessoal.','020.02 02002 Nas subdivisoes deste descritor classificam-se documentos referentes ao planejamento, desenvolvimento e implantacao das politicas de pessoal.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.021','PLANEJAMENTO DA FORÇA DE TRABALHO. PREVISÃO DE PESSOAL','Incluem-se documentos referentes ao levantamento das habilidades e especificações necessárias para o exercício das funções e atividades rotineiras e eventuais, visando subsidiar a previsão de pessoal, definindo qualificação e quantitativo.','020.021 020021 Incluem-se documentos referentes ao levantamento das habilidades e especificacoes necessarias para o exercicio das funcoes e atividades rotineiras e eventuais, visando subsidiar a previsao de pessoal, definindo qualificacao e quantitativo.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.022','CRIAÇÃO, EXTINÇÃO, CLASSIFICAÇÃO, TRANSFORMAÇÃO E TRANSPOSIÇÃO DE CARGOS E DE CARREIRAS','Incluem-se documentos referentes à criação, transformação e reestruturação de cargos, carreiras e remuneração dos servidores da administração pública.  Quanto à reestruturação e alteração salarial, classificar no código 023.12.','020.022 020022 Incluem-se documentos referentes a criacao transformacao e reestruturacao de cargos carreiras e remuneracao dos servidores da administracao publica.  Quanto a reestruturacao e alteracao salarial classificar no codigo 023.12.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.03','RELACIONAMENTO COM ENTIDADES REPRESENTATIVAS DE CLASSES','Nas subdivisões deste descritor classificam-se documentos referentes às negociações que envolvem servidores, sindicatos e empregados, bem como aqueles referentes ao relacionamento do órgão e entidade com os conselhos profissionais.','020.03 02003 Nas subdivisoes deste descritor classificam-se documentos referentes as negociacoes que envolvem servidores sindicatos e empregados bem como aqueles referentes ao relacionamento do orgao e entidade com os conselhos profissionais.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.031','RELAÇÃO COM SINDICATOS','Incluem-se documentos referentes aos acordos, convenções e dissídios coletivos estabelecidos nas negociações que envolvem servidores, sindicatos e empregadores. Quanto à contribuição sindical, assistencial e confederativa do servidor, classificar no código 023.171. Quanto à contribuição sindical do empregador, classificar no código 023.183.','020.031 020031 Incluem-se documentos referentes aos acordos convencoes e dissidios coletivos estabelecidos nas negociacoes que envolvem servidores sindicatos e empregadores. Quanto a contribuicao sindical assistencial e confederativa do servidor classificar no codigo 023.171. Quanto a contribuicao sindical do empregador classificar no codigo 023.183.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.032','MOVIMENTOS REIVINDICATÓRIOS. GREVES. PARALISAÇÕES','Incluem-se documentos referentes à notificação da greve, por parte dos grevistas, ao órgão e entidade, bem como aqueles referentes aos acordos e respectivas compensações por parte dos servidores sobre o desconto dos dias parados.','020.032 020032 Incluem-se documentos referentes a notificacao da greve por parte dos grevistas ao orgao e entidade bem como aqueles referentes aos acordos e respectivas compensacoes por parte dos servidores sobre o desconto dos dias parados.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.033','RELAÇÃO COM CONSELHOS PROFISSIONAIS','Incluem-se documentos referentes ao relacionamento com os conselhos profissionais, tais como: fiscalização do órgão e entidade pelos conselhos profissionais e comprovantes de pagamento da anuidade.','020.033 020033 Incluem-se documentos referentes ao relacionamento com os conselhos profissionais, tais como: fiscalizacao do orgao e entidade pelos conselhos profissionais e comprovantes de pagamento da anuidade.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.1','ASSENTAMENTO FUNCIONAL','Nas subdivisões deste descritor classificam-se documentos referentes à vida funcional dos servidores e empregados públicos, dos servidores temporários, dos residentes (aqueles inscritos nas residências médica, multiprofissional em saúde, pedagógica e jurídica, entre outras), dos estagiários, dos ocupantes de cargo comissionado e de função de confiança sem vínculo, bem como os registros e as anotações dos atos da administração pública a que tiveram direito ou lhe foram impostos como deveres.','020.1 0201 Nas subdivisoes deste descritor classificam-se documentos referentes a vida funcional dos servidores e empregados publicos dos servidores temporarios dos residentes (aqueles inscritos nas residencias medica multiprofissional em saude pedagogica e juridica entre outras) dos estagiarios dos ocupantes de cargo comissionado e de funcao de confianca sem vinculo bem como os registros e as anotacoes dos atos da administracao publica a que tiveram direito ou lhe foram impostos como deveres.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.11','SERVIDORES E EMPREGADOS PÚBLICOS','Incluem-se documentos referentes à vida funcional dos servidores estatutários ativos (ou seja, ocupantes de cargos públicos) e inativos e dos empregados públicos (ou seja, ocupantes de empregos públicos) que são contratados e submetidos ao regime da legislação trabalhista.','020.11 02011 Incluem-se documentos referentes a vida funcional dos servidores estatutarios ativos (ou seja ocupantes de cargos publicos) e inativos e dos empregados publicos (ou seja ocupantes de empregos publicos) que sao contratados e submetidos ao regime da legislacao trabalhista.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.12','SERVIDORES TEMPORÁRIOS','Incluem-se documentos referentes à vida funcional dos servidores que são contratados por tempo determinado, em caráter excepcional para atender uma eventual necessidade de interesse público, sem que estejam vinculados a cargo ou emprego públicos. Quanto à contratação de pessoas físicas (autônomos e colaboradores), classificar no código 029.5.','020.12 02012 Incluem-se documentos referentes a vida funcional dos servidores que sao contratados por tempo determinado em carater excepcional para atender uma eventual necessidade de interesse publico sem que estejam vinculados a cargo ou emprego publicos. Quanto a contratacao de pessoas fisicas (autônomos e colaboradores) classificar no codigo 029.5.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.13','RESIDENTES E ESTAGIÁRIOS','Incluem-se documentos referentes à vida funcional dos residentes e dos estagiários.','020.13 02013 Incluem-se documentos referentes a vida funcional dos residentes e dos estagiarios.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.14','OCUPANTES DE CARGO COMISSIONADO E DE FUNÇÃO DE CONFIANÇA','Incluem-se documentos referentes à vida funcional dos ocupantes de cargo comissionado e de função de confiança sem vínculo.','020.14 02014 Incluem-se documentos referentes a vida funcional dos ocupantes de cargo comissionado e de funcao de confianca sem vinculo.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'020.2','IDENTIFICAÇÃO FUNCIONAL','Incluem-se documentos referentes à requisição e ao controle de entrega de documentos de identificação funcional, tais como: carteira, cartão, identidade, crachá, credencial, passaporte de serviço ou diplomático.','020.2 0202 Incluem-se documentos referentes a requisicao e ao controle de entrega de documentos de identificacao funcional tais como: carteira cartao identidade cracha credencial passaporte de servico ou diplomatico.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021','RECRUTAMENTO E SELEÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos desenvolvidos para a realização de concursos públicos para o provimento de cargos públicos, empregos públicos e contratação por tempo determinado ou para realização de processo seletivo, que ocorre entre instituições, para recrutamento de servidores e empregados públicos.','021 021 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos desenvolvidos para a realizacao de concursos publicos para o provimento de cargos publicos, empregos publicos e contratacao por tempo determinado ou para realizacao de processo seletivo, que ocorre entre instituicoes, para recrutamento de servidores e empregados publicos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021.1','PLANEJAMENTO DO PROCESSO SELETIVO','Incluem-se estudos, propostas, constituição de bancas examinadoras, programas, editais, exemplares únicos de provas, gabaritos e critérios para correção de provas e para solicitação de recursos.','021.1 0211 Incluem-se estudos, propostas, constituicao de bancas examinadoras, programas, editais, exemplares unicos de provas, gabaritos e criterios para correcao de provas e para solicitacao de recursos.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021.2','INSCRIÇÃO','Incluem-se documentos exigidos no edital para a homologação da inscrição e fichas de inscrição.','021.2 0212 Incluem-se documentos exigidos no edital para a homologacao da inscricao e fichas de inscricao.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021.3','CONTROLE DE APLICAÇÃO DE PROVAS','Incluem-se documentos referentes ao controle de aplicação das provas, de acordo com os requisitos estipulados no edital.','021.3 0213 Incluem-se documentos referentes ao controle de aplicacao das provas, de acordo com os requisitos estipulados no edital.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021.4','CORREÇÃO DE PROVAS. AVALIAÇÃO','Incluem-se cadernos de prova utilizados pelos candidatos, folhas de resposta, provas de títulos, avaliação psicológica, testes psicotécnicos, exames médicos e de aptidão física, bem como currículos e entrevistas dos candidatos. Quanto às provas de títulos, avaliação psicológica, testes psicotécnicos, exames médicos e de aptidão física dos candidatos que vierem a ser nomeados, classificar nas subdivisões do código 020.1.','021.4 0214 Incluem-se cadernos de prova utilizados pelos candidatos folhas de resposta provas de titulos avaliacao psicologica testes psicotecnicos exames medicos e de aptidao fisica bem como curriculos e entrevistas dos candidatos. Quanto as provas de titulos avaliacao psicologica testes psicotecnicos exames medicos e de aptidao fisica dos candidatos que vierem a ser nomeados classificar nas subdivisoes do codigo 020.1.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'021.5','DIVULGAÇÃO DOS RESULTADOS E INTERPOSIÇÃO DE RECURSOS','Incluem-se documentos referentes aos resultados das provas realizadas ou do processo seletivo interno, a classificação e a reclassificação dos candidatos, bem como aqueles referentes aos recursos impetrados em qualquer uma das fases do concurso.','021.5 0215 Incluem-se documentos referentes aos resultados das provas realizadas ou do processo seletivo interno, a classificacao e a reclassificacao dos candidatos, bem como aqueles referentes aos recursos impetrados em qualquer uma das fases do concurso.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022','PROVIMENTO, MOVIMENTAÇÃO E VACÂNCIA','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos que efetivam  as ações e as formas de ingresso, movimentação e desligamento na administração pública, bem como aqueles referentes às avaliações de desempenho dos servidores. Quanto aos atos específicos e individuais que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','022 022 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos que efetivam  as acoes e as formas de ingresso movimentacao e desligamento na administracao publica bem como aqueles referentes as avaliacoes de desempenho dos servidores. Quanto aos atos especificos e individuais que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.1','PROVIMENTO DE CARGO PÚBLICO','Incluem-se documentos referentes aos procedimentos que efetivam as ações de admissão, contratação, nomeação, designação, posse, disponibilidade, aproveitamento, readmissão, readaptação, recondução, reintegração, reversão e promoção.','022.1 0221 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de admissao, contratacao, nomeacao, designacao, posse, disponibilidade, aproveitamento, readmissao, readaptacao, reconducao, reintegracao, reversao e promocao.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.2','MOVIMENTAÇÃO DE PESSOAL','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos que efetivam as ações de lotação, exercício, permuta, cessão e requisição.','022.2 0222 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos que efetivam as acoes de lotacao, exercicio, permuta, cessao e requisicao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.21','LOTAÇÃO, EXERCÍCIO E PERMUTA','Incluem-se documentos referentes aos procedimentos que efetivam as ações de lotação, exercício e permuta, bem como aqueles referentes à transferência.','022.21 02221 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de lotacao exercicio e permuta bem como aqueles referentes a transferencia.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.22','CESSÃO. REQUISIÇÃO','Incluem-se documentos referentes aos procedimentos que efetivam as ações de cessão e requisição para a realização de serviços temporários em outro órgão e entidade.','022.22 02222 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de cessao e requisicao para a realizacao de servicos temporarios em outro orgao e entidade.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.3','REMOÇÃO','Incluem-se documentos referentes aos procedimentos que efetivam as ações de remoção.','022.3 0223 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de remocao.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.4','REDISTRIBUIÇÃO','Incluem-se documentos referentes aos procedimentos que efetivam as ações de redistribuição','022.4 0224 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de redistribuicao','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.5','SUBSTITUIÇÃO','Incluem-se documentos referentes aos procedimentos que efetivam as ações de substituição.','022.5 0225 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de substituicao.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.6','AVALIAÇÃO DE DESEMPENHO','Nas subdivisões deste descritor classificam-se documentos referentes ao cumprimento do estágio obrigatório pelo servidor público, à homologação de sua estabilidade e ao período de experiência a ser cumprido pelos contratados, bem como aqueles referentes às promoções e progressões funcionais.','022.6 0226 Nas subdivisoes deste descritor classificam-se documentos referentes ao cumprimento do estagio obrigatorio pelo servidor publico a homologacao de sua estabilidade e ao periodo de experiencia a ser cumprido pelos contratados bem como aqueles referentes as promocoes e progressoes funcionais.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.61','CUMPRIMENTO DE ESTÁGIO PROBATÓRIO. HOMOLOGAÇÃO DA ESTABILIDADE.','Incluem-se documentos referentes ao cumprimento e à avaliação do estágio probatório e à homologação da estabilidade do servidor público.','022.61 02261 Incluem-se documentos referentes ao cumprimento e a avaliacao do estagio probatorio e a homologacao da estabilidade do servidor publico.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.62','CUMPRIMENTO DE PERÍODO DE EXPERIÊNCIA','Incluem-se documentos referentes ao período de experiência a ser cumprido pelos contratados.','022.62 02262 Incluem-se documentos referentes ao periodo de experiencia a ser cumprido pelos contratados.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.63','PROMOÇÃO E PROGRESSÃO FUNCIONAL','Incluem-se documentos referentes às avaliações de desempenho para promoção e progressão funcional dos servidores.  Quanto à reestruturação e alteração salarial decorrentes de promoção e progressão funcional, classificar no código 023.12.','022.63 02263 Incluem-se documentos referentes as avaliacoes de desempenho para promocao e progressao funcional dos servidores.  Quanto a reestruturacao e alteracao salarial decorrentes de promocao e progressao funcional classificar no codigo 023.12.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'022.7','VACÂNCIA','Incluem-se documentos referentes aos procedimentos que efetivam as ações de demissão, dispensa, exoneração, rescisão contratual, aviso prévio, posse em outro cargo não acumulável, promoção, readaptação, aposentadoria e falecimento, bem como aqueles referentes à adesão aos planos de demissão voluntária.','022.7 0227 Incluem-se documentos referentes aos procedimentos que efetivam as acoes de demissao dispensa exoneracao rescisao contratual aviso previo posse em outro cargo nao acumulavel promocao readaptacao aposentadoria e falecimento bem como aqueles referentes a adesao aos planos de demissao voluntaria.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023','CONCESSÃO DE DIREITOS E VANTAGENS','Nas subdivisões deste descritor classificam-se documentos referentes à percepção de pagamento de vencimentos, remunerações, salários e proventos e ao gozo de férias, licenças, afastamentos, concessões, auxílios e reembolso de despesas, bem como aqueles referentes aos descontos, obrigações trabalhistas e estatutárias, encargos patronais e recolhimentos.','023 023 Nas subdivisoes deste descritor classificam-se documentos referentes a percepcao de pagamento de vencimentos remuneracoes salarios e proventos e ao gozo de ferias licencas afastamentos concessoes auxilios e reembolso de despesas bem como aqueles referentes aos descontos obrigacoes trabalhistas e estatutarias encargos patronais e recolhimentos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.1','PAGAMENTO DE VENCIMENTOS. REMUNERAÇÕES. SALÁRIOS. PROVENTOS','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos que efetivam as ações de percepção de pagamento.','023.1 0231 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos que efetivam as acoes de percepcao de pagamento.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.11','FOLHAS DE PAGAMENTO','Incluem-se folhas de pagamento, fichas financeiras e relação de pagamentos.','023.11 02311 Incluem-se folhas de pagamento, fichas financeiras e relacao de pagamentos.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.12','REESTRUTURAÇÃO E ALTERAÇÃO SALARIAL','Incluem-se documentos referentes a reestruturações e alterações salariais decorrentes de promoção e progressão funcional, enquadramento, equiparação, reajuste e reposição salarial, bem como aqueles decorrentes da redução de jornada de trabalho, remuneração proporcional, regime de trabalho integral e dedicação exclusiva. Quanto à criação, transformação e reestruturação de cargos, carreiras e remuneração, classificar no código 020.022. Quanto às avaliações de desempenho para promoção e progressão funcional, classificar no código 022.63.','023.12 02312 Incluem-se documentos referentes a reestruturacoes e alteracoes salariais decorrentes de promocao e progressao funcional enquadramento equiparacao reajuste e reposicao salarial bem como aqueles decorrentes da reducao de jornada de trabalho remuneracao proporcional regime de trabalho integral e dedicacao exclusiva. Quanto a criacao transformacao e reestruturacao de cargos carreiras e remuneracao classificar no codigo 020.022. Quanto as avaliacoes de desempenho para promocao e progressao funcional classificar no codigo 022.63.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.13','ABONO PROVISÓRIO','Incluem-se documentos referentes à comprovação do direito, à solicitação e ao pagamento de acréscimo financeiro provisório na remuneração.','023.13 02313 Incluem-se documentos referentes a comprovacao do direito a solicitacao e ao pagamento de acrescimo financeiro provisorio na remuneracao.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.14','ABONO DE PERMANÊNCIA EM SERVIÇO','Incluem-se documentos referentes ao reembolso da contribuição previdenciária ao servidor público, que cumpriu os requisitos para aposentadoria, mas que optou por continuar na ativa. Quanto à contagem e averbação de tempo de serviço, classificar no código 026.02.','023.14 02314 Incluem-se documentos referentes ao reembolso da contribuicao previdenciaria ao servidor publico que cumpriu os requisitos para aposentadoria mas que optou por continuar na ativa. Quanto a contagem e averbacao de tempo de servico classificar no codigo 026.02.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.15','GRATIFICAÇÕES','Nas subdivisões deste descritor classificam-se os documentos referentes à solicitação, comprovação do direito, incorporação, pagamento e interrupção do pagamento das gratificações concedidas.','023.15 02315 Nas subdivisoes deste descritor classificam-se os documentos referentes a solicitacao comprovacao do direito incorporacao pagamento e interrupcao do pagamento das gratificacoes concedidas.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.151','FUNÇÃO','Incluem-se documentos referentes à solicitação, comprovação do direito, incorporação de quintos e décimos, pagamento e interrupção do pagamento da gratificação.','023.151 023151 Incluem-se documentos referentes a solicitacao comprovacao do direito incorporacao de quintos e decimos pagamento e interrupcao do pagamento da gratificacao.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.152','JETONS','Incluem-se documentos referentes à solicitação, comprovação do direito, incorporação, pagamento e interrupção do pagamento da gratificação.','023.152 023152 Incluem-se documentos referentes a solicitacao comprovacao do direito incorporacao pagamento e interrupcao do pagamento da gratificacao.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.153','CARGOS EM COMISSÃO','Incluem-se documentos referentes à solicitação, comprovação do direito, incorporação, pagamento e interrupção do pagamento da gratificação.','023.153 023153 Incluem-se documentos referentes a solicitacao comprovacao do direito incorporacao pagamento e interrupcao do pagamento da gratificacao.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.154','NATALINA. DÉCIMO TERCEIRO SALÁRIO','Incluem-se documentos referentes ao pagamento e adiantamento da gratificação.','023.154 023154 Incluem-se documentos referentes ao pagamento e adiantamento da gratificacao.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.155','DESEMPENHO','Incluem-se documentos referentes às gratificações por desempenho de atividade, qualificação e produtividade, bem como aqueles referentes à solicitação de inclusão e ao cancelamento do pagamento da gratificação.','023.155 023155 Incluem-se documentos referentes as gratificacoes por desempenho de atividade qualificacao e produtividade bem como aqueles referentes a solicitacao de inclusao e ao cancelamento do pagamento da gratificacao.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.156','ENCARGO DE CURSO E CONCURSO','Incluem-se documentos referentes à solicitação e pagamento da gratificação por encargo de curso ministrado, bem como aqueles referentes à participação em bancas examinadoras e de fiscalização e aplicação de provas em concursos.','023.156 023156 Incluem-se documentos referentes a solicitacao e pagamento da gratificacao por encargo de curso ministrado bem como aqueles referentes a participacao em bancas examinadoras e de fiscalizacao e aplicacao de provas em concursos.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.157','TITULAÇÃO','Incluem-se documentos referentes à solicitação, comprovação do direito, incorporação e pagamento da retribuição por titulação, obtida pela conclusão de cursos de especialização, mestrado e doutorado.','023.157 023157 Incluem-se documentos referentes a solicitacao comprovacao do direito incorporacao e pagamento da retribuicao por titulacao obtida pela conclusao de cursos de especializacao mestrado e doutorado.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.16','ADICIONAIS','Nas subdivisões deste descritor classificam-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento dos adicionais concedidos.','023.16 02316 Nas subdivisoes deste descritor classificam-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento dos adicionais concedidos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.161','TEMPO DE SERVIÇO','Incluem-se documentos referentes ao acréscimo financeiro sobre a remuneração em razão do cumprimento de cada ano de serviço público efetivo, tais como: anuênios, biênios e quinquênios.','023.161 023161 Incluem-se documentos referentes ao acrescimo financeiro sobre a remuneracao em razao do cumprimento de cada ano de servico publico efetivo, tais como: anuenios, bienios e quinquenios.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.162','NOTURNO','Incluem-se documentos referentes ao acréscimo financeiro na remuneração em razão de trabalho noturno.','023.162 023162 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao em razao de trabalho noturno.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.163','PERICULOSIDADE','Incluem-se documentos referentes ao acréscimo financeiro na remuneração em razão do trabalho ser executado em condições perigosas.','023.163 023163 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao em razao do trabalho ser executado em condicoes perigosas.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.164','INSALUBRIDADE','Incluem-se documentos referentes ao acréscimo financeiro na remuneração em razão do trabalho ser executado em ambiente exposto a agentes físicos, químicos ou biológicos que sejam nocivos à saúde.','023.164 023164 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao em razao do trabalho ser executado em ambiente exposto a agentes fisicos quimicos ou biologicos que sejam nocivos a saude.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.165','ATIVIDADE PENOSA','Incluem-se documentos referentes ao acréscimo financeiro na remuneração em razão do trabalho debilitar gradativamente a saúde física e mental.','023.165 023165 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao em razao do trabalho debilitar gradativamente a saude fisica e mental.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.166','SERVIÇO EXTRAORDINÁRIO. HORAS EXTRAS','Incluem-se documentos referentes ao acréscimo financeiro na remuneração em razão do trabalho ser executado além do número de horas estipuladas na jornada de trabalho.','023.166 023166 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao em razao do trabalho ser executado alem do numero de horas estipuladas na jornada de trabalho.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.167','UM TERÇO DE FÉRIAS. ABONO PECUNIÁRIO','Incluem-se documentos referentes ao acréscimo financeiro na remuneração de um terço do seu valor no mês de férias, bem como aqueles referentes à conversão de um terço dos dias de férias em pecúnia. Quanto ao afastamento para gozo de férias, classificar no código 023.2.','023.167 023167 Incluem-se documentos referentes ao acrescimo financeiro na remuneracao de um terco do seu valor no mes de ferias bem como aqueles referentes a conversao de um terco dos dias de ferias em pecunia. Quanto ao afastamento para gozo de ferias classificar no codigo 023.2.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.17','DESCONTOS','Nas subdivisões deste descritor classificam-se documentos referentes aos descontos que incidem na remuneração do servidor.','023.17 02317 Nas subdivisoes deste descritor classificam-se documentos referentes aos descontos que incidem na remuneracao do servidor.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.171','CONTRIBUIÇÃO SINDICAL, ASSISTENCIAL E CONFEDERATIVA','Incluem-se documentos referentes à autorização para desconto incidente sobre a remuneração em razão de contribuição sindical, confederativa e retributiva, taxa assistencial e mensalidade sindical, bem como aqueles referentes à solicitação de cancelamento do desconto. Quanto à relação com sindicatos, classificar no código 020.031. Quanto à contribuição sindical do empregador, classificar no código 023.183.','023.171 023171 Incluem-se documentos referentes a autorizacao para desconto incidente sobre a remuneracao em razao de contribuicao sindical confederativa e retributiva taxa assistencial e mensalidade sindical bem como aqueles referentes a solicitacao de cancelamento do desconto. Quanto a relacao com sindicatos classificar no codigo 020.031. Quanto a contribuicao sindical do empregador classificar no codigo 023.183.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.172','CONTRIBUIÇÃO PARA O PLANO DE SEGURIDADE SOCIAL','Incluem-se documentos referentes ao desconto incidente sobre a remuneração em razão da contribuição para o plano de seguridade social, bem como aqueles referentes ao repasse do valor ao órgão competente. Quanto à contribuição para o plano de seguridade social recolhida pelo empregador, classificar no código 023.184.','023.172 023172 Incluem-se documentos referentes ao desconto incidente sobre a remuneracao em razao da contribuicao para o plano de seguridade social bem como aqueles referentes ao repasse do valor ao orgao competente. Quanto a contribuicao para o plano de seguridade social recolhida pelo empregador classificar no codigo 023.184.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.173','IMPOSTO DE RENDA RETIDO NA FONTE (IRRF)','Incluem-se documentos referentes ao desconto do imposto de renda retido na fonte, bem como aqueles referentes à solicitação de isenção de pagamento, por parte do servidor portador de doença específica ou aposentado por invalidez permanente. Quanto ao imposto de renda recolhido pela fonte pagadora, classificar no código 023.185.','023.173 023173 Incluem-se documentos referentes ao desconto do imposto de renda retido na fonte bem como aqueles referentes a solicitacao de isencao de pagamento por parte do servidor portador de doenca especifica ou aposentado por invalidez permanente. Quanto ao imposto de renda recolhido pela fonte pagadora classificar no codigo 023.185.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.174','PENSÃO ALIMENTÍCIA','Incluem-se documentos referentes à autorização para desconto incidente sobre a remuneração em razão do pagamento de pensão alimentícia, bem como aqueles referentes à solicitação de cancelamento do desconto.','023.174 023174 Incluem-se documentos referentes a autorizacao para desconto incidente sobre a remuneracao em razao do pagamento de pensao alimenticia bem como aqueles referentes a solicitacao de cancelamento do desconto.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.175','CONSIGNAÇÕES FACULTATIVAS','Incluem-se documentos referentes à autorização para desconto incidente sobre a remuneração em razão de contribuição e coparticipação para plano de saúde, de contribuição e coparticipação para entidade de previdência complementar, de prêmio relativo a seguro de vida, de contribuição em favor de associação ou cooperativa, de empréstimo, de financiamento imobiliário e de despesa contraída e saque realizado por meio de cartão de crédito, bem como aqueles referentes à solicitação de cancelamento do desconto e devolução de descontos indevidos.','023.175 023175 Incluem-se documentos referentes a autorizacao para desconto incidente sobre a remuneracao em razao de contribuicao e coparticipacao para plano de saude de contribuicao e coparticipacao para entidade de previdencia complementar de premio relativo a seguro de vida de contribuicao em favor de associacao ou cooperativa de emprestimo de financiamento imobiliario e de despesa contraida e saque realizado por meio de cartao de credito bem como aqueles referentes a solicitacao de cancelamento do desconto e devolucao de descontos indevidos.','S',7,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.18','OBRIGAÇÕES TRABALHISTAS E ESTATUTÁRIAS, ENCARGOS PATRONAIS E RECOLHIMENTOS','Nas subdivisões deste descritor classificam-se documentos referentes aos encargos patronais e recolhimentos efetuados pelo empregador.','023.18 02318 Nas subdivisoes deste descritor classificam-se documentos referentes aos encargos patronais e recolhimentos efetuados pelo empregador.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.181','PROGRAMA DE FORMAÇÃO DO PATRIMÔNIO DO SERVIDOR PÚBLICO (PASEP). PROGRAMA DE INTEGRAÇÃO SOCIAL (PIS)','Incluem-se documentos referentes às contribuições sociais, de natureza tributária, devidas pelo órgão e entidade, com o objetivo de financiar o pagamento do seguro-desemprego, do abono e da participação na receita do órgão e entidade e que são destinados aos servidores.','023.181 023181 Incluem-se documentos referentes as contribuicoes sociais de natureza tributaria devidas pelo orgao e entidade com o objetivo de financiar o pagamento do seguro-desemprego do abono e da participacao na receita do orgao e entidade e que sao destinados aos servidores.','S',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.182','FUNDO DE GARANTIA DO TEMPO DE SERVIÇO (FGTS)','Incluem-se documentos referentes à declaração de opção e à comprovação do depósito do valor do FGTS.','023.182 023182 Incluem-se documentos referentes a declaracao de opcao e a comprovacao do deposito do valor do FGTS.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.183','CONTRIBUIÇÃO SINDICAL DO EMPREGADOR','Incluem-se documentos referentes ao pagamento da contribuição sindical feita pelo empregador. Quanto à relação com sindicatos, classificar no código 020.031. Quanto à contribuição sindical, assistencial e confederativa do servidor, classificar no código 023.171.','023.183 023183 Incluem-se documentos referentes ao pagamento da contribuicao sindical feita pelo empregador. Quanto a relacao com sindicatos classificar no codigo 020.031. Quanto a contribuicao sindical assistencial e confederativa do servidor classificar no codigo 023.171.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.184','CONTRIBUIÇÃO PARA O PLANO DE SEGURIDADE SOCIAL','Incluem-se documentos referentes à contribuição social recolhida pelo empregador para o regime previdenciário correspondente. Quanto à contribuição para o plano de seguridade social descontada da remuneração do servidor, classificar no código 023.172.','023.184 023184 Incluem-se documentos referentes a contribuicao social recolhida pelo empregador para o regime previdenciario correspondente. Quanto a contribuicao para o plano de seguridade social descontada da remuneracao do servidor classificar no codigo 023.172.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.185','IMPOSTO DE RENDA','Incluem-se documentos referentes ao recolhimento, de natureza tributária, do valor retido da renda do beneficiário, que é efetuado pela fonte pagadora. Quanto ao imposto de renda descontado da remuneração do servidor, classificar no código 023.173.','023.185 023185 Incluem-se documentos referentes ao recolhimento, de natureza tributaria, do valor retido da renda do beneficiario, que e efetuado pela fonte pagadora. Quanto ao imposto de renda descontado da remuneracao do servidor, classificar no codigo 023.173.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.186','LEI DOS DOIS TERÇOS. RELAÇÃO ANUAL DE INFORMAÇÕES SOCIAIS (RAIS)','Incluem-se documentos referentes ao cumprimento da lei dos 2/3 e às declarações de Rais, que subsidiam o controle das atividades trabalhistas no órgão e entidade.','023.186 023186 Incluem-se documentos referentes ao cumprimento da lei dos 2/3 e as declaracoes de Rais que subsidiam o controle das atividades trabalhistas no orgao e entidade.','S',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.19','OUTRAS AÇÕES REFERENTES AO PAGAMENTO DE VENCIMENTOS. REMUNERAÇÕES. SALÁRIOS. PROVENTOS','Na subdivisão deste descritor classificam-se documentos referentes a outras ações de pagamento de vencimentos, remunerações, salários e proventos não contempladas nos descritores anteriores.','023.19 02319 Na subdivisao deste descritor classificam-se documentos referentes a outras acoes de pagamento de vencimentos, remuneracoes, salarios e proventos nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.191','RETIFICAÇÃO DE PAGAMENTO','Incluem-se documentos referentes aos pedidos, feitos pelo servidor, para a retificação de erros efetuados no pagamento. Quanto aos casos de restituição de valores ao erário, classificar no código 059.4.','023.191 023191 Incluem-se documentos referentes aos pedidos, feitos pelo servidor, para a retificacao de erros efetuados no pagamento. Quanto aos casos de restituicao de valores ao erario, classificar no codigo 059.4.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.2','FÉRIAS','Incluem-se documentos referentes à concessão de férias, tais como: programação, alteração, cancelamento, suspensão, escala e aviso de férias. Quanto ao pagamento de adicional de um terço de férias e abono pecuniário, classificar no código 023.167.','023.2 0232 Incluem-se documentos referentes a concessao de ferias tais como: programacao alteracao cancelamento suspensao escala e aviso de ferias. Quanto ao pagamento de adicional de um terco de ferias e abono pecuniario classificar no codigo 023.167.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.3','LICENÇAS','Incluem-se documentos referentes à concessão e à prorrogação de licenças para afastamento do cônjuge ou companheiro, atividade política, capacitação profissional, participação em programa de pós-graduação lato sensu, para desempenho de mandato classista, motivo de doença em pessoa da família, incentivada, sem remuneração, prêmio por assiduidade, serviço militar e tratamento de interesses particulares, bem como as perícias médicas realizadas para concessão e prorrogação das licenças, quando forem necessárias. Quanto às licenças referentes à concessão de benefícios de seguridade e previdência social (acidente em serviço, tratamento de saúde, gestante, paternidade e adotante), classificar no código 026.4.','023.3 0233 Incluem-se documentos referentes a concessao e a prorrogacao de licencas para afastamento do cônjuge ou companheiro atividade politica capacitacao profissional participacao em programa de pos-graduacao lato sensu para desempenho de mandato classista motivo de doenca em pessoa da familia incentivada sem remuneracao premio por assiduidade servico militar e tratamento de interesses particulares bem como as pericias medicas realizadas para concessao e prorrogacao das licencas quando forem necessarias. Quanto as licencas referentes a concessao de beneficios de seguridade e previdencia social (acidente em servico tratamento de saude gestante paternidade e adotante) classificar no codigo 026.4.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.4','AFASTAMENTOS','Incluem-se documentos referentes à suspensão de contrato de trabalho e concessão de afastamento para depor, exercer mandato eletivo, servir a Justiça Eleitoral, servir como jurado, participar em programas de pós-graduação stricto sensu, de pós-doutorado e em estudos, no país e no exterior. Quanto ao afastamento para o cumprimento de missões e viagens a serviço, no país e no exterior, e para servir em organismo internacional de que o Brasil participe ou com o qual coo-pere, classificar nas subdivisões do código 028. Quanto à participação em programa de pós-graduação lato sensu, classificar no código 023.3, no âmbito da capacitação profissional.','023.4 0234 Incluem-se documentos referentes a suspensao de contrato de trabalho e concessao de afastamento para depor exercer mandato eletivo servir a Justica Eleitoral servir como jurado participar em programas de pos-graduacao stricto sensu de pos-doutorado e em estudos no pais e no exterior. Quanto ao afastamento para o cumprimento de missoes e viagens a servico no pais e no exterior e para servir em organismo internacional de que o Brasil participe ou com o qual coo-pere classificar nas subdivisoes do codigo 028. Quanto a participacao em programa de pos-graduacao lato sensu classificar no codigo 023.3 no ambito da capacitacao profissional.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.5','CONCESSÕES','Incluem-se documentos referentes à comprovação de ausência no serviço em razão de alistamento eleitoral, casamento (gala), doação de sangue e falecimento de familiares (nojo), bem como aqueles referentes à concessão de horário especial para servidor estudante, servidor portador de deficiência e servidor que possua dependente portador de deficiência, com ou sem compensação de horas. Quanto à concessão de benefícios de seguridade e previdência social, classificar nas subdivisões do código 026.','023.5 0235 Incluem-se documentos referentes a comprovacao de ausencia no servico em razao de alistamento eleitoral casamento (gala) doacao de sangue e falecimento de familiares (nojo) bem como aqueles referentes a concessao de horario especial para servidor estudante servidor portador de deficiencia e servidor que possua dependente portador de deficiencia com ou sem compensacao de horas. Quanto a concessao de beneficios de seguridade e previdencia social classificar nas subdivisoes do codigo 026.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.6','AUXÍLIOS','Incluem-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento dos auxílios alimentação ou refeição, assistência pré-escolar ou creche, moradia e vale-transporte, bem como o auxílio-moradia para liquidante. Quanto aos auxílios referentes à concessão de benefícios de seguridade e previdência social (acidente, doença, funeral e natalidade), classificar no código 026.3. Quanto ao auxílio-reclusão, classificar no código 026.91.','023.6 0236 Incluem-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento dos auxilios alimentacao ou refeicao assistencia pre-escolar ou creche moradia e vale-transporte bem como o auxilio-moradia para liquidante. Quanto aos auxilios referentes a concessao de beneficios de seguridade e previdencia social (acidente doenca funeral e natalidade) classificar no codigo 026.3. Quanto ao auxilio-reclusao classificar no codigo 026.91.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.7','REEMBOLSO DE DESPESAS. INDENIZAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes ao reembolso de despesas efetuadas em razão de mudança de domicílio, locomoção com meio de transporte e custeio de assistência suplementar à saúde.','023.7 0237 Nas subdivisoes deste descritor classificam-se documentos referentes ao reembolso de despesas efetuadas em razao de mudanca de domicilio locomocao com meio de transporte e custeio de assistencia suplementar a saude.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.71','MUDANÇA DE DOMICÍLIO','Incluem-se documentos referentes às ajudas de custo para compensação e reembolso das despesas de instalação do servidor e de sua família que, no interesse do órgão e entidade, passar a ter exercício em nova sede.','023.71 02371 Incluem-se documentos referentes as ajudas de custo para compensacao e reembolso das despesas de instalacao do servidor e de sua familia que no interesse do orgao e entidade passar a ter exercicio em nova sede.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.72','LOCOMOÇÃO','Incluem-se documentos referentes ao reembolso de despesas efetuadas com a utilização de meio de locomoção, próprio ou não, para a execução de serviços externos. Quanto ao fornecimento de transporte, classificar no código 023.93. Quanto à prestação de serviço de transporte remunerado de passageiro(s) por demanda, classificar no código 018.1.','023.72 02372 Incluem-se documentos referentes ao reembolso de despesas efetuadas com a utilizacao de meio de locomocao proprio ou nao para a execucao de servicos externos. Quanto ao fornecimento de transporte classificar no codigo 023.93. Quanto a prestacao de servico de transporte remunerado de passageiro(s) por demanda classificar no codigo 018.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.73','RESSARCIMENTO DE PLANO DE SAÚDE','Incluem-se documentos relativos à participação do órgão e entidade no custeio da assistência suplementar à saúde do servidor e demais beneficiários.','023.73 02373 Incluem-se documentos relativos a participacao do orgao e entidade no custeio da assistencia suplementar a saude do servidor e demais beneficiarios.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.9','OUTRAS AÇÕES REFERENTES À CONCESSÃO DE DIREITOS E VANTAGENS','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de concessão de direitos e vantagens não contempladas nos descritores anteriores. ','023.9 0239 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de concessao de direitos e vantagens nao contempladas nos descritores anteriores. ','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.91','CONTRATAÇÃO DE SEGURO','Incluem-se documentos referentes à contratação de seguro de vida em grupo e seguro de acidentes pessoais. Quanto à contratação de seguro patrimonial, classificar no código 018.1.','023.91 02391 Incluem-se documentos referentes a contratacao de seguro de vida em grupo e seguro de acidentes pessoais. Quanto a contratacao de seguro patrimonial classificar no codigo 018.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.92','OCUPAÇÃO DE IMÓVEL FUNCIONAL','Incluem-se documentos referentes à ocupação de imóvel funcional, tais como: solicitação, termo de ocupação e de responsabilidade.','023.92 02392 Incluem-se documentos referentes a ocupacao de imovel funcional tais como: solicitacao termo de ocupacao e de responsabilidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'023.93','FORNECIMENTO DE TRANSPORTE','Incluem-se documentos referentes à comprovação do fornecimento de serviço de transporte, oferecido pelo órgão e entidade, para que o servidor se desloque de sua residência para o local de trabalho e vice-versa. Quanto ao reembolso de despesas para locomoção, classificar no código 023.72. Quanto à prestação de serviço de transporte remunerado de passageiro(s) por demanda, classificar no código 018.1.','023.93 02393 Incluem-se documentos referentes a comprovacao do fornecimento de servico de transporte oferecido pelo orgao e entidade para que o servidor se desloque de sua residencia para o local de trabalho e vice-versa. Quanto ao reembolso de despesas para locomocao classificar no codigo 023.72. Quanto a prestacao de servico de transporte remunerado de passageiro(s) por demanda classificar no codigo 018.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024','CAPACITAÇÃO DO SERVIDOR','Nas subdivisões deste descritor classificam-se documentos referentes à promoção, elaboração e execução de programas de capacitação, desenvolvimento e valorização do servidor. Quanto ao pagamento de cursos para servidores, classificar no código 052.221.','024 024 Nas subdivisoes deste descritor classificam-se documentos referentes a promocao elaboracao e execucao de programas de capacitacao desenvolvimento e valorizacao do servidor. Quanto ao pagamento de cursos para servidores classificar no codigo 052.221.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.01','PLANEJAMENTO DA CAPACITAÇÃO','Incluem-se documentos referentes ao mapeamento das competências institucionais e individuais, diagnóstico das competências profissionais e o plano anual de capacitação proporcionado pelo órgão e entidade ao servidor.','024.01 02401 Incluem-se documentos referentes ao mapeamento das competencias institucionais e individuais, diagnostico das competencias profissionais e o plano anual de capacitacao proporcionado pelo orgao e entidade ao servidor.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.1','PROMOÇÃO DE CURSOS PELO ÓRGÃO E ENTIDADE','Nas subdivisões deste descritor classificam-se documentos referentes à promoção, pelo órgão e entidade, de cursos de capacitação destinados ao servidor. Quanto aos documentos comprobatórios de participação do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','024.1 0241 Nas subdivisoes deste descritor classificam-se documentos referentes a promocao pelo orgao e entidade de cursos de capacitacao destinados ao servidor. Quanto aos documentos comprobatorios de participacao do servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.11','PROGRAMAÇÃO','Incluem-se documentos referentes à divulgação do curso e à definição do conteúdo programático, bem como exemplares únicos de exercícios e apostilas.','024.11 02411 Incluem-se documentos referentes a divulgacao do curso e a definicao do conteudo programatico bem como exemplares unicos de exercicios e apostilas.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.12','INSCRIÇÃO E FREQUÊNCIA','Incluem-se documentos referentes aos procedimentos para inscrição, lista de participantes, controle de entrega de material e lista de frequência dos participantes.','024.12 02412 Incluem-se documentos referentes aos procedimentos para inscricao, lista de participantes, controle de entrega de material e lista de frequencia dos participantes.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.13','AVALIAÇÃO E RESULTADOS','Incluem-se documentos referentes aos resultados alcançados, avaliação do curso pelos participantes, controle de expedição e entrega de certificados e relatórios.','024.13 02413 Incluem-se documentos referentes aos resultados alcancados, avaliacao do curso pelos participantes, controle de expedicao e entrega de certificados e relatorios.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.2','PARTICIPAÇÃO EM CURSOS PROMOVIDOS POR OUTROS ÓRGÃOS E ENTIDADES','Incluem-se documentos referentes à divulgação do curso, programa, termo de compromisso e relatório de participação do servidor no curso. Quanto aos documentos comprobatórios de participação do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','024.2 0242 Incluem-se documentos referentes a divulgacao do curso programa termo de compromisso e relatorio de participacao do servidor no curso. Quanto aos documentos comprobatorios de participacao do servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.3','PROMOÇÃO DE ESTÁGIOS PELO ÓRGÃO E ENTIDADE','Nas subdivisões deste descritor, classificam-se documentos referentes a promoção, pelo órgão e entidade, de estágios destinados ao servidor. Quanto aos documentos comprobatórios de participação do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','024.3 0243 Nas subdivisoes deste descritor, classificam-se documentos referentes a promocao, pelo orgao e entidade, de estagios destinados ao servidor. Quanto aos documentos comprobatorios de participacao do servidor, que deverao integrar o assentamento funcional, classificar nas subdivisoes do codigo 020.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.31','PROGRAMAÇÃO','Incluem-se documentos referentes à divulgação do estágio e à definição do conteúdo programático.','024.31 02431 Incluem-se documentos referentes a divulgacao do estagio e a definicao do conteudo programatico.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.32','INSCRIÇÃO E FREQUÊNCIA','Incluem-se documentos referentes aos procedimentos para inscrição, controle de entrega de material e lista de frequência dos participantes, bem como aqueles referentes à concessão de bolsas de estágio.','024.32 02432 Incluem-se documentos referentes aos procedimentos para inscricao controle de entrega de material e lista de frequencia dos participantes bem como aqueles referentes a concessao de bolsas de estagio.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.33','AVALIAÇÃO E RESULTADOS','Incluem-se documentos referentes aos resultados alcançados, avaliação do estágio pelos participantes, controle de expedição e entrega de declaração de participação e relatórios.','024.33 02433 Incluem-se documentos referentes aos resultados alcancados, avaliacao do estagio pelos participantes, controle de expedicao e entrega de declaracao de participacao e relatorios.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.4','PARTICIPAÇÃO EM ESTÁGIOS PROMOVIDOS POR OUTROS ÓRGÃOS E ENTIDADES','Incluem-se documentos referentes à divulgação do estágio, programa, termo de compromisso e relatório de participação do servidor no estágio. Quanto aos documentos comprobatórios de participação do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','024.4 0244 Incluem-se documentos referentes a divulgacao do estagio programa termo de compromisso e relatorio de participacao do servidor no estagio. Quanto aos documentos comprobatorios de participacao do servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.5','CONCESSÃO DE ESTÁGIOS E BOLSAS PARA ESTUDANTES','Nas subdivisões deste descritor classificam-se documentos referentes à oferta de estágios, remunerados ou não, e à concessão de bolsas para estudantes (residentes médicos, multiprofissionais e estagiários), por parte do órgão e entidade.','024.5 0245 Nas subdivisoes deste descritor classificam-se documentos referentes a oferta de estagios remunerados ou nao e a concessao de bolsas para estudantes (residentes medicos multiprofissionais e estagiarios) por parte do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.51','RELAÇÃO COM INSTITUIÇÕES DE ENSINO E AGENTES DE INTEGRAÇÃO','Incluem-se documentos referentes à celebração de convênios com instituições de ensino superior e outras que visem à oferta de estágios, à integração da empresa-escola e à concessão de bolsas para estudantes.','024.51 02451 Incluem-se documentos referentes a celebracao de convenios com instituicoes de ensino superior e outras que visem a oferta de estagios a integracao da empresa-escola e a concessao de bolsas para estudantes.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'024.52','PLANO DE ESTÁGIO','Incluem-se documentos referentes ao estabelecimento das atividades a serem realizadas pelos estudantes.','024.52 02452 Incluem-se documentos referentes ao estabelecimento das atividades a serem realizadas pelos estudantes.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025','PROMOÇÃO DA SAÚDE E BEM-ESTAR','Nas subdivisões deste descritor classificam-se documentos referentes às atividades de promoção da saúde e bem-estar do servidor.','025 025 Nas subdivisoes deste descritor classificam-se documentos referentes as atividades de promocao da saude e bem-estar do servidor.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.1','ASSISTÊNCIA À SAÚDE','Nas subdivisões deste descritor classificam-se documentos referentes à celebraçãode convênios e ao desenvolvimento de ações voltadas para a saúde doservidor, bem como oregistro nosprontuáriosde pacientes sobre a assistência prestada.','025.1 0251 Nas subdivisoes deste descritor classificam-se documentos referentes a celebracaode convenios e ao desenvolvimento de acoes voltadas para a saude doservidor bem como oregistro nosprontuariosde pacientes sobre a assistencia prestada.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.11','CELEBRAÇÃO DE CONVÊNIOS DE ASSISTÊNCIA À SAÚDE','Incluem-se documentos referentes à celebração de convênios firmados para a prestação de assistência à saúde destinados ao servidor e seus dependentes.','025.11 02511 Incluem-se documentos referentes a celebracao de convenios firmados para a prestacao de assistencia a saude destinados ao servidor e seus dependentes.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.12','ORIENTAÇÃO PARA CUIDADOS COM A SAÚDE','Incluem-se documentos referentes às ações de orientação, acompanhamento e execução de iniciativas que visem o bem-estar do servidor.','025.12 02512 Incluem-se documentos referentes as acoes de orientacao acompanhamento e execucao de iniciativas que visem o bem-estar do servidor.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.13','PROMOÇÃO DE ATIVIDADE FÍSICA','Incluem-se documentos referentes às ações de promoção e execução de iniciativas que visem a prática da ginástica laboral e incentivem o servidor à prática de atividades físicas.','025.13 02513 Incluem-se documentos referentes as acoes de promocao e execucao de iniciativas que visem a pratica da ginastica laboral e incentivem o servidor a pratica de atividades fisicas.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.14','REGISTRO DE ASSISTÊNCIA À SAÚDE EM PRONTUÁRIO','Incluem-se documentos referentes aos registros de assistência à saúde em prontuário de paciente, prestada aos servidores, tais como pareceres, laudos, exames e inspeções periódicas de saúde, exames complementares e comunicação de alta e óbito. Quanto aos exames admissionais e demissionais do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','025.14 02514 Incluem-se documentos referentes aos registros de assistencia a saude em prontuario de paciente prestada aos servidores tais como pareceres laudos exames e inspecoes periodicas de saude exames complementares e comunicacao de alta e obito. Quanto aos exames admissionais e demissionais do servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.2','PRESERVAÇÃO DA SAÚDE E HIGIENE','Nas subdivisões deste descritor classificam-se documentos referentes às iniciativas do órgão e entidade que visam à preservação da saúde e a garantia de condições satisfatórias, individuais e ambientais, nos locais de trabalho.','025.2 0252 Nas subdivisoes deste descritor classificam-se documentos referentes as iniciativas do orgao e entidade que visam a preservacao da saude e a garantia de condicoes satisfatorias individuais e ambientais nos locais de trabalho.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.21','CONTROLE DE RISCOS AMBIENTAIS','Incluem-se documentos referentes ao perfil profissiográfico e ao levantamento, avaliação e controle da ocorrência de riscos ambientais (agentes químicos, físicos e biológicos) existentes nos locais de trabalho, bem como aqueles referentes aos programas de controle médico de saúde ocupacional e de prevenção de riscos ambientais e os laudos e certificados sobre inspeções sanitárias e equipamentos de proteção individual. Quanto à proteção ambiental interna, classificar no código 017.1.','025.21 02521 Incluem-se documentos referentes ao perfil profissiografico e ao levantamento avaliacao e controle da ocorrencia de riscos ambientais (agentes quimicos fisicos e biologicos) existentes nos locais de trabalho bem como aqueles referentes aos programas de controle medico de saude ocupacional e de prevencao de riscos ambientais e os laudos e certificados sobre inspecoes sanitarias e equipamentos de protecao individual. Quanto a protecao ambiental interna classificar no codigo 017.1.','S',15,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.22','OFERTA DE SERVIÇOS DE REFEITÓRIOS, CANTINAS E COPAS','Incluem-se documentos referentes às regras gerais de uso e de funcionamento dos ambientes destinados às refeições.','025.22 02522 Incluem-se documentos referentes as regras gerais de uso e de funcionamento dos ambientes destinados as refeicoes.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.3','SEGURANÇA DO TRABALHO. PREVENÇÃO DE ACIDENTES DE TRABALHO','Nas subdivisões deste descritor classificam-se documentos referentes às medidas preventivas relacionadas ao ambiente de trabalho, visando à redução de acidentes e doenças ocupacionais. Quanto ao pagamento dos adicionais de periculosidade, insalubridade e atividade penosa, classificar nos códigos 023.163, 023.164 e 023.165, respectivamente.','025.3 0253 Nas subdivisoes deste descritor classificam-se documentos referentes as medidas preventivas relacionadas ao ambiente de trabalho visando a reducao de acidentes e doencas ocupacionais. Quanto ao pagamento dos adicionais de periculosidade insalubridade e atividade penosa classificar nos codigos 023.163 023.164 e 023.165 respectivamente.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.31','CONSTITUIÇÃO DA COMISSÃO INTERNA DE PREVENÇÃO DE ACIDENTES (CIPA)','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos para a constituição e atuação da comissão.','025.31 02531 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos para a constituicao e atuacao da comissao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.311','COMPOSIÇÃO E ATUAÇÃO','Incluem-se documentos referentes à constituição da Cipa, editais de convocação e divulgação das eleições, constituição da comissão eleitoral, folha de votação e atas da eleição (nos casos de realização de processo eleitoral) ou indicação e designação dos membros e instalação e posse da comissão (em outras situações que não envolvam processo eleitoral), bem como aqueles referentes aos estudos e às inspeções relativas à qualidade e segurança do ambiente de trabalho, mapas de riscos, laudos e pareceres técnicos, atas, relatórios e campanhas de divulgação.','025.311 025311 Incluem-se documentos referentes a constituicao da Cipa editais de convocacao e divulgacao das eleicoes constituicao da comissao eleitoral folha de votacao e atas da eleicao (nos casos de realizacao de processo eleitoral) ou indicacao e designacao dos membros e instalacao e posse da comissao (em outras situacoes que nao envolvam processo eleitoral) bem como aqueles referentes aos estudos e as inspecoes relativas a qualidade e seguranca do ambiente de trabalho mapas de riscos laudos e pareceres tecnicos atas relatorios e campanhas de divulgacao.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.312','OPERACIONALIZAÇÃO DE REUNIÕES','Incluem-se documentos referentes à organização das reuniões da Cipa, bem como aqueles referentes ao agendamento, convocação, pauta e lista de participantes.','025.312 025312 Incluem-se documentos referentes a organizacao das reunioes da Cipa bem como aqueles referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'025.32','REGISTRO DE OCORRÊNCIAS DE ACIDENTES DE TRABALHO','Incluem-se os comunicados e os registros das ocorrências e as sindicâncias instaladas para averiguação dos acidentes de trabalho.','025.32 02532 Incluem-se os comunicados e os registros das ocorrencias e as sindicancias instaladas para averiguacao dos acidentes de trabalho.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026','CONCESSÃO DE BENEFÍCIOS DE SEGURIDADE E PREVIDÊNCIA SOCIAL','Nas subdivisões deste descritor classificam-se documentos referentes à concessão de benefícios previdenciários e assistenciais ao servidor. Quanto às concessões referentes aos direitos e vantagens (ausência no serviço em razão de alistamento eleitoral, casamento, doação de sangue, falecimento de familiares, horário especial para servidor estudante, servidor portador de deficiência e servidor que possua dependente portador de deficiência), classificar no código 023.5.','026 026 Nas subdivisoes deste descritor classificam-se documentos referentes a concessao de beneficios previdenciarios e assistenciais ao servidor. Quanto as concessoes referentes aos direitos e vantagens (ausencia no servico em razao de alistamento eleitoral casamento doacao de sangue falecimento de familiares horario especial para servidor estudante servidor portador de deficiencia e servidor que possua dependente portador de deficiencia) classificar no codigo 023.5.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.01','ADESÃO À PREVIDÊNCIA COMPLEMENTAR','Incluem-se documentos referentes à contribuição aos planos privados de pecúlios, rendas e benefícios complementares ou assemelhados aos da previdência social.','026.01 02601 Incluem-se documentos referentes a contribuicao aos planos privados de peculios rendas e beneficios complementares ou assemelhados aos da previdencia social.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.02','CONTAGEM E AVERBAÇÃO DE TEMPO DE SERVIÇO','Incluem-se documentos referentes à comprovação do tempo de contribuição previdenciária e à solicitação de averbação do tempo de serviço correspondente. Quanto ao abono de permanência em serviço, classificar no código 023.14.','026.02 02602 Incluem-se documentos referentes a comprovacao do tempo de contribuicao previdenciaria e a solicitacao de averbacao do tempo de servico correspondente. Quanto ao abono de permanencia em servico classificar no codigo 023.14.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.1','SALÁRIO FAMÍLIA','Incluem-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento do benefício.','026.1 0261 Incluem-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento do beneficio.','S',19,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.2','SALÁRIO MATERNIDADE','Incluem-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento do benefício.','026.2 0262 Incluem-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento do beneficio.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.3','AUXÍLIOS','Incluem-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento dos auxílios acidente, doença, funeral e natalidade. Quanto aos auxílios referentes à concessão de direitos e vantagens (alimentação ou refeição, assistência pré-escolar ou creche, moradia, vale-transporte e moradia de liquidante), classificar no código 023.6. Quanto ao auxílio-reclusão, classificar no código 026.91.','026.3 0263 Incluem-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento dos auxilios acidente doenca funeral e natalidade. Quanto aos auxilios referentes a concessao de direitos e vantagens (alimentacao ou refeicao assistencia pre-escolar ou creche moradia vale-transporte e moradia de liquidante) classificar no codigo 023.6. Quanto ao auxilio-reclusao classificar no codigo 026.91.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.4','LICENÇAS','Incluem-se documentos referentes à concessão de licenças para acidente em serviço, tratamento de saúde, gestante, paternidade e adotante, bem como as perícias médicas realizadas para concessão e prorrogação das licenças, quando forem necessárias. Quanto às licenças referentes à concessão de direitos e vantagens (afastamento do cônjuge ou companheiro, atividade política, capacitação profissional, desempenho de mandato classista, motivo de doença em pessoa da família, incentivada sem remuneração, prêmio por assiduidade, serviço militar e tratamento de interesses particulares), classificar no código 023.3.','026.4 0264 Incluem-se documentos referentes a concessao de licencas para acidente em servico tratamento de saude gestante paternidade e adotante bem como as pericias medicas realizadas para concessao e prorrogacao das licencas quando forem necessarias. Quanto as licencas referentes a concessao de direitos e vantagens (afastamento do cônjuge ou companheiro atividade politica capacitacao profissional desempenho de mandato classista motivo de doenca em pessoa da familia incentivada sem remuneracao premio por assiduidade servico militar e tratamento de interesses particulares) classificar no codigo 023.3.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.5','APOSENTADORIA','Nas subdivisões deste descritor classificam-se documentos referentes à solicitação e concessão de aposentadoria por invalidez permanente, por idade, por tempo de contribuição previdenciária e aposentadoria especial.','026.5 0265 Nas subdivisoes deste descritor classificam-se documentos referentes a solicitacao e concessao de aposentadoria por invalidez permanente por idade por tempo de contribuicao previdenciaria e aposentadoria especial.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.51','INVALIDEZ PERMANENTE','Incluem-se documentos referentes à solicitação e concessão de aposentadoria por invalidez permanente em decorrência de acidente em serviço, moléstia profissional e doença grave, contagiosa ou incurável, especificadas em legislação.','026.51 02651 Incluem-se documentos referentes a solicitacao e concessao de aposentadoria por invalidez permanente em decorrencia de acidente em servico molestia profissional e doenca grave contagiosa ou incuravel especificadas em legislacao.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.52','COMPULSÓRIA','Incluem-se documentos referentes à concessão de aposentadoria compulsória, de acordo com a legislação em vigor, com proventos proporcionais ao tempo de contribuição previdenciária.','026.52 02652 Incluem-se documentos referentes a concessao de aposentadoria compulsoria de acordo com a legislacao em vigor com proventos proporcionais ao tempo de contribuicao previdenciaria.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.53','VOLUNTÁRIA','Incluem-se documentos referentes à solicitação e concessão de aposentadoria voluntária, atendendo aos requisitos de tempo de contribuição previdenciária e de idade mínima.','026.53 02653 Incluem-se documentos referentes a solicitacao e concessao de aposentadoria voluntaria atendendo aos requisitos de tempo de contribuicao previdenciaria e de idade minima.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.54','ESPECIAL','Incluem-se documentos referentes à solicitação e concessão de aposentadoria ao servidor que trabalhou exposto a agentes nocivos à saúde, como calor ou ruído, de forma contínua e ininterrupta, em níveis de exposiçãoacimados limites, conforme especificado em legislação.','026.54 02654 Incluem-se documentos referentes a solicitacao e concessao de aposentadoria ao servidor que trabalhou exposto a agentes nocivos a saude como calor ou ruido de forma continua e ininterrupta em niveis de exposicaoacimados limites conforme especificado em legislacao.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.6','PENSÃO POR MORTE','Nas subdivisões deste descritor classificam-se os documentos referentes à solicitação, comprovação do direito, habilitação, incorporação, pagamento e interrupção do pagamento das pensões concedidas por morte do servidor.','026.6 0266 Nas subdivisoes deste descritor classificam-se os documentos referentes a solicitacao comprovacao do direito habilitacao incorporacao pagamento e interrupcao do pagamento das pensoes concedidas por morte do servidor.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.61','PENSÃO PROVISÓRIA. PENSÃO TEMPORÁRIA','Incluem-se documentos referentes à solicitação, comprovação do direito, habilitação, pagamento e interrupção do pagamento da pensão, bem como aqueles referentes à avaliação periódica das condições que ensejaram a concessão do benefício.','026.61 02661 Incluem-se documentos referentes a solicitacao comprovacao do direito habilitacao pagamento e interrupcao do pagamento da pensao bem como aqueles referentes a avaliacao periodica das condicoes que ensejaram a concessao do beneficio.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.62','PENSÃO VITALÍCIA','Incluem-se documentos referentes à solicitação, comprovação do direito, habilitação e pagamento da pensão.','026.62 02662 Incluem-se documentos referentes a solicitacao comprovacao do direito habilitacao e pagamento da pensao.','S',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.9','OUTRAS AÇÕES REFERENTES À CONCESSÃO DE BENEFÍCIOS DE SEGURIDADE E PREVIDÊNCIA SOCIAL','Na subdivisão deste descritor classificam-se documentos referentes a outras ações de concessão de benefícios de seguridade e previdência social não contempladas nos descritores anteriores.','026.9 0269 Na subdivisao deste descritor classificam-se documentos referentes a outras acoes de concessao de beneficios de seguridade e previdencia social nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'026.91','AUXÍLIO RECLUSÃO','Incluem-se documentos referentes à solicitação, comprovação do direito, pagamento e interrupção do pagamento do auxílio-reclusão aos dependentes do servidor. Quanto aos auxílios alimentação ou refeição, assistência pré-escolar ou creche, moradia, vale-transporte e moradia de liquidante, classificar no código 023.6. Quanto aos auxílios acidente, doença, funeral e natalidade, classificar no código 026.3.','026.91 02691 Incluem-se documentos referentes a solicitacao comprovacao do direito pagamento e interrupcao do pagamento do auxilio-reclusao aos dependentes do servidor. Quanto aos auxilios alimentacao ou refeicao assistencia pre-escolar ou creche moradia vale-transporte e moradia de liquidante classificar no codigo 023.6. Quanto aos auxilios acidente doenca funeral e natalidade classificar no codigo 026.3.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'027','APURAÇÃO DE RESPONSABILIDADE DISCIPLINAR','Nas subdivisões deste descritor classificam-se documentos referentes às apurações de responsabilidade que envolvem o servidor. Quanto ao extravio, roubo, desaparecimento, furto e avaria de material, classificar no código 033.6.','027 027 Nas subdivisoes deste descritor classificam-se documentos referentes as apuracoes de responsabilidade que envolvem o servidor. Quanto ao extravio roubo desaparecimento furto e avaria de material classificar no codigo 033.6.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'027.1','AVERIGUAÇÃO DE DENÚNCIAS','Incluem-se documentos referentes aos procedimentos disciplinares para a apuração de denúncias sobre possíveis infrações ou irregularidades praticadas pelos servidores no exercício de suas atribuições, bem como aqueles produzidos em decorrência da instauração de inquéritos, sindicâncias e processo administrativo disciplinar (PAD).','027.1 0271 Incluem-se documentos referentes aos procedimentos disciplinares para a apuracao de denuncias sobre possiveis infracoes ou irregularidades praticadas pelos servidores no exercicio de suas atribuicoes, bem como aqueles produzidos em decorrencia da instauracao de inqueritos, sindicancias e processo administrativo disciplinar (PAD).','S',95,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'027.2','APLICAÇÃO DE PENALIDADES DISCIPLINARES','Incluem-se documentos referentes à imposição de penalidades em razão da conclusão da apuração de responsabilidade disciplinar, podendo se constituir em uma advertência, suspensão, demissão, cassação de aposentadoria, disponibilidade, destituição de cargo em comissão e destituição de função comissionada. Quanto ao registro das penalidades disciplinares aplicadas ao servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','027.2 0272 Incluem-se documentos referentes a imposicao de penalidades em razao da conclusao da apuracao de responsabilidade disciplinar podendo se constituir em uma advertencia suspensao demissao cassacao de aposentadoria disponibilidade destituicao de cargo em comissao e destituicao de funcao comissionada. Quanto ao registro das penalidades disciplinares aplicadas ao servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',95,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'027.3','AJUSTAMENTO DE CONDUTA','Incluem-se documentos referentes à celebração de termo de ajustamento de conduta (TAC) nos casos de infração disciplinar de menor potencial ofensivo e de desvios de conduta de baixa lesividade praticados pelo servidor.','027.3 0273 Incluem-se documentos referentes a celebracao de termo de ajustamento de conduta (TAC) nos casos de infracao disciplinar de menor potencial ofensivo e de desvios de conduta de baixa lesividade praticados pelo servidor.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028','CUMPRIMENTO DE MISSÕES E VIAGENS A SERVIÇO','Nas subdivisões deste descritor classificam-se documentos referentes ao afastamento do servidor para o cumprimento de missões e a realização de viagens a serviço, no país e no exterior, para colaboração ou participação esporádica em assuntos que é especialista, e para servir em organismo internacional de que o Brasil participe ou com o qual coopere. Quanto ao planejamento, acompanhamento, execução, avaliação e relatório técnico, classificar no código específico relativo ao objeto da missão e da viagem a serviço. Quanto aos afastamentos referentes à concessão de direitos e vantagens (suspensão de contrato de trabalho, depor, exercer mandato legislativo, servir a Justiça Eleitoral, servir como jurado, participar em programas de pós-graduação stricto sensu e de pós-doutorado e em estudos, no país e no exterior), classificar no código 023.4.','028 028 Nas subdivisoes deste descritor classificam-se documentos referentes ao afastamento do servidor para o cumprimento de missoes e a realizacao de viagens a servico no pais e no exterior para colaboracao ou participacao esporadica em assuntos que e especialista e para servir em organismo internacional de que o Brasil participe ou com o qual coopere. Quanto ao planejamento acompanhamento execucao avaliacao e relatorio tecnico classificar no codigo especifico relativo ao objeto da missao e da viagem a servico. Quanto aos afastamentos referentes a concessao de direitos e vantagens (suspensao de contrato de trabalho depor exercer mandato legislativo servir a Justica Eleitoral servir como jurado participar em programas de pos-graduacao stricto sensu e de pos-doutorado e em estudos no pais e no exterior) classificar no codigo 023.4.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.1','NO PAÍS','Nas subdivisões deste descritor classificam-se documentos referentes ao afastamento do servidor para o cumprimento de missões e a realização de viagens no país, podendo ser: com ônus (quando implicarem no direito à concessão de passagens e diárias e ao recebimento de vencimentos ou salários e demais vantagens) e com ônus limitado (quando implicarem, apenas, no direito ao recebimento de vencimentos e salários e demais vantagens).','028.1 0281 Nas subdivisoes deste descritor classificam-se documentos referentes ao afastamento do servidor para o cumprimento de missoes e a realizacao de viagens no pais podendo ser: com ônus (quando implicarem no direito a concessao de passagens e diarias e ao recebimento de vencimentos ou salarios e demais vantagens) e com ônus limitado (quando implicarem apenas no direito ao recebimento de vencimentos e salarios e demais vantagens).','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.11','COM ÔNUS','Incluem-se documentos referentes à solicitação e autorização de afastamento, ajudas de custo, diárias, passagens, reservas de ho-tel, pagamento de despesas de eventos, prestações de contas e relatórios de viagem, bem como lista de participantes (no caso de comitivas e delegações) e concessão de passagens e diárias para convidados. ','028.11 02811 Incluem-se documentos referentes a solicitacao e autorizacao de afastamento ajudas de custo diarias passagens reservas de ho-tel pagamento de despesas de eventos prestacoes de contas e relatorios de viagem bem como lista de participantes (no caso de comitivas e delegacoes) e concessao de passagens e diarias para convidados. ','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.12','COM ÔNUS LIMITADO','Incluem-se documentos referentes à solicitação e autorização de afastamento para participar de eventos ou cumprir missões e realizar viagens no país, bem como aqueles referentes à solicitação de afastamento para colaboração ou participação esporádica, (remunerada ou não), em assuntos que é especialista.','028.12 02812 Incluem-se documentos referentes a solicitacao e autorizacao de afastamento para participar de eventos ou cumprir missoes e realizar viagens no pais bem como aqueles referentes a solicitacao de afastamento para colaboracao ou participacao esporadica (remunerada ou nao) em assuntos que e especialista.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.2','NO EXTERIOR','Nas subdivisões deste descritor classificam-se documentos referentes ao afastamento do país do servidor para o cumprimento de missões e a realização de viagens ao exterior, podendo ser: com ônus (quando implicarem no direito à concessão de passagens e diárias e ao recebimento de vencimentos ou salários e demais vantagens), com ônus limitado (quando implicarem, apenas, no direito ao recebimento de vencimentos e salários e demais vantagens) e sem ônus (quando implicarem a perda total dos vencimentos ou salários e demais vantagens, não acarretando qualquer despesa para o órgão e entidade).','028.2 0282 Nas subdivisoes deste descritor classificam-se documentos referentes ao afastamento do pais do servidor para o cumprimento de missoes e a realizacao de viagens ao exterior podendo ser: com ônus (quando implicarem no direito a concessao de passagens e diarias e ao recebimento de vencimentos ou salarios e demais vantagens) com ônus limitado (quando implicarem apenas no direito ao recebimento de vencimentos e salarios e demais vantagens) e sem ônus (quando implicarem a perda total dos vencimentos ou salarios e demais vantagens nao acarretando qualquer despesa para o orgao e entidade).','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.21','COM ÔNUS','Incluem-se documentos referentes à solicitação e autorização de afastamento do país, ajudas de custo, diárias, compra de moeda estrangeira, passagens, reservas de hotel, pagamento de despesas de eventos, prestações de contas e relatórios de viagem, bem como lista de participantes (no caso de comitivas e delegações) e concessão de passagens e diárias para convidados.','028.21 02821 Incluem-se documentos referentes a solicitacao e autorizacao de afastamento do pais ajudas de custo diarias compra de moeda estrangeira passagens reservas de hotel pagamento de despesas de eventos prestacoes de contas e relatorios de viagem bem como lista de participantes (no caso de comitivas e delegacoes) e concessao de passagens e diarias para convidados.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.22','COM ÔNUS LIMITADO','Incluem-se documentos referentes à solicitação e autorização de afastamento do país para participar de eventos ou cumprir missões e realizar viagens ao exterior.','028.22 02822 Incluem-se documentos referentes a solicitacao e autorizacao de afastamento do pais para participar de eventos ou cumprir missoes e realizar viagens ao exterior.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'028.23','SEM ÔNUS','Incluem-se documentos referentes à solicitação e autorização de afastamento do país para participar de eventos ou cumprir missões e realizar viagens ao exterior.','028.23 02823 Incluem-se documentos referentes a solicitacao e autorizacao de afastamento do pais para participar de eventos ou cumprir missoes e realizar viagens ao exterior.','S',NULL,7,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029','OUTRAS AÇÕES REFERENTES À GESTÃO DE PESSOAS','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de gestão de pessoas não contempladas nos descritores anteriores.','029 029 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de gestao de pessoas nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.1','CONTROLE DE ASSIDUIDADE E PONTUALIDADE','Nas subdivisões deste descritor classificam-se documentos referentes ao controle de frequência dos servidores, ao estabelecimento do horário de expediente do órgão e entidade e ao controle do cumprimento da jornada de trabalho regular fora das dependências do órgão ou entidade.','029.1 0291 Nas subdivisoes deste descritor classificam-se documentos referentes ao controle de frequencia dos servidores, ao estabelecimento do horario de expediente do orgao e entidade e ao controle do cumprimento da jornada de trabalho regular fora das dependencias do orgao ou entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.11','CONTROLE DE FREQUÊNCIA','Incluem-se livros, cartões e folhas de ponto, bem como documentos referentes ao abono de faltas, cumprimento de horário especial e de horas extras, banco de horas, corte de ponto e registro de dias parados.','029.11 02911 Incluem-se livros, cartoes e folhas de ponto, bem como documentos referentes ao abono de faltas, cumprimento de horario especial e de horas extras, banco de horas, corte de ponto e registro de dias parados.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.12','DEFINIÇÃO DO HORÁRIO DE EXPEDIENTE','Incluem-se documentos referentes à fixação e mudanças do horário de funcionamento do órgão e entidade e às escalas de plantão.','029.12 02912 Incluem-se documentos referentes a fixacao e mudancas do horario de funcionamento do orgao e entidade e as escalas de plantao.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.13','REGISTRO DAS ATIVIDADES DE TELETRABALHO','Incluem-se documentosreferentes a definiçãoou aprestação de contasdasatividades realizadasremotamente,em substituição ao controle defrequência,tais como: plano de trabalho,tabela de atividades,relatórioou outra forma de prestação de contasdas atividades e/ou entregasrealizadas.','029.13 02913 Incluem-se documentosreferentes a definicaoou aprestacao de contasdasatividades realizadasremotamente,em substituicao ao controle defrequencia,tais como: plano de trabalho,tabela de atividades,relatorioou outra forma de prestacao de contasdas atividades e/ou entregasrealizadas.','S',52,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.2','INSTITUIÇÃO DO PROGRAMA DE CRECHE','Nas subdivisões deste descritor classificam-se documentos referentes à implantação do programa de creche em decorrência da implementação de plano de assistência pré-escolar no órgão e entidade.','029.2 0292 Nas subdivisoes deste descritor classificam-se documentos referentes a implantacao do programa de creche em decorrencia da implementacao de plano de assistencia pre-escolar no orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.21','PUBLICAÇÃO E DIVULGAÇÃO','Incluem-se documentos referentes ao lançamento do programa de creche, à publicação de editais e à divulgação das vagas e dos critérios de seleção.','029.21 02921 Incluem-se documentos referentes ao lancamento do programa de creche a publicacao de editais e a divulgacao das vagas e dos criterios de selecao.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.22','INSCRIÇÃO, SELEÇÃO, ADMISSÃO E RENOVAÇÃO','Incluem-se documentos referentes à inscrição, ao estabelecimento de níveis ou categorias de usuários do benefício, à avaliação socioeconômica do candidato e à comprovação de vínculo do beneficiário com o órgão e entidade, bem como termo de compromisso, listas de atualização de beneficiados e de renovação do benefício.','029.22 02922 Incluem-se documentos referentes a inscricao ao estabelecimento de niveis ou categorias de usuarios do beneficio a avaliacao socioeconômica do candidato e a comprovacao de vinculo do beneficiario com o orgao e entidade bem como termo de compromisso listas de atualizacao de beneficiados e de renovacao do beneficio.','S',10,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.23','ACOMPANHAMENTO PEDAGÓGICO, MÉDICO E DO DESENVOLVIMENTO DA CRIANÇA','Incluem-se documentos referentes ao desenvolvimento de atividades recreativas e pedagógicas, ao fornecimento de alimentação e ao controle de saúde da criança.','029.23 02923 Incluem-se documentos referentes ao desenvolvimento de atividades recreativas e pedagogicas, ao fornecimento de alimentacao e ao controle de saude da crianca.','S',10,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.24','AVALIAÇÃO DO PROGRAMA','Incluem-se documentos referentes às avaliações periódicas e permanentes do programa, tais como: laudos técnicos, estabelecimento de indicadores, estudos de ofertas e demandas e relatórios.','029.24 02924 Incluem-se documentos referentes as avaliacoes periodicas e permanentes do programa tais como: laudos tecnicos estabelecimento de indicadores estudos de ofertas e demandas e relatorios.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.3','INCENTIVOS FUNCIONAIS','Incluem-se documentos referentes à concessão de prêmios, de medalhas, diplomas de honra ao mérito, condecorações e elogios.','029.3 0293 Incluem-se documentos referentes a concessao de premios de medalhas diplomas de honra ao merito condecoracoes e elogios.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.4','DELEGAÇÃO DE COMPETÊNCIA E PROCURAÇÃO','Incluem-se documentos referentes à autorização ou à delegação que a autoridade administrativa responsável pelo órgão e entidade pode conferir a um servidor para tratar de matéria de competência exclusiva, tais como: ordenação de despesas, decisões de recursos e casos de edição de atos de caráter normativo.','029.4 0294 Incluem-se documentos referentes a autorizacao ou a delegacao que a autoridade administrativa responsavel pelo orgao e entidade pode conferir a um servidor para tratar de materia de competencia exclusiva tais como: ordenacao de despesas decisoes de recursos e casos de edicao de atos de carater normativo.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.5','CONTRATAÇÃO DE SERVIÇOS PROFISSIONAIS TRANSITÓRIOS','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa física para prestação de serviços devem ser classificados no código 018.2.','029.5 0295 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa fisica para prestacao de servicos devem ser classificados no codigo 018.2.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'029.6','PETIÇÃO DE DIREITOS','Incluem-se requerimentos feitos pelo servidor em defesa de seus direitos ou interesses legítimos e pedidos de interposição de reconsideração ou de recurso.','029.6 0296 Incluem-se requerimentos feitos pelo servidor em defesa de seus direitos ou interesses legitimos e pedidos de interposicao de reconsideracao ou de recurso.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'030','GESTÃO DE MATERIAIS','Esta subclasse contempla documentos referentes à aquisição, movimentação, alienação, baixa e inventário de material permanente (mobiliário, equipamentos, utensílios, aparelhos, ferramentas, máquinas, instrumentos técnicos e obras de arte) e de consumo (material destinado às atividades de expediente, limpeza, manutenção, alimentação e abastecimento de veículos, medicamentos, uniformes, peças de reposição, matérias-primas e cobaias para uso científico), bem como aqueles referentes ao cadastramento e qualificação de fornecedores para a prestação produtos e serviços, e à execução de serviços de instalação e manutenção.','030 030 Esta subclasse contempla documentos referentes a aquisicao movimentacao alienacao baixa e inventario de material permanente (mobiliario equipamentos utensilios aparelhos ferramentas maquinas instrumentos tecnicos e obras de arte) e de consumo (material destinado as atividades de expediente limpeza manutencao alimentacao e abastecimento de veiculos medicamentos uniformes pecas de reposicao materias-primas e cobaias para uso cientifico) bem como aqueles referentes ao cadastramento e qualificacao de fornecedores para a prestacao produtos e servicos e a execucao de servicos de instalacao e manutencao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'030.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão de material permanente e de consumo.','030.01 03001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao de material permanente e de consumo.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'030.02','CADASTRAMENTO DE FORNECEDORES E DE PRESTADORES DE SERVIÇOS','Incluem-se documentos referentes ao registro cadastral de fornecedores em sistema específico da administração pública, visando verificar a capacidade técnica para aquisições e contratações de serviços relacionadas à gestão de material.','030.02 03002 Incluem-se documentos referentes ao registro cadastral de fornecedores em sistema especifico da administracao publica visando verificar a capacidade tecnica para aquisicoes e contratacoes de servicos relacionadas a gestao de material.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'030.03','ESPECIFICAÇÃO, PADRONIZAÇÃO, CODIFICAÇÃO, PREVISÃO, IDENTIFICAÇÃO E CLASSIFICAÇÃO','Incluem-se documentos referentes à especificação, padronização, codificação, previsão, identificação e classificação de material permanente, de consumo e de matéria-prima e insumo, bem como catálogo e amostras de materiais.','030.03 03003 Incluem-se documentos referentes a especificacao padronizacao codificacao previsao identificacao e classificacao de material permanente de consumo e de materia-prima e insumo bem como catalogo e amostras de materiais.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'030.04','QUALIFICAÇÃO DE FORNECEDORES','Incluem-se documentos referentes à seleção, pré-qualificação, qualificação, homologação, acompanhamento e auditoria de provedores externos, com base na capacidade de prover procedimentos, produtos e serviços, de acordo com requisitos técnicos e de qualidade.','030.04 03004 Incluem-se documentos referentes a selecao pre-qualificacao qualificacao homologacao acompanhamento e auditoria de provedores externos com base na capacidade de prover procedimentos produtos e servicos de acordo com requisitos tecnicos e de qualidade.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031','AQUISIÇÃO E INCORPORAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição e incorporação de material permanente, de consumo e de matéria-prima e insumo.','031 031 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao e incorporacao de material permanente de consumo e de materia-prima e insumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.1','COMPRA','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de material permanente e de consumo. Nota: A compra poderá ocorrer nas modalidades de licitação, dispensa de licitação e inexigibilidade de licitação.','031.1 0311 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de material permanente e de consumo. Nota: A compra podera ocorrer nas modalidades de licitacao dispensa de licitacao e inexigibilidade de licitacao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.11','MATERIAL PERMANENTE','Incluem-se documentos referentes à compra e importação de material permanente. Quanto à aquisição e incorporação de acervos bibliográfico e museológico, classificar nas subdivisões do código 062.1.','031.11 03111 Incluem-se documentos referentes a compra e importacao de material permanente. Quanto a aquisicao e incorporacao de acervos bibliografico e museologico classificar nas subdivisoes do codigo 062.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.12','MATERIAL DE CONSUMO','Incluem-se documentos referentes à compra e importação de material de consumo. Quanto à compra e importação de animais utilizados em pesquisas e estudos, mas que não sejam cobaias, classificar no código 041.13.','031.12 03112 Incluem-se documentos referentes a compra e importacao de material de consumo. Quanto a compra e importacao de animais utilizados em pesquisas e estudos mas que nao sejam cobaias classificar no codigo 041.13.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.2','DOAÇÃO E PERMUTA','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de material permanente e de consumo.','031.2 0312 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.21','MATERIAL PERMANENTE','Incluem-se documentos referentes à doação, permuta e transferência de material permanente.','031.21 03121 Incluem-se documentos referentes a doacao permuta e transferencia de material permanente.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.22','MATERIAL DE CONSUMO','Incluem-se documentos referentes à doação, permuta e transferência de material de consumo.','031.22 03122 Incluem-se documentos referentes a doacao permuta e transferencia de material de consumo.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.3','DAÇÃO. ADJUDICAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de material permanente e de consumo.','031.3 0313 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.31','MATERIAL PERMANENTE','Incluem-se documentos referentes à dação e adjudicação de material permanente, para recebimento de parte ou totalidade de dívida.','031.31 03131 Incluem-se documentos referentes a dacao e adjudicacao de material permanente para recebimento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.32','MATERIAL DE CONSUMO','Incluem-se documentos referentes à dação e adjudicação de material de consumo, para recebimento de parte ou totalidade de dívida.','031.32 03132 Incluem-se documentos referentes a dacao e adjudicacao de material de consumo para recebimento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.4','CESSÃO, COMODATO E EMPRÉSTIMO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição temporária de material permanente e de consumo.','031.4 0314 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao temporaria de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.41','MATERIAL PERMANENTE','Incluem-se documentos referentes à cessão, comodato e empréstimo de material permanente. Quanto ao empréstimo e devolução de material permanente disponibilizado aos servidores, classificar no código 039.2.','031.41 03141 Incluem-se documentos referentes a cessao comodato e emprestimo de material permanente. Quanto ao emprestimo e devolucao de material permanente disponibilizado aos servidores classificar no codigo 039.2.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.42','MATERIAL DE CONSUMO','Incluem-se documentos referentes à cessão, comodato e empréstimo de material de consumo.','031.42 03142 Incluem-se documentos referentes a cessao comodato e emprestimo de material de consumo.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'031.5','LOCAÇÃO. ARRENDAMENTO MERCANTIL (LEASING)','Incluem-se documentos referentes à aquisição temporária de material permanente por locação e arrendamento mercantil (leasing).','031.5 0315 Incluem-se documentos referentes a aquisicao temporaria de material permanente por locacao e arrendamento mercantil (leasing).','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032','MOVIMENTAÇÃO DE MATERIAL','Nas subdivisões deste descritor classificam-se documentos referentes à movimentação de material permanente e de consumo, que envolve as atividades de controle, segurança e proteção do armazenamento, do deslocamento, da distribuição, da previsão de consumo e da reposição de estoque.','032 032 Nas subdivisoes deste descritor classificam-se documentos referentes a movimentacao de material permanente e de consumo que envolve as atividades de controle seguranca e protecao do armazenamento do deslocamento da distribuicao da previsao de consumo e da reposicao de estoque.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032.01','TERMOS DE RESPONSABILIDADE. CAUTELA','Incluem-se documentos referentes à responsabilidade na movimentação de material e com o acautelamento no controle logístico, bem como as guias de transferência e os relatórios de movimentação de material.','032.01 03201 Incluem-se documentos referentes a responsabilidade na movimentacao de material e com o acautelamento no controle logistico bem como as guias de transferencia e os relatorios de movimentacao de material.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032.1','CONTROLE DE ESTOQUE','Incluem-se documentos referentes à requisição e distribuição de material e à reposição e controle de estoque, bem como os relatórios de movimentação de almoxarifado. Quanto ao acompanhamento e controle de bens materiais, classificar nas subdivisões do código 036.','032.1 0321 Incluem-se documentos referentes a requisicao e distribuicao de material e a reposicao e controle de estoque bem como os relatorios de movimentacao de almoxarifado. Quanto ao acompanhamento e controle de bens materiais classificar nas subdivisoes do codigo 036.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032.2','AUTORIZAÇÃO DE ENTRADA E SAÍDA DE MATERIAL','Incluem-se documentos referentes à autorização de entrada e saída de material, bem como aqueles referentes à armazenagem no decorrer do procedimento de desembaraço aduaneiro. Quanto ao empréstimo e devolução de material permanente disponibilizado aos servidores, classificar no código 039.2.','032.2 0322 Incluem-se documentos referentes a autorizacao de entrada e saida de material bem como aqueles referentes a armazenagem no decorrer do procedimento de desembaraco aduaneiro. Quanto ao emprestimo e devolucao de material permanente disponibilizado aos servidores classificar no codigo 039.2.','S',NULL,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032.3','RECOLHIMENTO DE MATERIAL INSERVÍVEL AO DEPÓSITO','Incluem-se documentos referentes ao recolhimento de material inservível e de sucatas ao depósito do órgão e entidade. Quanto à coleta seletiva solidária e à reciclagem de resíduos descartáveis, classificar no código 017.1. Quanto à alienação definitiva, por desfazimento, de material permanente e de consumo em razão de serem considerados inservíveis e irrecuperáveis, classificar nas subdivisões do código 033.4.','032.3 0323 Incluem-se documentos referentes ao recolhimento de material inservivel e de sucatas ao deposito do orgao e entidade. Quanto a coleta seletiva solidaria e a reciclagem de residuos descartaveis classificar no codigo 017.1. Quanto a alienacao definitiva por desfazimento de material permanente e de consumo em razao de serem considerados inserviveis e irrecuperaveis classificar nas subdivisoes do codigo 033.4.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'032.4','TOMBAMENTO','Incluem-se documentos referentes ao tombamento de material permanente, pertencentes ao órgão e entidade, quando se tornam peças de exposição.','032.4 0324 Incluem-se documentos referentes ao tombamento de material permanente, pertencentes ao orgao e entidade, quando se tornam pecas de exposicao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033','ALIENAÇÃO E BAIXA','Nas subdivisões deste descritor classificam-se documentos referentes à alienação e baixa de material permanente e de consumo.','033 033 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao e baixa de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.1','VENDA','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de material permanente e de consumo.','033.1 0331 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.11','MATERIAL PERMANENTE','Incluem-se documentos referentes à  venda e leilão de material permanente.','033.11 03311 Incluem-se documentos referentes a  venda e leilao de material permanente.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.12','MATERIAL DE CONSUMO','Incluem-se documentos referentes à venda e leilão de material de consumo','033.12 03312 Incluem-se documentos referentes a venda e leilao de material de consumo','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.2','DOAÇÃO E PERMUTA','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de material permanente e de consumo.','033.2 0332 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.21','MATERIAL PERMANENTE','Incluem-se documentos referentes à doação, permuta e transferência de material permanente.','033.21 03321 Incluem-se documentos referentes a doacao permuta e transferencia de material permanente.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.22','MATERIAL DE CONSUMO','Incluem-se documentos referentes à doação, permuta e transferência de material de consumo.','033.22 03322 Incluem-se documentos referentes a doacao permuta e transferencia de material de consumo.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.3','DAÇÃO. ADJUDICAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de material permanente e de consumo.','033.3 0333 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.31','MATERIAL PERMANENTE','Incluem-se documentos referentes à dação e adjudicação de material permanente, para pagamento de parte ou totalidade de dívida.','033.31 03331 Incluem-se documentos referentes a dacao e adjudicacao de material permanente para pagamento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.32','MATERIAL DE CONSUMO','Incluem-se documentos referentes à dação e adjudicação de material de consumo, para pagamento de parte ou totalidade de dívida.','033.32 03332 Incluem-se documentos referentes a dacao e adjudicacao de material de consumo para pagamento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.4','DESFAZIMENTO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de material permanente e de consumo em razão de serem considerados inservíveis e irrecuperáveis, ocorrendo por meio de inutilização, eliminação ou destruição. Quanto ao monitoramento e avaliação dos procedimentos de controle e preservação ambiental externa, classificar no código 017.2. Quanto ao recolhimento de material inservível e de sucatas ao depósito, classificar no código 032.3.','033.4 0334 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de material permanente e de consumo em razao de serem considerados inserviveis e irrecuperaveis ocorrendo por meio de inutilizacao eliminacao ou destruicao. Quanto ao monitoramento e avaliacao dos procedimentos de controle e preservacao ambiental externa classificar no codigo 017.2. Quanto ao recolhimento de material inservivel e de sucatas ao deposito classificar no codigo 032.3.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.41','MATERIAL PERMANENTE','Incluem-se documentos referentes ao desfazimento de material permanente.','033.41 03341 Incluem-se documentos referentes ao desfazimento de material permanente.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.42','MATERIAL DE CONSUMO','Incluem-se documentos referentes ao desfazimento de material de consumo.','033.42 03342 Incluem-se documentos referentes ao desfazimento de material de consumo.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.5','CESSÃO, COMODATO E EMPRÉSTIMO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação temporária de material permanente e de consumo.','033.5 0335 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao temporaria de material permanente e de consumo.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.51','MATERIAL PERMANENTE','Incluem-se documentos referentes à cessão, comodato e empréstimo de material permanente. Quanto ao empréstimo e devolução de material permanente disponibilizado aos servidores, classificar no código 039.2.','033.51 03351 Incluem-se documentos referentes a cessao comodato e emprestimo de material permanente. Quanto ao emprestimo e devolucao de material permanente disponibilizado aos servidores classificar no codigo 039.2.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.52','MATERIAL DE CONSUMO','Incluem-se documentos referentes à cessão, comodato e empréstimo de material de consumo.','033.52 03352 Incluem-se documentos referentes a cessao comodato e emprestimo de material de consumo.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'033.6','EXTRAVIO, ROUBO, DESAPARECIMENTO, FURTO E AVARIA','Incluem-se documentos referentes aos casos de extravio, roubo, desaparecimento, furto ou avaria de material. Quanto à apuração de responsabilidade disciplinar do servidor, classificar nas subdivisões do código 027. Quanto à ocorrência de sinistros em imóveis do órgão e entidade, classificar no código 046.3.','033.6 0336 Incluem-se documentos referentes aos casos de extravio roubo desaparecimento furto ou avaria de material. Quanto a apuracao de responsabilidade disciplinar do servidor classificar nas subdivisoes do codigo 027. Quanto a ocorrencia de sinistros em imoveis do orgao e entidade classificar no codigo 046.3.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'034','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1. Quanto à instalação e manutenção de equipamentos de combate a incêndio, classificar no código 046.13.','034 034 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1. Quanto a instalacao e manutencao de equipamentos de combate a incendio classificar no codigo 046.13.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'035','EXECUÇÃO DE SERVIÇOS DE INSTALAÇÃO E MANUTENÇÃO','Incluem-se documentos referentes à execução de serviços de instalação e manutenção de material, com meios próprios do órgão e entidade, não sendo necessária a contratação de empresas terceirizadas ou de mão de obra externa.','035 035 Incluem-se documentos referentes a execucao de servicos de instalacao e manutencao de material com meios proprios do orgao e entidade nao sendo necessaria a contratacao de empresas terceirizadas ou de mao de obra externa.','S',NULL,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'036','CONTROLE DE MATERIAIS','Nas subdivisões deste descritor classificam-se documentos referentes ao acompanhamento e controle de bens materiais, que subsidiam a elaboração dos inventários. Quanto à requisição e distribuição de material e à reposição e controle de estoque, classificar no código 032.1. Quanto ao inventário de acervos bibliográfico e museológico, classificar no código 062.3.','036 036 Nas subdivisoes deste descritor classificam-se documentos referentes ao acompanhamento e controle de bens materiais que subsidiam a elaboracao dos inventarios. Quanto a requisicao e distribuicao de material e a reposicao e controle de estoque classificar no codigo 032.1. Quanto ao inventario de acervos bibliografico e museologico classificar no codigo 062.3.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'036.01','COMISSÃO DE INVENTÁRIO','Incluem-se documentos referentes à constituição das comissões de inventário, bem como aqueles referentes à definição dos procedimentos para a realização dos mesmos.','036.01 03601 Incluem-se documentos referentes a constituicao das comissoes de inventario bem como aqueles referentes a definicao dos procedimentos para a realizacao dos mesmos.','S',NULL,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'036.1','INVENTÁRIO DE MATERIAL PERMANENTE','Incluem-se documentos referentes à elaboração do inventário do material permanente do órgão e entidade.','036.1 0361 Incluem-se documentos referentes a elaboracao do inventario do material permanente do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'036.2','INVENTÁRIO DE MATERIAL DE CONSUMO','Incluem-se documentos referentes à elaboração do inventário do  material de consumo do órgão e entidade.','036.2 0362 Incluem-se documentos referentes a elaboracao do inventario do  material de consumo do orgao e entidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'039','OUTRAS AÇÕES REFERENTES À GESTÃO DE MATERIAIS','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de gestão de bens materiais não contempladas nos descritores anteriores.','039 039 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de gestao de bens materiais nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'039.1','RACIONALIZAÇÃO DO USO DE MATERIAL','Nas subdivisões deste descritor classificam-se documentos referentes à criação, designação, gestão, divulgação e resultados da atuação de grupos de trabalho e de comissões de racionalização do uso de material.','039.1 0391 Nas subdivisoes deste descritor classificam-se documentos referentes a criacao designacao gestao divulgacao e resultados da atuacao de grupos de trabalho e de comissoes de racionalizacao do uso de material.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'039.11','CRIAÇÃO E ATUAÇÃO DE GRUPOS DE TRABALHO','Incluem-se documentos referentes à criação de grupos de trabalho e comissões de racionalização do uso de material, aos registros das deliberações e às tomadas de decisão definidas nas reuniões, tais como: ato de instituição, regras para atuação, designação e substituição de membros, resoluções, atas e relatórios.','039.11 03911 Incluem-se documentos referentes a criacao de grupos de trabalho e comissoes de racionalizacao do uso de material aos registros das deliberacoes e as tomadas de decisao definidas nas reunioes tais como: ato de instituicao regras para atuacao designacao e substituicao de membros resolucoes atas e relatorios.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'039.12','OPERACIONALIZAÇÃO DE REUNIÕES','Incluem-se documentos referentes à organização das reuniões dos grupos de trabalhos e das comissões de racionalização do uso de material, bem como aqueles referentes ao agendamento, convocação, pauta e lista de participantes.','039.12 03912 Incluem-se documentos referentes a organizacao das reunioes dos grupos de trabalhos e das comissoes de racionalizacao do uso de material bem como aqueles referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'039.2','EMPRÉSTIMO E DEVOLUÇÃO DE MATERIAL PERMANENTE','Incluem-se documentos referentes ao empréstimo e devolução de material permanente, normalmente, disponibilizados aos servidores, para uso em atividades internas e externas do órgão e entidade, como computadores portáteis, filmadoras, câmeras fotográficas e telefones celulares funcionais. Quanto à autorização de entrada e saída de material do órgão e entidade, classificar no código 032.2. Quanto ao empréstimo de material permanente para outro órgão e entidade, classificar no código 033.51.','039.2 0392 Incluem-se documentos referentes ao emprestimo e devolucao de material permanente normalmente disponibilizados aos servidores para uso em atividades internas e externas do orgao e entidade como computadores portateis filmadoras cameras fotograficas e telefones celulares funcionais. Quanto a autorizacao de entrada e saida de material do orgao e entidade classificar no codigo 032.2. Quanto ao emprestimo de material permanente para outro orgao e entidade classificar no codigo 033.51.','S',1,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'040','GESTÃO DE BENS PATRIMONIAIS E DE SERVIÇOS','Esta subclasse contempla documentos referentes à aquisição, alienação e inventário de bens imóveis (terrenos, edifícios, residências  e  salas),  de  veículos  motorizados  (terrestres,  fluviais,  marítimos e aéreos) e não motorizados (propulsão humana e tração animal) e de bens semoventes (animais utilizados para patrulhamento, investigação e transporte), bem como aqueles referentes à contratação de prestação de serviços para o fornecimento de serviços públicos essenciais, para a execução de obras e ao controle, proteção, guarda e segurança patrimonial.','040 040 Esta subclasse contempla documentos referentes a aquisicao alienacao e inventario de bens imoveis (terrenos edificios residencias  e  salas)  de  veiculos  motorizados  (terrestres  fluviais  maritimos e aereos) e nao motorizados (propulsao humana e tracao animal) e de bens semoventes (animais utilizados para patrulhamento investigacao e transporte) bem como aqueles referentes a contratacao de prestacao de servicos para o fornecimento de servicos publicos essenciais para a execucao de obras e ao controle protecao guarda e seguranca patrimonial.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'040.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão de bens patrimoniais.','040.01 04001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao de bens patrimoniais.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041','AQUISIÇÃO E INCORPORAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição e incorporação de bens imóveis, de veículos e de bens semoventes.','041 041 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao e incorporacao de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.1','COMPRA','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de bens imóveis, de veículos e de bens semoventes. Nota: A compra poderá ocorrer nas modalidades de licitação, dispensa de licitação e inexigibilidade de licitação.','041.1 0411 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de bens imoveis de veiculos e de bens semoventes. Nota: A compra podera ocorrer nas modalidades de licitacao dispensa de licitacao e inexigibilidade de licitacao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.11','BENS IMÓVEIS','Incluem-se documentos referentes à compra e leilão de imóveis. Quanto à alienação definitiva e fiduciária de bens imóveis por venda, classificar no código 042.11.','041.11 04111 Incluem-se documentos referentes a compra e leilao de imoveis. Quanto a alienacao definitiva e fiduciaria de bens imoveis por venda classificar no codigo 042.11.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.12','VEÍCULOS','Incluem-se documentos referentes à compra e importação de veículos. Quanto à alienação definitiva e fiduciária de veículos por venda, classificar no código 042.12.','041.12 04112 Incluem-se documentos referentes a compra e importacao de veiculos. Quanto a alienacao definitiva e fiduciaria de veiculos por venda classificar no codigo 042.12.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.13','BENS SEMOVENTES','Incluem-se documentos referentes à compra e importação de animais. Quanto à compra e importação de animais utilizados como cobaias, classificar no código 031.12.','041.13 04113 Incluem-se documentos referentes a compra e importacao de animais. Quanto a compra e importacao de animais utilizados como cobaias classificar no codigo 031.12.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.2','DOAÇÃO E PERMUTA','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de bens imóveis, de veículos e de bens semoventes.','041.2 0412 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.21','BENS IMÓVEIS','Incluem-se documentos referentes a doação, permuta e transferência de imóveis.','041.21 04121 Incluem-se documentos referentes a doacao, permuta e transferencia de imoveis.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.22','VEÍCULOS','Incluem-se documentos referentes a doação, permuta e transferência de veículos.','041.22 04122 Incluem-se documentos referentes a doacao, permuta e transferencia de veiculos.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.23','BENS SEMOVENTES','Incluem-se documentos referentes a doação, permuta e transferência de animais.','041.23 04123 Incluem-se documentos referentes a doacao, permuta e transferencia de animais.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.3','DAÇÃO. ADJUDICAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição definitiva de bens imóveis e de veículos.','041.3 0413 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao definitiva de bens imoveis e de veiculos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.31','BENS IMÓVEIS','Incluem-se documentos referentes à dação e adjudicação de imóveis, para recebimento de parte ou totalidade de dívida.','041.31 04131 Incluem-se documentos referentes a dacao e adjudicacao de imoveis para recebimento de parte ou totalidade de divida.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.32','VEÍCULOS','Incluem-se documentos referentes à dação e adjudicação de veículos, para recebimento de parte ou totalidade de dívida.','041.32 04132 Incluem-se documentos referentes a dacao e adjudicacao de veiculos para recebimento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.4','PROCRIAÇÃO','Incluem-se documentos referentes à aquisição definitiva de bens semoventes por procriação (animais nascidos no local de criação).','041.4 0414 Incluem-se documentos referentes a aquisicao definitiva de bens semoventes por procriacao (animais nascidos no local de criacao).','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.5','CESSÃO E COMODATO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição temporária de bens imóveis, de veículos e de bens semoventes.','041.5 0415 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao temporaria de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.51','BENS IMÓVEIS','Incluem-se documentos referentes à cessão e comodato de imóveis. Quanto ao uso de dependências do órgão e entidade, por servidores, classificar no código 043.7.','041.51 04151 Incluem-se documentos referentes a cessao e comodato de imoveis. Quanto ao uso de dependencias do orgao e entidade por servidores classificar no codigo 043.7.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.52','VEÍCULOS','Incluem-se documentos referentes à cessão e comodato de  veículos.','041.52 04152 Incluem-se documentos referentes a cessao e comodato de  veiculos.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.53','BENS SEMOVENTES','Incluem-se documentos referentes à cessão e comodato de animais.','041.53 04153 Incluem-se documentos referentes a cessao e comodato de animais.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.6','LOCAÇÃO. ARRENDAMENTO MERCANTIL (LEASING). SUBLOCAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição temporária de bens imóveis e de veículos.','041.6 0416 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao temporaria de bens imoveis e de veiculos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.61','BENS IMÓVEIS','Incluem-se documentos referentes à locação, arrendamento mercantil (leasing) e sublocação de imóveis. Quanto ao uso de dependências do órgão e entidade, por servidores, classificar no código 043.7. Quanto à locação temporária de salas e auditórios para realização de eventos, classificar no código 918.','041.61 04161 Incluem-se documentos referentes a locacao arrendamento mercantil (leasing) e sublocacao de imoveis. Quanto ao uso de dependencias do orgao e entidade por servidores classificar no codigo 043.7. Quanto a locacao temporaria de salas e auditorios para realizacao de eventos classificar no codigo 918.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.62','VEÍCULOS','Incluem-se documentos referentes à locação, arrendamento mercantil (leasing) e sublocação de veículos.','041.62 04162 Incluem-se documentos referentes a locacao arrendamento mercantil (leasing) e sublocacao de veiculos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'041.7','DESMEMBRAMENTO','Incluem-se documentos referentes ao desmembramento de bem imóvel do órgão ou entidade, desvinculado da alienação. Quanto à alienação definitiva de bem imóvel por desmembramento, classificar no código 042.4.','041.7 0417 Incluem-se documentos referentes ao desmembramento de bem imovel do orgao ou entidade desvinculado da alienacao. Quanto a alienacao definitiva de bem imovel por desmembramento classificar no codigo 042.4.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042','ALIENAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação de bens imóveis, de veículos e de bens semoventes.','042 042 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.1','VENDA','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de bens imóveis, de veículos e de bens semoventes.','042.1 0421 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.11','BENS IMÓVEIS','Incluem-se documentos referentes à venda e leilão de imóveis. Quanto à alienação fiduciária como garantia de propriedade de bens imóveis, classificar no código 041.11.','042.11 04211 Incluem-se documentos referentes a venda e leilao de imoveis. Quanto a alienacao fiduciaria como garantia de propriedade de bens imoveis classificar no codigo 041.11.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.12','VEÍCULOS','Incluem-se documentos referentes à venda e leilão de veículos. Quanto à alienação fiduciária como garantia de propriedade de veículos, classificar no código 041.12.','042.12 04212 Incluem-se documentos referentes a venda e leilao de veiculos. Quanto a alienacao fiduciaria como garantia de propriedade de veiculos classificar no codigo 041.12.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.13','BENS SEMOVENTES','Incluem-se documentos referentes à venda e leilão de animais.','042.13 04213 Incluem-se documentos referentes a venda e leilao de animais.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.2','DOAÇÃO E PERMUTA','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de bens imóveis, de veículos e de bens semoventes.','042.2 0422 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.21','BENS IMÓVEIS','Incluem-se documentos referentes à doação e permuta de imóveis.','042.21 04221 Incluem-se documentos referentes a doacao e permuta de imoveis.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.22','VEÍCULOS','Incluem-se documentos referentes à doação e permuta de veículos.','042.22 04222 Incluem-se documentos referentes a doacao e permuta de veiculos.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.23','BENS SEMOVENTES','Incluem-se documentos referentes à doação e permuta de animais.','042.23 04223 Incluem-se documentos referentes a doacao e permuta de animais.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.3','DAÇÃO. ADJUDICAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação definitiva de bens imóveis e de veículos.','042.3 0423 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao definitiva de bens imoveis e de veiculos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.31','BENS IMÓVEIS','Incluem-se documentos referentes à dação e adjudicação de bens imóveis, para pagamento de parte ou totalidade de dívida.','042.31 04231 Incluem-se documentos referentes a dacao e adjudicacao de bens imoveis para pagamento de parte ou totalidade de divida.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.32','VEÍCULOS','Incluem-se documentos referentes à dação e adjudicação de veículos, para pagamento de parte ou totalidade de dívida.','042.32 04232 Incluem-se documentos referentes a dacao e adjudicacao de veiculos para pagamento de parte ou totalidade de divida.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.4','DESAPROPRIAÇÃO E DESMEMBRAMENTO','Incluem-se documentos referentes à alienação definitiva de bens imóveis por desapropriação e por desmembramento. Quanto ao desmembramento de bem imóvel, desvinculado da alienação, classificar no código 041.7.','042.4 0424 Incluem-se documentos referentes a alienacao definitiva de bens imoveis por desapropriacao e por desmembramento. Quanto ao desmembramento de bem imovel desvinculado da alienacao classificar no codigo 041.7.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.5','CESSÃO E COMODATO','Nas subdivisões deste descritor classificam-se documentos referentes à alienação temporária de bens imóveis, de veículos e de bens semoventes.','042.5 0425 Nas subdivisoes deste descritor classificam-se documentos referentes a alienacao temporaria de bens imoveis de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.51','BENS IMÓVEIS','Incluem-se documentos referentes à cessão e comodato de imóveis.','042.51 04251 Incluem-se documentos referentes a cessao e comodato de imoveis.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.52','VEÍCULOS','Incluem-se documentos referentes à cessão e comodato de veículos.','042.52 04252 Incluem-se documentos referentes a cessao e comodato de veiculos.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.53','BENS SEMOVENTES','Incluem-se documentos referentes à cessão e comodato de animais.','042.53 04253 Incluem-se documentos referentes a cessao e comodato de animais.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.6','LOCAÇÃO. ARRENDAMENTO. SUBLOCAÇÃO','Incluem-se documentos referentes à alienação temporária de bens imóveis por locação, por arrendamento e por sublocação, bem como os termos de permissão remunerada de uso.','042.6 0426 Incluem-se documentos referentes a alienacao temporaria de bens imoveis por locacao por arrendamento e por sublocacao bem como os termos de permissao remunerada de uso.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.7','BAIXA. DESFAZIMENTO','Nas subdivisões deste descritor classificam-se documentos referentes à baixa e desfazimento de veículos e de bens semoventes.','042.7 0427 Nas subdivisoes deste descritor classificam-se documentos referentes a baixa e desfazimento de veiculos e de bens semoventes.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.71','VEÍCULOS','Incluem-se documentos referentes à baixa e desfazimento de veículos, quando o mesmo é retirado de circulação, por ser irrecuperável e inservível, definitivamente desmontado, sinistrado com laudo de perda total, vendido ou leiloado como sucata.','042.71 04271 Incluem-se documentos referentes a baixa e desfazimento de veiculos quando o mesmo e retirado de circulacao por ser irrecuperavel e inservivel definitivamente desmontado sinistrado com laudo de perda total vendido ou leiloado como sucata.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'042.72','BENS SEMOVENTES','Incluem-se documentos referentes à baixa de animais por incapacidade, inaptidão, invalidez, morte, sacrifício e aposentadoria.','042.72 04272 Incluem-se documentos referentes a baixa de animais por incapacidade inaptidao invalidez morte sacrificio e aposentadoria.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043','ADMINISTRAÇÃO CONDOMINIAL','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos necessários para a administração, o registro e o controle dos bens patrimoniais do órgão e entidade.','043 043 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos necessarios para a administracao, o registro e o controle dos bens patrimoniais do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.1','REGISTRO DOS IMÓVEIS','Incluem-se os documentos referentes à identificação e ao registro dos imóveis, tais como: título de propriedade, escrituras, certidões, plantas e projetos arquitetônicos.','043.1 0431 Incluem-se os documentos referentes a identificacao e ao registro dos imoveis tais como: titulo de propriedade escrituras certidoes plantas e projetos arquitetônicos.','S',5,3,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.2','SERVIÇOS DE CONDOMÍNIO','Incluem-se documentos referentes ao pagamento de despesas condominiais dos imóveis. Quanto à documentação normativa, como convenção de condomínio, regulamento interno e atas de assembleias, classificar no código 040.01. Quanto ao pagamento de taxas e tributos, como o imposto predial e territorial urbano e a taxa de incêndio, classificar no código 059.2.','043.2 0432 Incluem-se documentos referentes ao pagamento de despesas condominiais dos imoveis. Quanto a documentacao normativa como convencao de condominio regulamento interno e atas de assembleias classificar no codigo 040.01. Quanto ao pagamento de taxas e tributos como o imposto predial e territorial urbano e a taxa de incendio classificar no codigo 059.2.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.3','REINTEGRAÇÃO DE POSSE. REIVINDICAÇÃO DE DOMÍNIO. DESPEJO DE PERMISSIONÁRIO','Incluem-se documentos referentes à reintegração de posse, à reivindicação de domínio e ao despejo de permissionário dos imóveis do órgão e entidade.','043.3 0433 Incluem-se documentos referentes a reintegracao de posse a reivindicacao de dominio e ao despejo de permissionario dos imoveis do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.4','TOMBAMENTO','Incluem-se documentos referentes ao tombamento de imóveis pertencentes ao órgão e entidade, quando estes forem declarados como patrimônio histórico-cultural por instituição competente e responsável por esta atribuição.','043.4 0434 Incluem-se documentos referentes ao tombamento de imoveis pertencentes ao orgao e entidade, quando estes forem declarados como patrimônio historico-cultural por instituicao competente e responsavel por esta atribuicao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.5','INSPEÇÃO PATRIMONIAL','Incluem-se documentos referentes às inspeções patrimoniais (preventivas e periódicas) realizadas nas propriedades do órgão e entidade, bem como a entrega de notificações sobre as infrações verificadas, como registro de invasões, grilagem, ações de vandalismo, obstrução de passagem, ocupação ilegal, utilização inadequada de imóvel, construção irregular e construção não autorizada.','043.5 0435 Incluem-se documentos referentes as inspecoes patrimoniais (preventivas e periodicas) realizadas nas propriedades do orgao e entidade bem como a entrega de notificacoes sobre as infracoes verificadas como registro de invasoes grilagem acoes de vandalismo obstrucao de passagem ocupacao ilegal utilizacao inadequada de imovel construcao irregular e construcao nao autorizada.','S',5,3,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.6','MUDANÇA','Nas subdivisões deste descritor classificam-se documentos referentes à transferência de bens materiais do órgão e entidade. Quanto à contratação de serviços de mudanças, classificar no código 034.','043.6 0436 Nas subdivisoes deste descritor classificam-se documentos referentes a transferencia de bens materiais do orgao e entidade. Quanto a contratacao de servicos de mudancas classificar no codigo 034.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.61','PARA OUTROS IMÓVEIS','Incluem-se documentos referentes à mudança de bens materiais realizada de um imóvel para outro imóvel do órgão e entidade.','043.61 04361 Incluem-se documentos referentes a mudanca de bens materiais realizada de um imovel para outro imovel do orgao e entidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.62','DENTRO DO MESMO IMÓVEL','Incluem-se documentos referentes à mudança de bens materiais realizada dentro do mesmo imóvel do órgão e entidade.','043.62 04362 Incluem-se documentos referentes a mudanca de bens materiais realizada dentro do mesmo imovel do orgao e entidade.','S',NULL,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'043.7','USO DE DEPENDÊNCIAS','Incluem-se documentos referentes à requisição e utilização, por servidores, de dependências (salas e auditórios) de imóvel do órgão e entidade. Quanto ao uso de dependências do órgão e entidade, por terceiros, mediante cessão e comodato, classificar no código 041.51. Quanto ao uso de dependências do órgão e entidade, por terceiros, mediante locação, arrendamento mercantil (leasing) e sublocação, classificar no código 041.61.','043.7 0437 Incluem-se documentos referentes a requisicao e utilizacao por servidores de dependencias (salas e auditorios) de imovel do orgao e entidade. Quanto ao uso de dependencias do orgao e entidade por terceiros mediante cessao e comodato classificar no codigo 041.51. Quanto ao uso de dependencias do orgao e entidade por terceiros mediante locacao arrendamento mercantil (leasing) e sublocacao classificar no codigo 041.61.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044','ADMINISTRAÇÃO DA FROTA DE VEÍCULOS','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos necessários para a administração e o controle de uso dos veículos do órgão e entidade.','044 044 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos necessarios para a administracao e o controle de uso dos veiculos do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.1','CADASTRAMENTO, LICENCIAMENTO E EMPLACAMENTO','Incluem-se documentos referentes ao cadastramento, licenciamento e emplacamento de veículos. Quanto ao pagamento de taxas e tributos dos veículos, como o imposto sobre a propriedade de veículos automotores, classificar no código 059.2.','044.1 0441 Incluem-se documentos referentes ao cadastramento, licenciamento e emplacamento de veiculos. Quanto ao pagamento de taxas e tributos dos veiculos, como o imposto sobre a propriedade de veiculos automotores, classificar no codigo 059.2.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.2','TOMBAMENTO','Incluem-se documentos referentes ao tombamento de veículos, pertencentes ao órgão e entidade, quando se tornam peças de exposição.','044.2 0442 Incluem-se documentos referentes ao tombamento de veiculos, pertencentes ao orgao e entidade, quando se tornam pecas de exposicao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.3','OCORRÊNCIA DE SINISTROS','Incluem-se documentos referentes a acidentes, eventos inesperados e não premeditados ocorridos com veículos pertencentes ao órgão e entidade e com veículos locados, tais como: colisão, incêndio, roubo, furto, enchente e alagamento. Quanto à ocorrência de sinistros em imóveis do órgão e entidade, classificar no código 046.3.','044.3 0443 Incluem-se documentos referentes a acidentes eventos inesperados e nao premeditados ocorridos com veiculos pertencentes ao orgao e entidade e com veiculos locados tais como: colisao incendio roubo furto enchente e alagamento. Quanto a ocorrencia de sinistros em imoveis do orgao e entidade classificar no codigo 046.3.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.4','CONTROLE DE USO','Incluem-se documentos referentes ao controle e a utilização de veículos, bem como aqueles referentes à requisição e autorização para uso, dentro e fora do horário de expediente. Quanto ao controle de entrada e saída de veículos de visitantes e prestadores de serviço, classificar no código 046.4.','044.4 0444 Incluem-se documentos referentes ao controle e a utilizacao de veiculos bem como aqueles referentes a requisicao e autorizacao para uso dentro e fora do horario de expediente. Quanto ao controle de entrada e saida de veiculos de visitantes e prestadores de servico classificar no codigo 046.4.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.5','ESTACIONAMENTO. GARAGEM','Incluem-se documentos referentes à utilização de estacionamento e garagem, do órgão e entidade, por veículos oficiais e por veículos dos servidores. Quanto ao controle de entrada e saída de veículos de visitantes e de prestadores de serviço, classificar no código 046.4.','044.5 0445 Incluem-se documentos referentes a utilizacao de estacionamento e garagem do orgao e entidade por veiculos oficiais e por veiculos dos servidores. Quanto ao controle de entrada e saida de veiculos de visitantes e de prestadores de servico classificar no codigo 046.4.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'044.6','NOTIFICAÇÕES DE INFRAÇÕES E MULTAS','Incluem-se documentos referentes às infrações de trânsito e multas relativas aos veículos pertencentes ao órgão e entidade e aos veículos locados, bem como aqueles referentes às sindicâncias instauradas. ','044.6 0446 Incluem-se documentos referentes as infracoes de transito e multas relativas aos veiculos pertencentes ao orgao e entidade e aos veiculos locados bem como aqueles referentes as sindicancias instauradas. ','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Os descritores 045.01, 045.2, 045.21, 045.22, 045.23, 045.24, 045.4, 045.5, 045.6 e 045.7 foram suprimidos em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica ou física para prestação de serviços devem ser classificados nas subdivisões do código 018. Só foram mantidos os descritores relativos à contratação para fornecimento de serviços públicos essenciais e para a execução de obras em bens imóveis do órgão e entidade.','045 045 Os descritores 045.01 045.2 045.21 045.22 045.23 045.24 045.4 045.5 045.6 e 045.7 foram suprimidos em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica ou fisica para prestacao de servicos devem ser classificados nas subdivisoes do codigo 018. So foram mantidos os descritores relativos a contratacao para fornecimento de servicos publicos essenciais e para a execucao de obras em bens imoveis do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.01','SEGURO PATRIMONIAL','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1. Quanto aos seguros destinados aos servidores, classificar no código 023.91.','045.01 04501 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1. Quanto aos seguros destinados aos servidores classificar no codigo 023.91.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.1','FORNECIMENTO DE SERVIÇOS PÚBLICOS ESSENCIAIS','Nas subdivisões deste descritor classificam-se documentos referentes à contratação de empresas concessionárias de serviços públicos essenciais.','045.1 0451 Nas subdivisoes deste descritor classificam-se documentos referentes a contratacao de empresas concessionarias de servicos publicos essenciais.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.11','ÁGUA E ESGOTAMENTO SANITÁRIO','Incluem-se documentos referentes ao serviço contratado para fornecimento de água e esgotamento sanitário.','045.11 04511 Incluem-se documentos referentes ao servico contratado para fornecimento de agua e esgotamento sanitario.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.12','GÁS','Incluem-se documentos referentes ao serviço contratado para fornecimento de gás. Quanto à aquisição de gás e outros materiais engarrafados de uso industrial, para tratamento de água, iluminação e uso médico, bem como gases nobres para uso em laboratório científico, classificar no código 031.12.','045.12 04512 Incluem-se documentos referentes ao servico contratado para fornecimento de gas. Quanto a aquisicao de gas e outros materiais engarrafados de uso industrial para tratamento de agua iluminacao e uso medico bem como gases nobres para uso em laboratorio cientifico classificar no codigo 031.12.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.13','ENERGIA ELÉTRICA','Incluem-se documentos referentes ao serviço contratado para fornecimento de energia elétrica.','045.13 04513 Incluem-se documentos referentes ao servico contratado para fornecimento de energia eletrica.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.2','MANUTENÇÃO E REPARO DAS INSTALAÇÕES','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.2 0452 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.21','ELEVADORES','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.21 04521 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.22','SISTEMAS CENTRAIS DE AR CONDICIONADO','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.22 04522 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.23','SUBESTAÇÕES ELÉTRICAS E GERADORES','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.23 04523 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.24','CONSERVAÇÃO PREDIAL','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.24 04524 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.3','EXECUÇÃO DE OBRAS','Nas subdivisões deste descritor classificam-se documentos referentes à contratação de pessoa jurídica ou física para a execução de obras em bens imóveis do órgão e entidade, bem como aqueles referentes à prestação de consultoria para a realização de obras. Quanto à contratação de pessoa jurídica ou física para prestação de demais serviços, distintos da execução de obras, classificar nas subdivisões do código 018.','045.3 0453 Nas subdivisoes deste descritor classificam-se documentos referentes a contratacao de pessoa juridica ou fisica para a execucao de obras em bens imoveis do orgao e entidade bem como aqueles referentes a prestacao de consultoria para a realizacao de obras. Quanto a contratacao de pessoa juridica ou fisica para prestacao de demais servicos distintos da execucao de obras classificar nas subdivisoes do codigo 018.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.31','CONSTRUÇÃO','Incluem-se documentos referentes às obras para a construção de bem imóvel.','045.31 04531 Incluem-se documentos referentes as obras para a construcao de bem imovel.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.32','REFORMA. RECUPERAÇÃO. RESTAURAÇÃO','Incluem-se documentos referentes à reforma, recuperação e/ou restauração de bem imóvel do órgão e entidade, como troca de piso, reforma de sala, recuperação de rampa de acesso, restauração da fachada, troca de encanamento, troca de fiação elétrica, pintura interna e externa e impermeabilização de telhado.','045.32 04532 Incluem-se documentos referentes a reforma recuperacao e/ou restauracao de bem imovel do orgao e entidade como troca de piso reforma de sala recuperacao de rampa de acesso restauracao da fachada troca de encanamento troca de fiacao eletrica pintura interna e externa e impermeabilizacao de telhado.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.33','ADAPTAÇÃO DE USO','Incluem-se documentos referentes às obras de adaptação de uso de bem imóvel do órgão e entidade, tombado ou não, inclusive para acessibilidade.','045.33 04533 Incluem-se documentos referentes as obras de adaptacao de uso de bem imovel do orgao e entidade tombado ou nao inclusive para acessibilidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.4','VIGILÂNCIA PATRIMONIAL','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1. Quanto à contratação de bombeiro profissional civil como autônomo (pessoa física), classificar no código 018.2. Quanto à constituição de brigada voluntária de incêndio, classificar no código 046.12. Quanto ao funcionamento de sistemas eletrônicos de monitoramento e vigilância, classificar no código 046.2.','045.4 0454 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1. Quanto a contratacao de bombeiro profissional civil como autônomo (pessoa fisica) classificar no codigo 018.2. Quanto a constituicao de brigada voluntaria de incendio classificar no codigo 046.12. Quanto ao funcionamento de sistemas eletrônicos de monitoramento e vigilancia classificar no codigo 046.2.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.5','ABASTECIMENTO E MANUTENÇÃO DE VEÍCULOS','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1. Quanto à aquisição de combustíveis, lubrificantes e peças de reposição de forma isolada, classificar no código 031.12.','045.5 0455 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1. Quanto a aquisicao de combustiveis lubrificantes e pecas de reposicao de forma isolada classificar no codigo 031.12.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.6','ASSISTÊNCIA VETERINÁRIA','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.6 0456 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'045.7','ADESTRAMENTO','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','045.7 0457 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046','PROTEÇÃO, GUARDA E SEGURANÇA PATRIMONIAL','Nas subdivisões deste descritor classificam-se documentos referentes às atividades para proteção, guarda e segurança das dependências do órgão e entidade.','046 046 Nas subdivisoes deste descritor classificam-se documentos referentes as atividades para protecao guarda e seguranca das dependencias do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.1','PREVENÇÃO DE INCÊNDIO','Nas subdivisões deste descritor classificam-se documentos referentes ao treinamento de pessoal, instalação e manutenção de extintores, inspeções periódicas dos equipamentos de combate a incêndio e constituição de brigadas voluntárias de incêndio.','046.1 0461 Nas subdivisoes deste descritor classificam-se documentos referentes ao treinamento de pessoal, instalacao e manutencao de extintores, inspecoes periodicas dos equipamentos de combate a incendio e constituicao de brigadas voluntarias de incendio.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.11','PLANEJAMENTO, ELABORAÇÃO E ACOMPANHAMENTO DE PROJETOS','Incluem-se documentos referentes ao planejamento, à elaboração e à execução de projetos para a prevenção de incêndios, bem como os relatórios de acompanhamento.','046.11 04611 Incluem-se documentos referentes ao planejamento a elaboracao e a execucao de projetos para a prevencao de incendios bem como os relatorios de acompanhamento.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.12','CONSTITUIÇÃO DE BRIGADA VOLUNTÁRIA','Incluem-se documentos referentes à constituição de brigada de incêndio, composta por servidores que se apresentam como voluntários. Quanto à contratação de bombeiro profissional civil como autônomo (pessoa física), classificar no código 029.5. Quanto à contratação de empresa terceirizada para execução de serviços de brigada de incêndio (bombeiro profissional civil), classificar no código 045.4.','046.12 04612 Incluem-se documentos referentes a constituicao de brigada de incendio composta por servidores que se apresentam como voluntarios. Quanto a contratacao de bombeiro profissional civil como autônomo (pessoa fisica) classificar no codigo 029.5. Quanto a contratacao de empresa terceirizada para execucao de servicos de brigada de incendio (bombeiro profissional civil) classificar no codigo 045.4.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.13','INSTALAÇÃO E MANUTENÇÃO DE EQUIPAMENTOS DE COMBATE A INCÊNDIO','Incluem-se documentos referentes à instalação e à manutenção de equipamentos e sistemas de combate a incêndio, como extintores, mangueiras, machados, luvas e capacetes.','046.13 04613 Incluem-se documentos referentes a instalacao e a manutencao de equipamentos e sistemas de combate a incendio como extintores mangueiras machados luvas e capacetes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.2','MONITORAMENTO. VIGILÂNCIA','Incluem-se documentos referentes ao funcionamento de sistemas eletrônicos de monitoramento e vigilância que utilizam câmeras de circuitos fechados de televisão, instalados nas dependências do órgão e entidade, bem como as gravações resultantes do mesmo. Quanto à instalação, conservação e reparo dos equipamentos, classificar no código 034. Quanto à contratação de empresa terceirizada para execução de serviços de guarda e segurança patrimonial, classificar no código 045.4.','046.2 0462 Incluem-se documentos referentes ao funcionamento de sistemas eletrônicos de monitoramento e vigilancia que utilizam cameras de circuitos fechados de televisao instalados nas dependencias do orgao e entidade bem como as gravacoes resultantes do mesmo. Quanto a instalacao conservacao e reparo dos equipamentos classificar no codigo 034. Quanto a contratacao de empresa terceirizada para execucao de servicos de guarda e seguranca patrimonial classificar no codigo 045.4.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.3','OCORRÊNCIA DE SINISTROS','Incluem-se documentos referentes às vistorias, sindicâncias e perícias técnicas relativas ao arrombamento, incêndio, explosão, vandalismo e danos causados por intempéries (raio, vendaval e granizo) em imóveis do órgão e entidade. Quanto ao extravio, roubo, desaparecimento, furto e avaria de material permanente e de consumo, classificar no código 033.6. Quanto à ocorrência de sinistros em veículos do órgão e entidade, classificar no código 044.3. Quanto ao controle das áreas de armazenamento, classificar no código 064.2.','046.3 0463 Incluem-se documentos referentes as vistorias sindicancias e pericias tecnicas relativas ao arrombamento incendio explosao vandalismo e danos causados por intemperies (raio vendaval e granizo) em imoveis do orgao e entidade. Quanto ao extravio roubo desaparecimento furto e avaria de material permanente e de consumo classificar no codigo 033.6. Quanto a ocorrencia de sinistros em veiculos do orgao e entidade classificar no codigo 044.3. Quanto ao controle das areas de armazenamento classificar no codigo 064.2.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'046.4','CONTROLE DE PORTARIA','Incluem-se documentos referentes ao controle de entrada e saída de pessoas, materiais, veículos, visitantes e prestadores de serviço, à permissão para entrada e permanência fora do horário de expediente, ao controle de entrega e devolução de chaves e ao registro de ocorrências. Quanto ao controle de uso de veículos, classificar no código 044.4. Quanto à utilização de estacionamento e garagem, do órgão e entidade, por veículos oficiais e por veículos dos servidores, classificar no código 044.5.','046.4 0464 Incluem-se documentos referentes ao controle de entrada e saida de pessoas materiais veiculos visitantes e prestadores de servico a permissao para entrada e permanencia fora do horario de expediente ao controle de entrega e devolucao de chaves e ao registro de ocorrencias. Quanto ao controle de uso de veiculos classificar no codigo 044.4. Quanto a utilizacao de estacionamento e garagem do orgao e entidade por veiculos oficiais e por veiculos dos servidores classificar no codigo 044.5.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'047','CONTROLE DE BENS PATRIMONIAIS','Nas subdivisões deste descritor classificam-se documentos referentes ao acompanhamento e ao controle de bens patrimoniais, que subsidiam a elaboração dos inventários.','047 047 Nas subdivisoes deste descritor classificam-se documentos referentes ao acompanhamento e ao controle de bens patrimoniais, que subsidiam a elaboracao dos inventarios.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'047.01','COMISSÃO DE INVENTÁRIO','Incluem-se os documentos referentes à constituição das comissões de inventário, bem como aqueles referentes à definição dos procedimentos para a realização dos mesmos.','047.01 04701 Incluem-se os documentos referentes a constituicao das comissoes de inventario bem como aqueles referentes a definicao dos procedimentos para a realizacao dos mesmos.','S',NULL,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'047.1','INVENTÁRIO DE BENS IMÓVEIS','Incluem-se documentos referentes ao levantamento da situação dos imóveis que se encontram em uso e à verificação da disponibilidade dos imóveis do órgão e entidade, bem como aqueles referentes à emissão de relatórios.','047.1 0471 Incluem-se documentos referentes ao levantamento da situacao dos imoveis que se encontram em uso e a verificacao da disponibilidade dos imoveis do orgao e entidade bem como aqueles referentes a emissao de relatorios.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'047.2','INVENTÁRIO DE VEÍCULOS','Incluem-se documentos referentes ao levantamento da situação dos veículos que se encontram em uso e à verificação da disponibilidade dos veículos do órgão e entidade, bem como aqueles referentes à emissão de relatórios.','047.2 0472 Incluem-se documentos referentes ao levantamento da situacao dos veiculos que se encontram em uso e a verificacao da disponibilidade dos veiculos do orgao e entidade bem como aqueles referentes a emissao de relatorios.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'047.3','INVENTÁRIO DE BENS SEMOVENTES','Incluem-se documentos referentes ao levantamento dos animais que se encontram em uso e à verificação da disponibilidade dos animais do órgão e entidade, bem como aqueles referentes à emissão de relatórios.','047.3 0473 Incluem-se documentos referentes ao levantamento dos animais que se encontram em uso e a verificacao da disponibilidade dos animais do orgao e entidade bem como aqueles referentes a emissao de relatorios.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'049','OUTRAS AÇÕES REFERENTES À GESTÃO DE BENS PATRIMONIAIS E DE SERVIÇOS','Nas subdivisões deste grupo classificam-se documentos referentes a outras ações de gestão de bens patrimoniais não contempladas nos descritores anteriores.','049 049 Nas subdivisoes deste grupo classificam-se documentos referentes a outras acoes de gestao de bens patrimoniais nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'049.1','RACIONALIZAÇÃO DO USO DE BENS E SERVIÇOS','Nas subdivisões deste descritor classificam-se documentos referentes à criação, designação, gestão, divulgação e resultados da atuação de grupos de estudo e de comissões de racionalização do uso dos bens patrimoniais e dos serviços públicos essenciais, como redução de uso de veículo oficial e a economia de água e de energia elétrica.','049.1 0491 Nas subdivisoes deste descritor classificam-se documentos referentes a criacao designacao gestao divulgacao e resultados da atuacao de grupos de estudo e de comissoes de racionalizacao do uso dos bens patrimoniais e dos servicos publicos essenciais como reducao de uso de veiculo oficial e a economia de agua e de energia eletrica.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'049.11','CRIAÇÃO E ATUAÇÃO DE GRUPOS DE TRABALHO','Incluem-se documentos referentes à criação de grupos de trabalho e comissões de racionalização do uso de bens e serviços, aos registros das deliberações e às tomadas de decisão definidas nas reuniões, tais como: ato de instituição, regras para atuação, designação e substituição de membros, resoluções, atas e relatórios.','049.11 04911 Incluem-se documentos referentes a criacao de grupos de trabalho e comissoes de racionalizacao do uso de bens e servicos aos registros das deliberacoes e as tomadas de decisao definidas nas reunioes tais como: ato de instituicao regras para atuacao designacao e substituicao de membros resolucoes atas e relatorios.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'049.12','OPERACIONALIZAÇÃO DE REUNIÕES','Incluem-se documentos referentes à organização das reuniões dos grupos de trabalhos e das comissões de racionalização do uso de bens e serviços, bem como os referentes ao agendamento, convocação, pauta e lista de participantes.','049.12 04912 Incluem-se documentos referentes a organizacao das reunioes dos grupos de trabalhos e das comissoes de racionalizacao do uso de bens e servicos bem como os referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'050','GESTÃO ORÇAMENTÁRIA E FINANCEIRA','Esta subclasse contempla documentos referentes às atividades de programação e elaboração do orçamento, à gestão e execução orçamentária e financeira, às operações bancárias e ao controle externo das atividades financeiras do órgão e entidade.','050 050 Esta subclasse contempla documentos referentes as atividades de programacao e elaboracao do orcamento a gestao e execucao orcamentaria e financeira as operacoes bancarias e ao controle externo das atividades financeiras do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'050.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão do orçamento e das finanças do órgão e entidade.','050.01 05001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao do orcamento e das financas do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'050.02','CONFORMIDADE DE REGISTRO DE GESTÃO','Incluem-se documentos referentes à conformidade diária e à conformidade de suporte documental, bem como aqueles que comprovam e dão suporte às operações registradas. Quanto à consolidação dos registros contábeis, classificar em 052.23.','050.02 05002 Incluem-se documentos referentes a conformidade diaria e a conformidade de suporte documental bem como aqueles que comprovam e dao suporte as operacoes registradas. Quanto a consolidacao dos registros contabeis classificar em 052.23.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'050.03','CONFORMIDADE CONTÁBIL','Incluem-se documentos referentes aos demonstrativos contábeis decorrentes dos registros da execução orçamentária, financeira e patrimonial, gerados por meio dos sistemas de administração financeira da administração pública. Quanto à consolidação dos registros contábeis, classificar em 052.23.','050.03 05003 Incluem-se documentos referentes aos demonstrativos contabeis decorrentes dos registros da execucao orcamentaria financeira e patrimonial gerados por meio dos sistemas de administracao financeira da administracao publica. Quanto a consolidacao dos registros contabeis classificar em 052.23.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'051','GESTÃO ORÇAMENTÁRIA','Nas subdivisões deste descritor classificam-se os documentos referentes às atividades de programação, gestão e execução do orçamento do órgão e entidade.','051 051 Nas subdivisoes deste descritor classificam-se os documentos referentes as atividades de programacao gestao e execucao do orcamento do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'051.1','PROGRAMAÇÃO ORÇAMENTÁRIA','Incluem-se documentos referentes à elaboração do orçamento, como a programação, a previsão e a proposta orçamentária, os estudos de adequação da estrutura programática, a atualização e o aperfeiçoamento das informações constantes do cadastro de ações orçamentárias, a fixação dos referenciais monetários para apresentação das propostas orçamentárias e dos limites de movimentação, de empenho e de pagamento das unidades administrativas do órgão e entidade.','051.1 0511 Incluem-se documentos referentes a elaboracao do orcamento como a programacao a previsao e a proposta orcamentaria os estudos de adequacao da estrutura programatica a atualizacao e o aperfeicoamento das informacoes constantes do cadastro de acoes orcamentarias a fixacao dos referenciais monetarios para apresentacao das propostas orcamentarias e dos limites de movimentacao de empenho e de pagamento das unidades administrativas do orgao e entidade.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'051.2','DETALHAMENTO DE DESPESA','Incluem-se documentos referentes ao estabelecimento das metas e à destinação de recursos e receitas por fontes, bem como o detalhamento, a nível operacional, dos projetos e atividades a serem desenvolvidas no exercício, especificando os elementos de despesa e respectivos desdobramentos.','051.2 0512 Incluem-se documentos referentes ao estabelecimento das metas e a destinacao de recursos e receitas por fontes bem como o detalhamento a nivel operacional dos projetos e atividades a serem desenvolvidas no exercicio especificando os elementos de despesa e respectivos desdobramentos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'051.3','EXECUÇÃO ORÇAMENTÁRIA','Incluem-se documentos referentes à movimentação, interna e externa, e à descentralização de créditos orçamentários pelo órgão e entidade, bem como as transferências, provisões, destaques, estornos e subvenções.','051.3 0513 Incluem-se documentos referentes a movimentacao interna e externa e a descentralizacao de creditos orcamentarios pelo orgao e entidade bem como as transferencias provisoes destaques estornos e subvencoes.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'051.4','RETIFICAÇÃO ORÇAMENTÁRIA. CRÉDITOS ADICIONAIS','Incluem-se documentos referentes às autorizações de despesas não computadas, ou insuficientemente dotadas, na lei orçamentária, por meio da liberação de créditos suplementares, especiais e extraordinários.','051.4 0514 Incluem-se documentos referentes as autorizacoes de despesas nao computadas ou insuficientemente dotadas na lei orcamentaria por meio da liberacao de creditos suplementares especiais e extraordinarios.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052','GESTÃO FINANCEIRA','Nas subdivisões deste descritor classificam-se documentos referentes às atividades de programação, gestão e execução financeira do órgão e entidade, bem como aqueles referentes ao controle da efetiva entrada e saída de recursos do órgão e entidade.','052 052 Nas subdivisoes deste descritor classificam-se documentos referentes as atividades de programacao gestao e execucao financeira do orgao e entidade bem como aqueles referentes ao controle da efetiva entrada e saida de recursos do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.1','PROGRAMAÇÃO FINANCEIRA','Incluem-se documentos referentes à programação da entrada e da saída de recursos financeiros, à previsão da utilização dos recursos destinados a determinados fins e à operacionalização de gastos específicos visando a realização das atividades e projetos atribuídos às unidades orçamentárias, bem como aqueles referentes ao contingenciamento do orçamento do órgão e entidade.','052.1 0521 Incluem-se documentos referentes a programacao da entrada e da saida de recursos financeiros a previsao da utilizacao dos recursos destinados a determinados fins e a operacionalizacao de gastos especificos visando a realizacao das atividades e projetos atribuidos as unidades orcamentarias bem como aqueles referentes ao contingenciamento do orcamento do orgao e entidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.2','EXECUÇÃO FINANCEIRA','Nas subdivisões deste descritor classificam-se documentos referentes ao controle da entrada e saída de recursos financeiros do órgão e entidade.','052.2 0522 Nas subdivisoes deste descritor classificam-se documentos referentes ao controle da entrada e saida de recursos financeiros do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.21','RECEITA','Nas subdivisões deste descritor classificam-se documentos referentes aos ingressos de recursos nos cofres da administração pública, que se desdobram em receitas orçamentárias, quando representam disponibilidades de recursos financeiros para o erário, e em ingressos extraorçamentários, quando representam entradas compensatórias.','052.21 05221 Nas subdivisoes deste descritor classificam-se documentos referentes aos ingressos de recursos nos cofres da administracao publica, que se desdobram em receitas orcamentarias, quando representam disponibilidades de recursos financeiros para o erario, e em ingressos extraorcamentarios, quando representam entradas compensatorias.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.211','RECEITA CORRENTE','Incluem-se documentos referentes às receitas provenientes de tributos, de contribuições, da exploração do patrimônio estatal (patrimonial), da exploração de atividades econômicas (agropecuária, industrial e de serviços) e de recursos financeiros recebidos de outras pessoas de direito público ou privado destinados a atender as despesas correntes do órgão e entidade. Quanto ao estabelecimento de preços e tarifas pela prestação de serviços por parte do órgão e entidade, classificar no código 059.3. Quanto à devolução ao erário, classificar no código 059.4. Quanto à restituição de rendas arrecadadas, classificar no código 059.5.','052.211 052211 Incluem-se documentos referentes as receitas provenientes de tributos de contribuicoes da exploracao do patrimônio estatal (patrimonial) da exploracao de atividades econômicas (agropecuaria industrial e de servicos) e de recursos financeiros recebidos de outras pessoas de direito publico ou privado destinados a atender as despesas correntes do orgao e entidade. Quanto ao estabelecimento de precos e tarifas pela prestacao de servicos por parte do orgao e entidade classificar no codigo 059.3. Quanto a devolucao ao erario classificar no codigo 059.4. Quanto a restituicao de rendas arrecadadas classificar no codigo 059.5.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.212','RECEITA DE CAPITAL','Incluem-se documentos referentes às receitas provenientes de recursos financeiros oriundos da constituição de dívidas, da conversão, em espécie, de bens e direitos, da venda de ações e do recebimento de recursos de outras pessoas de direito público ou privado destinadas a atender despesas de capital e ao superávit do orçamento corrente. Quanto à compra e subscrição de ações, classificar no código 059.1.','052.212 052212 Incluem-se documentos referentes as receitas provenientes de recursos financeiros oriundos da constituicao de dividas da conversao em especie de bens e direitos da venda de acoes e do recebimento de recursos de outras pessoas de direito publico ou privado destinadas a atender despesas de capital e ao superavit do orcamento corrente. Quanto a compra e subscricao de acoes classificar no codigo 059.1.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.213','INGRESSO EXTRAORÇAMENTÁRIO','Incluem-se documentos referentes aos recursos financeiros de caráter temporário, que não estão previstos na lei orçamentária anual, como os depósitos em caução, as fianças, a antecipação de receita orçamentária, a emissão de moeda e as entradas compensatórias no ativo e passivo financeiro.','052.213 052213 Incluem-se documentos referentes aos recursos financeiros de carater temporario, que nao estao previstos na lei orcamentaria anual, como os depositos em caucao, as fiancas, a antecipacao de receita orcamentaria, a emissao de moeda e as entradas compensatorias no ativo e passivo financeiro.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.22','DESPESA','Nas subdivisões deste descritor classificam-se documentos referentes à utilização de recursos, fixados e especificados na Lei Orçamentária Anual (LOA), para pagamento das despesas efetuadas pelo órgão e entidade.','052.22 05222 Nas subdivisoes deste descritor classificam-se documentos referentes a utilizacao de recursos fixados e especificados na Lei Orcamentaria Anual (LOA) para pagamento das despesas efetuadas pelo orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.221','DESPESA CORRENTE','Incluem-se documentos referentes à utilização dos recursos provenientes das dotações orçamentárias ordinárias destinadas à manutenção contínua dos serviços públicos, como as despesas de custeio reservadas ao pagamento de pessoal (ativos, inativos, pensionistas, civis e militares) e dos encargos sociais, bem como aqueles referentes às transferências correntes relacionadas às contribuições e subvenções que atendem à manifestação de outras entidades de direito público ou privado, entre elas as transferências de assistência e previdência social e os pagamentos dos juros e encargos da dívida pública. Quanto às despesas decorrentes da compra de material de consumo, classificar no código 031.12. Quanto às despesas decorrentes da contratação de empresas terceirizadas para a prestação de serviços, classificar nos códigos 018, 034, 045.1, 045.2, 045.4, 045.5, 045.6, 045.7, 067, 071 e 918, de acordo com o objeto da contratação.','052.221 052221 Incluem-se documentos referentes a utilizacao dos recursos provenientes das dotacoes orcamentarias ordinarias destinadas a manutencao continua dos servicos publicos como as despesas de custeio reservadas ao pagamento de pessoal (ativos inativos pensionistas civis e militares) e dos encargos sociais bem como aqueles referentes as transferencias correntes relacionadas as contribuicoes e subvencoes que atendem a manifestacao de outras entidades de direito publico ou privado entre elas as transferencias de assistencia e previdencia social e os pagamentos dos juros e encargos da divida publica. Quanto as despesas decorrentes da compra de material de consumo classificar no codigo 031.12. Quanto as despesas decorrentes da contratacao de empresas terceirizadas para a prestacao de servicos classificar nos codigos 018 034 045.1 045.2 045.4 045.5 045.6 045.7 067 071 e 918 de acordo com o objeto da contratacao.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.222','DESPESA DE CAPITAL','Incluem-se documentos referentes à utilização dos recursos provenientes das dotações orçamentárias ordinárias destinadas aos investimentos, às inversões financeiras e à amortização da dívida interna e externa. Quanto às despesas decorrentes da compra de material permanente, classificar no código 031.11. Quanto às despesas decorrentes da compra de bens imóveis, classificar no código 041.11. Quanto às despesas decorrentes da contratação de empresas terceirizadas para a execução de obras em bens imóveis do órgão e entidade, classificar nas subdivisões do código 045.3.','052.222 052222 Incluem-se documentos referentes a utilizacao dos recursos provenientes das dotacoes orcamentarias ordinarias destinadas aos investimentos as inversoes financeiras e a amortizacao da divida interna e externa. Quanto as despesas decorrentes da compra de material permanente classificar no codigo 031.11. Quanto as despesas decorrentes da compra de bens imoveis classificar no codigo 041.11. Quanto as despesas decorrentes da contratacao de empresas terceirizadas para a execucao de obras em bens imoveis do orgao e entidade classificar nas subdivisoes do codigo 045.3.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.23','DEMONSTRAÇÃO CONTÁBIL','Incluem-se os documentos referentes à consolidação dos registros contábeis, tais como: livro-razão, balanço patrimonial, balanço orçamentário, balanço financeiro, demonstração das variações patrimoniais, demonstrações dos fluxos de caixa, demonstração das mutações do patrimônio líquido, demonstração do resultado econômico e balancetes. Quanto à conformidade de registro de gestão, classificar no código 050.02. Quanto à conformidade contábil, classificar no código 050.03.','052.23 05223 Incluem-se os documentos referentes a consolidacao dos registros contabeis tais como: livro-razao balanco patrimonial balanco orcamentario balanco financeiro demonstracao das variacoes patrimoniais demonstracoes dos fluxos de caixa demonstracao das mutacoes do patrimônio liquido demonstracao do resultado econômico e balancetes. Quanto a conformidade de registro de gestao classificar no codigo 050.02. Quanto a conformidade contabil classificar no codigo 050.03.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.24','GESTÃO DE FUNDOS ESPECIAIS','Incluem-se documentos referentes à administração de receitas específicas vinculadas por lei à realização de determinados objetivos ou serviços.','052.24 05224 Incluem-se documentos referentes a administracao de receitas especificas vinculadas por lei a realizacao de determinados objetivos ou servicos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.25','GERENCIAMENTO DE BENEFÍCIOS, ESTÍMULOS E INCENTIVOS','Nas subdivisões deste descritor classificam-se documentos referentes aos benefícios, estímulos e incentivos concedidos ao órgão e entidade.','052.25 05225 Nas subdivisoes deste descritor classificam-se documentos referentes aos beneficios, estimulos e incentivos concedidos ao orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.251','FINANCEIROS','Incluem-se documentos referentes aos desembolsos efetivos realizados por meio das equalizações de juros e preços, bem como aqueles referentes à assunção das dívidas decorrentes de saldos de obrigações de responsabilidade do Tesouro Nacional, cujos valores constam da lei orçamentária da União.','052.251 052251 Incluem-se documentos referentes aos desembolsos efetivos realizados por meio das equalizacoes de juros e precos bem como aqueles referentes a assuncao das dividas decorrentes de saldos de obrigacoes de responsabilidade do Tesouro Nacional cujos valores constam da lei orcamentaria da Uniao.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'052.252','CREDITÍCIOS','Incluem-se documentos referentes aos subsídios, incentivos fiscais e investimentos destinados ao financiamento de atividades produtivas e voltados ao desenvolvimento econômico regional e social, bem como aqueles referentes aos gastos decorrentes de programas oficiais de crédito, operacionalizados por meio de fundos ou programas com taxa de juros inferior ao custo de captação do governo federal.','052.252 052252 Incluem-se documentos referentes aos subsidios, incentivos fiscais e investimentos destinados ao financiamento de atividades produtivas e voltados ao desenvolvimento econômico regional e social, bem como aqueles referentes aos gastos decorrentes de programas oficiais de credito, operacionalizados por meio de fundos ou programas com taxa de juros inferior ao custo de captacao do governo federal.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053','OPERAÇÃO BANCÁRIA','Nas subdivisões deste descritor classificam-se documentos referentes às operações de conciliação bancária, aos pagamentos em moeda estrangeira e à movimentação de conta única do Tesouro Nacional e de outras contas correntes. Quanto à Conta-Depósito Vinculada - bloqueada para movimentação (instrumento de gestão de risco para as contratações de prestação de serviços continuados), classificar no código 018.1.','053 053 Nas subdivisoes deste descritor classificam-se documentos referentes as operacoes de conciliacao bancaria aos pagamentos em moeda estrangeira e a movimentacao de conta unica do Tesouro Nacional e de outras contas correntes. Quanto a Conta-Deposito Vinculada - bloqueada para movimentacao (instrumento de gestao de risco para as contratacoes de prestacao de servicos continuados) classificar no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053.01','CONCILIAÇÃO BANCÁRIA','Incluem-se documentos referentes às conciliações das contas correntes e contábeis, com o controle financeiro interno do órgão e entidade.','053.01 05301 Incluem-se documentos referentes as conciliacoes das contas correntes e contabeis com o controle financeiro interno do orgao e entidade.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053.1','PAGAMENTO EM MOEDA ESTRANGEIRA','Incluem-se documentos referentes aos pagamentos em moedas diferentes da moeda nacional.','053.1 0531 Incluem-se documentos referentes aos pagamentos em moedas diferentes da moeda nacional.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053.2','GESTÃO DA CONTA ÚNICA','Incluem-se documentos referentes à transferência de recursos recebidos na rede bancária para a conta única, com os créditos das respectivas unidades gestoras, bem como aqueles referentes às assinaturas autorizadas, às ordens bancárias e aos extratos de contas.','053.2 0532 Incluem-se documentos referentes a transferencia de recursos recebidos na rede bancaria para a conta unica com os creditos das respectivas unidades gestoras bem como aqueles referentes as assinaturas autorizadas as ordens bancarias e aos extratos de contas.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053.3','GESTÃO DE CONTAS CORRENTES BANCÁRIAS: TIPO A, B, C, D e E','Incluem-se documentos referentes à abertura, movimentação e encerramento das contas correntes, bem como aqueles referentes às assinaturas autorizadas, às ordens bancárias e aos extratos de contas.','053.3 0533 Incluem-se documentos referentes a abertura movimentacao e encerramento das contas correntes bem como aqueles referentes as assinaturas autorizadas as ordens bancarias e aos extratos de contas.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'053.4','GESTÃO DE CONTAS ESPECIAIS','Incluem-se documentos referentes à movimentação dos recursos advindos de empréstimos e créditos externos.','053.4 0534 Incluem-se documentos referentes a movimentacao dos recursos advindos de emprestimos e creditos externos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'054','CONTROLE EXTERNO. AUDITORIA EXTERNA','Nas subdivisões deste descritor classificam-se documentos referentes às auditorias de contas do órgão e entidade, realizadas pelos órgãos de controle externo. Quanto ao controle interno e à auditoria interna, classificar no código 003.1.','054 054 Nas subdivisoes deste descritor classificam-se documentos referentes as auditorias de contas do orgao e entidade realizadas pelos orgaos de controle externo. Quanto ao controle interno e a auditoria interna classificar no codigo 003.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'054.1','PRESTAÇÃO DE CONTAS. TOMADA DE CONTAS','Incluem-se documentos referentes à prestação e à tomada de contas realizadas em razão da solicitação do órgão responsável pela auditoria das contas da administração pública, bem como os relatórios, pareceres e certificados de julgamento das contas.','054.1 0541 Incluem-se documentos referentes a prestacao e a tomada de contas realizadas em razao da solicitacao do orgao responsavel pela auditoria das contas da administracao publica bem como os relatorios pareceres e certificados de julgamento das contas.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'054.2','TOMADA DE CONTAS ESPECIAL','Incluem-se documentos referentes à instauração de tomada de contas especial pelo órgão responsável pela auditoria das contas da administração pública, bem como os relatórios, pareceres e certificados de julgamento das contas.','054.2 0542 Incluem-se documentos referentes a instauracao de tomada de contas especial pelo orgao responsavel pela auditoria das contas da administracao publica bem como os relatorios pareceres e certificados de julgamento das contas.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059','OUTRAS AÇÕES REFERENTES À GESTÃO ORÇAMENTÁRIA E FINANCEIRA','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de gestão orçamentária e financeira não contempladas nos descritores anteriores.','059 059 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de gestao orcamentaria e financeira nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059.1','COMPRA E SUBSCRIÇÃO DE AÇÕES','Incluem-se documentos referentes à compra e ao direito de subscrever ações das sociedades de economia mista. Quanto à venda de ações, classificar no código 052.212.','059.1 0591 Incluem-se documentos referentes a compra e ao direito de subscrever acoes das sociedades de economia mista. Quanto a venda de acoes classificar no codigo 052.212.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059.2','RECOLHIMENTO DE IMPOSTOS, TAXAS E DEMAIS TRIBUTOS','Incluem-se documentos referentes ao pagamento de impostos, taxas e demais tributos pelo órgão e entidade, tais como: taxa de incêndio, contribuição de melhoria, imposto predial e territorial urbano. Quanto ao pagamento dos encargos patronais e recolhimentos efetuados pelo empregador, classificar nas subdivisões do código 023.18. Quanto ao pagamento das despesas condominiais dos bens imóveis, classificar no código 043.2.','059.2 0592 Incluem-se documentos referentes ao pagamento de impostos, taxas e demais tributos pelo orgao e entidade, tais como: taxa de incendio, contribuicao de melhoria, imposto predial e territorial urbano. Quanto ao pagamento dos encargos patronais e recolhimentos efetuados pelo empregador, classificar nas subdivisoes do codigo 023.18. Quanto ao pagamento das despesas condominiais dos bens imoveis, classificar no codigo 043.2.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059.3','FIXAÇÃO DE CUSTOS DE SERVIÇOS','Incluem-se documentos referentes ao estabelecimento de preços e tarifas pela prestação de serviços por parte do órgão e entidade. Quanto ao recebimento de recursos financeiros recebidos da prestação de serviços por parte do órgão e entidade, classificar no código 052.211.','059.3 0593 Incluem-se documentos referentes ao estabelecimento de precos e tarifas pela prestacao de servicos por parte do orgao e entidade. Quanto ao recebimento de recursos financeiros recebidos da prestacao de servicos por parte do orgao e entidade, classificar no codigo 052.211.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059.4','DEVOLUÇÃO AO ERÁRIO','Incluem-se documentos referentes à restituição ao Erário de valores percebidos indevidamente pelo servidor. Quanto aos pedidos de retificação de pagamento feitos pelo servidor, classificar no código 023.191. Quanto à receita corrente, classificar no código 052.211.','059.4 0594 Incluem-se documentos referentes a restituicao ao Erario de valores percebidos indevidamente pelo servidor. Quanto aos pedidos de retificacao de pagamento feitos pelo servidor classificar no codigo 023.191. Quanto a receita corrente classificar no codigo 052.211.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'059.5','RESTITUIÇÃO DE RENDAS ARRECADADAS','Incluem-se documentos referentes à solicitação de restituição, total ou parcial, ao cidadão, de receitas recolhidas a maior ou indevidamente, por meio de Guia de Recolhimento da União (GRU). Quanto à receita corrente, classificar no código 052.211.','059.5 0595 Incluem-se documentos referentes a solicitacao de restituicao total ou parcial ao cidadao de receitas recolhidas a maior ou indevidamente por meio de Guia de Recolhimento da Uniao (GRU). Quanto a receita corrente classificar no codigo 052.211.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'060','GESTÃO DA DOCUMENTAÇÃO E DA INFORMAÇÃO','Esta subclasse contempla documentos referentes à produção, controle, classificação, avaliação, destinação e tratamento técnico da documentação arquivística, à aquisição, processamento técnico, controle, distribuição e acesso aos acervos bibliográfico e museológico, bem como aqueles referentes à conservação e preservação de acervos, à produção editorial e à gestão de sistemas e de infraestrutura tecnológica do órgão e entidade.','060 060 Esta subclasse contempla documentos referentes a producao controle classificacao avaliacao destinacao e tratamento tecnico da documentacao arquivistica a aquisicao processamento tecnico controle distribuicao e acesso aos acervos bibliografico e museologico bem como aqueles referentes a conservacao e preservacao de acervos a producao editorial e a gestao de sistemas e de infraestrutura tecnologica do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'060.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão da documentação e da informação do órgão e entidade.','060.01 06001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao da documentacao e da informacao do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061','GESTÃO DE DOCUMENTOS DE ARQUIVO','Nas subdivisões desse descritor classificam-se documentos referentes à elaboração e implantação de programas de gestão da documentação arquivística.','061 061 Nas subdivisoes desse descritor classificam-se documentos referentes a elaboracao e implantacao de programas de gestao da documentacao arquivistica.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.01','CONSTITUIÇÃO DA COMISSÃO PERMANENTE DE AVALIAÇÃO DE DOCUMENTOS (CPAD)','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos para a constituição e atuação da comissão.','061.01 06101 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos para a constituicao e atuacao da comissao.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.011','COMPOSIÇÃO E ATUAÇÃO','Incluem-se documentos referentes à constituição da CPAD, à indicação, designação e substituição de membros e à instalação e posse da comissão, bem como aqueles referentes ao registro das deliberações e às tomadas de decisões, resoluções, atas e relatórios.','061.011 061011 Incluem-se documentos referentes a constituicao da CPAD a indicacao designacao e substituicao de membros e a instalacao e posse da comissao bem como aqueles referentes ao registro das deliberacoes e as tomadas de decisoes resolucoes atas e relatorios.','S',5,4,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.012','OPERACIONALIZAÇÃO DE REUNIÕES','Incluem-se documentos referentes à organização das reuniões da CPAD, bem como aqueles referentes ao agendamento, convocação, pauta e lista de participantes.','061.012 061012 Incluem-se documentos referentes a organizacao das reunioes da CPAD bem como aqueles referentes ao agendamento convocacao pauta e lista de participantes.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.1','ADOÇÃO E CONTROLE DOS PROCEDIMENTOS DE PROTOCOLO','Incluem-se documentos referentes ao controle da entrada, da distribuição, da movimentação e da expedição de documentos, bem como aqueles referentes aos procedimentos para autuação dos documentos avulsos.','061.1 0611 Incluem-se documentos referentes ao controle da entrada, da distribuicao, da movimentacao e da expedicao de documentos, bem como aqueles referentes aos procedimentos para autuacao dos documentos avulsos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.2','ANÁLISE DA SITUAÇÃO ARQUIVÍSTICA','Incluem-se documentos referentes à realização de diagnóstico da situação dos serviços de gestão de documentos de arquivo do órgão e entidade.','061.2 0612 Incluem-se documentos referentes a realizacao de diagnostico da situacao dos servicos de gestao de documentos de arquivo do orgao e entidade.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.3','LEVANTAMENTO DA PRODUÇÃO E DO FLUXO DOCUMENTAL','Incluem-se documentos referentes ao estudo e ao levantamento da produção e do fluxo documental para subsidiar a elaboração dos instrumentos técnicos de gestão de documentos.','061.3 0613 Incluem-se documentos referentes ao estudo e ao levantamento da producao e do fluxo documental para subsidiar a elaboracao dos instrumentos tecnicos de gestao de documentos.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.4','ELABORAÇÃO DOS INSTRUMENTOS TÉCNICOS DE GESTÃO DE DOCUMENTOS','Incluem-se documentos referentes à elaboração do código de classificação e da tabela de temporalidade e destinação de documentos de arquivo relativos às atividades-fim do órgão e entidade.','061.4 0614 Incluem-se documentos referentes a elaboracao do codigo de classificacao e da tabela de temporalidade e destinacao de documentos de arquivo relativos as atividades-fim do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.5','APLICAÇÃO DOS INSTRUMENTOS TÉCNICOS DE GESTÃO DE DOCUMENTOS','Nas subdivisões deste descritor classificam-se documentos referentes à aplicação do código de classificação e da tabela de temporalidade e destinação de documentos de arquivo relativos às atividades-meio e atividades-fim do órgão e entidade.','061.5 0615 Nas subdivisoes deste descritor classificam-se documentos referentes a aplicacao do codigo de classificacao e da tabela de temporalidade e destinacao de documentos de arquivo relativos as atividades-meio e atividades-fim do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.51','CLASSIFICAÇÃO','Incluem-se documentos referentes aos procedimentos para aplicação dos códigos de classificação de documentos de arquivo relativos às atividades-meio e atividades-fim do órgão e entidade, bem como aqueles referentes à metodologia utilizada para a ordenação dos documentos.','061.51 06151 Incluem-se documentos referentes aos procedimentos para aplicacao dos codigos de classificacao de documentos de arquivo relativos as atividades-meio e atividades-fim do orgao e entidade bem como aqueles referentes a metodologia utilizada para a ordenacao dos documentos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.52','AVALIAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos para aplicação dos prazos de guarda e da destinação final definidos nas tabelas de temporalidade e destinação de documentos de arquivo relativas às atividades-meio e atividades-fim do órgão e entidade, bem como aqueles referentes à metodologia utilizada para a seleção dos documentos.','061.52 06152 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos para aplicacao dos prazos de guarda e da destinacao final definidos nas tabelas de temporalidade e destinacao de documentos de arquivo relativas as atividades-meio e atividades-fim do orgao e entidade bem como aqueles referentes a metodologia utilizada para a selecao dos documentos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.521','ELIMINAÇÃO','Incluem-se documentos referentes aos procedimentos para análise e seleção de documentos de arquivo, bem  como aqueles referentes à elaboração de listagens de eliminação, de planos de destinação, de editais de ciência de eliminação e de termos de eliminação.','061.521 061521 Incluem-se documentos referentes aos procedimentos para analise e selecao de documentos de arquivo bem  como aqueles referentes a elaboracao de listagens de eliminacao de planos de destinacao de editais de ciencia de eliminacao e de termos de eliminacao.','S',NULL,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.522','TRANSFERÊNCIA','Incluem-se documentos referentes aos procedimentos para controle da passagem de documentos do arquivo corrente (arquivos setoriais) para o arquivo intermediário (arquivo central ou geral), tais como: listagem descritiva do acervo, guia e termo de transferência.','061.522 061522 Incluem-se documentos referentes aos procedimentos para controle da passagem de documentos do arquivo corrente (arquivos setoriais) para o arquivo intermediario (arquivo central ou geral), tais como: listagem descritiva do acervo, guia e termo de transferencia.','S',NULL,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'061.523','RECOLHIMENTO','Incluem-se documentos referentes aos procedimentos para controle da passagem de documentos do arquivo intermediário para o arquivo permanente, tais como: listagem descritiva do acervo, guia e termo de recolhimento.','061.523 061523 Incluem-se documentos referentes aos procedimentos para controle da passagem de documentos do arquivo intermediario para o arquivo permanente, tais como: listagem descritiva do acervo, guia e termo de recolhimento.','S',NULL,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062','GESTÃO DE ACERVOS BIBLIOGRÁFICO E MUSEOLÓGICO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição, incorporação, processamento técnico, inventário e desincorporação de acervos bibliográfico e museológico.','062 062 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao incorporacao processamento tecnico inventario e desincorporacao de acervos bibliografico e museologico.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.1','AQUISIÇÃO E INCORPORAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à aquisição, no Brasil e exterior, e à incorporação de acervos bibliográfico e museológico pelo órgão e entidade.','062.1 0621 Nas subdivisoes deste descritor classificam-se documentos referentes a aquisicao no Brasil e exterior e a incorporacao de acervos bibliografico e museologico pelo orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.11','COMPRA','Incluem-se documentos referentes à aquisição definitiva de acervos bibliográfico e museológico por compra e por importação, bem como aqueles referentes à assinatura de periódicos e de bases de dados. Nota: A compra poderá ocorrer nas modalidades de licitação, dispensa de licitação e inexigibilidade de licitação.','062.11 06211 Incluem-se documentos referentes a aquisicao definitiva de acervos bibliografico e museologico por compra e por importacao bem como aqueles referentes a assinatura de periodicos e de bases de dados. Nota: A compra podera ocorrer nas modalidades de licitacao dispensa de licitacao e inexigibilidade de licitacao.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.12','DOAÇÃO','Incluem-se documentos referentes à aquisição definitiva de acervos bibliográfico e museológico por doação. Quanto à doação da produção editorial do órgão e entidade, classificar no código 065.3.','062.12 06212 Incluem-se documentos referentes a aquisicao definitiva de acervos bibliografico e museologico por doacao. Quanto a doacao da producao editorial do orgao e entidade classificar no codigo 065.3.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.13','PERMUTA','Incluem-se documentos referentes à aquisição definitiva de acervos bibliográfico e museológico por permuta. Quanto à permuta da produção editorial do órgão e entidade, classificar no código 065.3 ','062.13 06213 Incluem-se documentos referentes a aquisicao definitiva de acervos bibliografico e museologico por permuta. Quanto a permuta da producao editorial do orgao e entidade classificar no codigo 065.3 ','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.2','PROCESSAMENTO TÉCNICO','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos adotados para o tratamento técnico de acervos bibliográfico e museológico do órgão e entidade.','062.2 0622 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos adotados para o tratamento tecnico de acervos bibliografico e museologico do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.21','REGISTRO','Incluem-se documentos referentes ao registro de entrada do item bibliográfico ou museológico incorporado aos acervos.','062.21 06221 Incluem-se documentos referentes ao registro de entrada do item bibliografico ou museologico incorporado aos acervos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.22','CATALOGAÇÃO, CLASSIFICAÇÃO E INDEXAÇÃO','Incluem-se documentos referentes à identificação, classificação e descrição do item bibliográfico ou museológico, cujas informações subsidiarão a elaboração das fichas catalográficas.','062.22 06222 Incluem-se documentos referentes a identificacao classificacao e descricao do item bibliografico ou museologico cujas informacoes subsidiarao a elaboracao das fichas catalograficas.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.3','INVENTÁRIO','Incluem-se documentos referentes ao controle de itens dos acervos bibliográfico e museológico que visam apoiar as atividades de alienação, desincorporação e baixa, bem como os relatórios de inventário e os livros de tombo. Quanto aos inventários de material permanente e de consumo, classificar nos códigos 036.1 e 036.2, respectivamente.','062.3 0623 Incluem-se documentos referentes ao controle de itens dos acervos bibliografico e museologico que visam apoiar as atividades de alienacao, desincorporacao e baixa, bem como os relatorios de inventario e os livros de tombo. Quanto aos inventarios de material permanente e de consumo, classificar nos codigos 036.1 e 036.2, respectivamente.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.4','DESINCORPORAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes à desincorporação definitiva de itens dos acervos bibliográfico e museológico pelo órgão e entidade.','062.4 0624 Nas subdivisoes deste descritor classificam-se documentos referentes a desincorporacao definitiva de itens dos acervos bibliografico e museologico pelo orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.41','DOAÇÃO','Incluem-se documentos referentes à doação de itens de acervos bibliográfico e museológico considerados inadequados e obsoletos, bem como daqueles que possuem vários exemplares.','062.41 06241 Incluem-se documentos referentes a doacao de itens de acervos bibliografico e museologico considerados inadequados e obsoletos bem como daqueles que possuem varios exemplares.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'062.42','DESCARTE','Incluem-se documentos referentes ao descarte de itens dos acervos bibliográfico e museológico que se encontram infectados, deteriorados e mutilados.','062.42 06242 Incluem-se documentos referentes ao descarte de itens dos acervos bibliografico e museologico que se encontram infectados, deteriorados e mutilados.','S',5,4,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'063','CONTROLE DE ACESSO E DE MOVIMENTAÇÃO DE ACERVOS','Nas subdivisões deste descritor classificam-se documentos referentes ao acesso, às consultas e aos empréstimos de documentos arquivísticos, bibliográficos e museológicos, bem como aqueles referentes ao controle da movimentação dos acervos.','063 063 Nas subdivisoes deste descritor classificam-se documentos referentes ao acesso as consultas e aos emprestimos de documentos arquivisticos bibliograficos e museologicos bem como aqueles referentes ao controle da movimentacao dos acervos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'063.1','CONSULTAS','Incluem-se documentos referentes ao acesso e ao controle das consultas aos documentos arquivísticos, bibliográficos e museológicos, bem como aqueles referentes ao registro dos consulentes e usuários. Quanto aos pedidos de acesso à informação e aos documentos institucionais, encaminhados ao SIC, classificar no código 002.11.','063.1 0631 Incluem-se documentos referentes ao acesso e ao controle das consultas aos documentos arquivisticos bibliograficos e museologicos bem como aqueles referentes ao registro dos consulentes e usuarios. Quanto aos pedidos de acesso a informacao e aos documentos institucionais encaminhados ao SIC classificar no codigo 002.11.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'063.2','EMPRÉSTIMOS','Incluem-se documentos referentes ao controle dos empréstimos de documentos arquivísticos, bibliográficos e museológicos.','063.2 0632 Incluem-se documentos referentes ao controle dos emprestimos de documentos arquivisticos, bibliograficos e museologicos.','S',1,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'063.3','MOVIMENTAÇÃO DE ACERVOS','Incluem-se documentos referentes à gestão de depósitos e ao controle da localização e da movimentação dos documentos arquivísticos, bibliográficos e museológicos entre as áreas de armazenamento e as áreas destinadas às consultas.','063.3 0633 Incluem-se documentos referentes a gestao de depositos e ao controle da localizacao e da movimentacao dos documentos arquivisticos bibliograficos e museologicos entre as areas de armazenamento e as areas destinadas as consultas.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'063.4','MUDANÇA DE ACERVOS','Incluem-se documentos referentes ao controle da mudança de acervos arquivísticos, bibliográficos e museológicos, distinta da movimentação de acervos, motivado pela necessidade de mudança de imóvel ou dentro do mesmo imóvel.','063.4 0634 Incluem-se documentos referentes ao controle da mudanca de acervos arquivisticos, bibliograficos e museologicos, distinta da movimentacao de acervos, motivado pela necessidade de mudanca de imovel ou dentro do mesmo imovel.','S',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064','CONSERVAÇÃO E PRESERVAÇÃO DE ACERVOS','Nas subdivisões deste descritor classificam-se documentos referentes à desinfestação, higienização e controle das áreas de armazenamento, à encadernação e à reformatação e restauração dos documentos.','064 064 Nas subdivisoes deste descritor classificam-se documentos referentes a desinfestacao higienizacao e controle das areas de armazenamento a encadernacao e a reformatacao e restauracao dos documentos.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.01','AVALIAÇÃO E MONITORAMENTO','Incluem-se documentos referentes à elaboração de diagnósticos, relatórios e pareceres técnicos sobre as condições de conservação e preservação de acervos e fichas de registro do tratamento adotado para a restauração ou encadernação de documentos, bem como aqueles referentes ao plano de prevenção de riscos e à definição dos critérios adotados para a reformatação de acervos.','064.01 06401 Incluem-se documentos referentes a elaboracao de diagnosticos relatorios e pareceres tecnicos sobre as condicoes de conservacao e preservacao de acervos e fichas de registro do tratamento adotado para a restauracao ou encadernacao de documentos bem como aqueles referentes ao plano de prevencao de riscos e a definicao dos criterios adotados para a reformatacao de acervos.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.1','DESINFESTAÇÃO E HIGIENIZAÇÃO','Incluem-se documentos referentes aos procedimentos para desinfestação e higienização das áreas de armazenamento de acervos.','064.1 0641 Incluem-se documentos referentes aos procedimentos para desinfestacao e higienizacao das areas de armazenamento de acervos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.2','CONTROLE DAS ÁREAS DE ARMAZENAMENTO','Incluem-se documentos referentes aos procedimentos para controle da climatização e da segurança dos depósitos de guarda. Quanto à ocorrência de sinistros em imóveis do órgão e entidade, classificar no código 046.3.','064.2 0642 Incluem-se documentos referentes aos procedimentos para controle da climatizacao e da seguranca dos depositos de guarda. Quanto a ocorrencia de sinistros em imoveis do orgao e entidade classificar no codigo 046.3.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.3','REFORMATAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes aos procedimentos para a adoção da reformatação de acervos. Quanto ao fornecimento de cópias de documentos, classificar no código 069.2.','064.3 0643 Nas subdivisoes deste descritor classificam-se documentos referentes aos procedimentos para a adocao da reformatacao de acervos. Quanto ao fornecimento de copias de documentos, classificar no codigo 069.2.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.31','MICROFILMAGEM','Incluem-se documentos referentes aos procedimentos adotados para microfilmagem de documentos.','064.31 06431 Incluem-se documentos referentes aos procedimentos adotados para microfilmagem de documentos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.32','DIGITALIZAÇÃO','Incluem-se documentos referentes aos procedimentos adotados para digitalização de documentos.','064.32 06432 Incluem-se documentos referentes aos procedimentos adotados para digitalizacao de documentos.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'064.4','RESTAURAÇÃO','Incluem-se documentos referentes aos procedimentos adotados para realização de restauração de documentos deteriorados ou danificados, bem como aqueles referentes aos serviços de encadernação.','064.4 0644 Incluem-se documentos referentes aos procedimentos adotados para realizacao de restauracao de documentos deteriorados ou danificados, bem como aqueles referentes aos servicos de encadernacao.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'065','PRODUÇÃO EDITORIAL','Nas subdivisões deste descritor classificam-se documentos referentes aos projetos de produção editorial do órgão e entidade.','065 065 Nas subdivisoes deste descritor classificam-se documentos referentes aos projetos de producao editorial do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'065.1','EDIÇÃO. COEDIÇÃO','Incluem-se documentos referentes à edição e à coedição de livros, periódicos e vídeos produzidos pelo órgão e entidade, bem como aqueles referentes às autorizações de direitos autorais e à solicitação do registro internacional para identificação de livros (ISBN) e do registro internacional para identificação de publicações seriadas (ISSN).','065.1 0651 Incluem-se documentos referentes a edicao e a coedicao de livros periodicos e videos produzidos pelo orgao e entidade bem como aqueles referentes as autorizacoes de direitos autorais e a solicitacao do registro internacional para identificacao de livros (ISBN) e do registro internacional para identificacao de publicacoes seriadas (ISSN).','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'065.2','EDITORAÇÃO E PROGRAMAÇÃO VISUAL','Incluem-se documentos referentes à edição de livros, periódicos e vídeos, à composição, copidesque, tradução e revisão de textos e à execução de impressão e serviços gráficos, bem como aqueles referentes à elaboração de page views.','065.2 0652 Incluem-se documentos referentes a edicao de livros periodicos e videos a composicao copidesque traducao e revisao de textos e a execucao de impressao e servicos graficos bem como aqueles referentes a elaboracao de page views.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'065.3','PROMOÇÃO, DIVULGAÇÃO E DISTRIBUIÇÃO','Incluem-se documentos referentes à promoção, à divulgação, à doação e à permuta da produção editorial do órgão e entidade. Quanto à aquisição de acervos bibliográficos por doação e permuta, classificar nos códigos 062.12 e 062.13, respectivamente.','065.3 0653 Incluem-se documentos referentes a promocao a divulgacao a doacao e a permuta da producao editorial do orgao e entidade. Quanto a aquisicao de acervos bibliograficos por doacao e permuta classificar nos codigos 062.12 e 062.13 respectivamente.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066','GESTÃO DE TECNOLOGIA DA INFORMAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes ao desenvolvimento de programas, instalação de equipamentos, implantação e controle de sistemas informatizados, bem como aqueles referentes à administração da infraestrutura tecnológica.','066 066 Nas subdivisoes deste descritor classificam-se documentos referentes ao desenvolvimento de programas instalacao de equipamentos implantacao e controle de sistemas informatizados bem como aqueles referentes a administracao da infraestrutura tecnologica.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.1','DESENVOLVIMENTO E CONTROLE DE SISTEMAS INFORMATIZADOS','Incluem-se documentos referentes ao desenvolvimento, implantação, manutenção e controle de programas e sistemas informatizados, tais como: manual de usuário desenvolvido pelo órgão e entidade, código fonte, especificação de requisitos, diagramas, desenhos de telas, gerência de configuração e projetos de bancos de dados.','066.1 0661 Incluem-se documentos referentes ao desenvolvimento, implantacao, manutencao e controle de programas e sistemas informatizados, tais como: manual de usuario desenvolvido pelo orgao e entidade, codigo fonte, especificacao de requisitos, diagramas, desenhos de telas, gerencia de configuracao e projetos de bancos de dados.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.2','INSTALAÇÃO DE EQUIPAMENTOS','Incluem-se documentos referentes à instalação de equipamentos para a implementação de programas e sistemas, tais como: manual dos equipamentos, termo de garantia, manual de usuário desenvolvido pela empresa proprietária do equipamento, licença e registro de uso.','066.2 0662 Incluem-se documentos referentes a instalacao de equipamentos para a implementacao de programas e sistemas tais como: manual dos equipamentos termo de garantia manual de usuario desenvolvido pela empresa proprietaria do equipamento licenca e registro de uso.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.3','ADMINISTRAÇÃO DA INFRAESTRUTURA TECNOLÓGICA','Nas subdivisões deste descritor classificam-se documentos referentes ao desenvolvimento do projeto de infraestrutura tecnológica, bem como aqueles referentes à manutenção, gerenciamento e uso da infraestrutura.','066.3 0663 Nas subdivisoes deste descritor classificam-se documentos referentes ao desenvolvimento do projeto de infraestrutura tecnologica bem como aqueles referentes a manutencao gerenciamento e uso da infraestrutura.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.31','PROJETO DE MANUTENÇÃO','Incluem-se documentos referentes ao projeto de manutenção da infraestrutura tecnológica, tais como: projeto da rede e configuração dos servidores.','066.31 06631 Incluem-se documentos referentes ao projeto de manutencao da infraestrutura tecnologica, tais como: projeto da rede e configuracao dos servidores.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.32','GERENCIAMENTO E USO','Incluem-se documentos referentes ao gerenciamento e ao uso da infraestrutura tecnológica, tais como: gerenciamento de discos, registro e controle das permissões de acesso a rede, credenciais de segurança, gerenciamento de correio eletrônico, relatórios de desempenho, log de dados e controle de backup.','066.32 06632 Incluem-se documentos referentes ao gerenciamento e ao uso da infraestrutura tecnologica, tais como: gerenciamento de discos, registro e controle das permissoes de acesso a rede, credenciais de seguranca, gerenciamento de correio eletrônico, relatorios de desempenho, log de dados e controle de backup.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.4','ADMINISTRAÇÃO DE BANCO DE DADOS','Nas subdivisões deste descritor classificam-se documentos referentes à instalação, configuração e gerenciamento de banco de dados.','066.4 0664 Nas subdivisoes deste descritor classificam-se documentos referentes a instalacao configuracao e gerenciamento de banco de dados.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.41','INSTALAÇÃO E CONFIGURAÇÃO','Incluem-se documentos referentes à instalação e configuração de banco de dados, estrutura, dicionário de dados, script de criação e stored procedures.','066.41 06641 Incluem-se documentos referentes a instalacao e configuracao de banco de dados estrutura dicionario de dados script de criacao e stored procedures.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.42','GERENCIAMENTO E USO','Incluem-se documentos referentes ao gerenciamento de banco de dados, tais como: registro e controle das permissões de acesso ao banco de dados e relatórios de desempenho.','066.42 06642 Incluem-se documentos referentes ao gerenciamento de banco de dados, tais como: registro e controle das permissoes de acesso ao banco de dados e relatorios de desempenho.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.9','OUTRAS AÇÕES REFERENTES À GESTÃO DE TECNOLOGIA DA INFORMAÇÃO','Na subdivisão deste descritor classificam-se documentos referentes a outras ações de gestão de tecnologia da informação não contempladas nos descritores anteriores.','066.9 0669 Na subdivisao deste descritor classificam-se documentos referentes a outras acoes de gestao de tecnologia da informacao nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'066.91','CONTROLE DO SUPORTE TÉCNICO','Incluem-se documentos referentes ao controle do suporte técnico prestado para utilização dos sistemas informatizados. Quanto a contratação de prestação de serviços por empresas terceirizadas para a gestão de sistemas e de infraestrutura tecnológica, classificar no código 018.1.','066.91 06691 Incluem-se documentos referentes ao controle do suporte tecnico prestado para utilizacao dos sistemas informatizados. Quanto a contratacao de prestacao de servicos por empresas terceirizadas para a gestao de sistemas e de infraestrutura tecnologica, classificar no codigo 018.1.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'067','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','067 067 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069','OUTRAS AÇÕES REFERENTES À GESTÃO DA DOCUMENTAÇÃO E DA INFORMAÇÃO','Nas subdivisões deste descritor classificam-se documentos referentes a outras ações de gestão da documentação e da informação não contempladas nos descritores anteriores.','069 069 Nas subdivisoes deste descritor classificam-se documentos referentes a outras acoes de gestao da documentacao e da informacao nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069.1','TRATAMENTO TÉCNICO DA DOCUMENTAÇÃO ARQUIVÍSTICA PERMANENTE','Nas subdivisões deste descritor classificam-se documentos referentes ao tratamento técnico da documentação arquivística de guarda permanente.','069.1 0691 Nas subdivisoes deste descritor classificam-se documentos referentes ao tratamento tecnico da documentacao arquivistica de guarda permanente.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069.11','ARRANJO E DESCRIÇÃO','Incluem-se documentos referentes à metodologia adotada para o desenvolvimento das atividades de identificação, arranjo e descrição dos documentos arquivísticos de guarda permanente.','069.11 06911 Incluem-se documentos referentes a metodologia adotada para o desenvolvimento das atividades de identificacao arranjo e descricao dos documentos arquivisticos de guarda permanente.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069.12','ELABORAÇÃO DE INSTRUMENTOS DE PESQUISA','Incluem-se documentos referentes à elaboração dos instrumentos que permitem a identificação e a localização dos documentos arquivísticos de guarda permanente, tais como: catálogo, guia, inventário, listagem descritiva do acervo, repertório e tabela de equivalência.','069.12 06912 Incluem-se documentos referentes a elaboracao dos instrumentos que permitem a identificacao e a localizacao dos documentos arquivisticos de guarda permanente tais como: catalogo guia inventario listagem descritiva do acervo repertorio e tabela de equivalencia.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069.2','FORNECIMENTO DE CÓPIAS DE DOCUMENTOS','Incluem-se documentos referentes à requisição e ao controle da reprodução de documentos por impressão e por outros serviços reprográficos. Quanto à reformatação de acervos por microfilmagem e digitalização, classificar nas subdivisões do código 064.3.','069.2 0692 Incluem-se documentos referentes a requisicao e ao controle da reproducao de documentos por impressao e por outros servicos reprograficos. Quanto a reformatacao de acervos por microfilmagem e digitalizacao classificar nas subdivisoes do codigo 064.3.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'069.3','PUBLICAÇÃO DE MATÉRIAS','Incluem-se documentos referentes à publicação de matérias, da competência do órgão e entidade, em diários oficiais, em periódicos de grande circulação e em boletins internos e similares. Quanto aos boletins administrativos e de serviço, classificar no código 010.01. Quanto aos boletins de pessoal, classificar no código 020.01.','069.3 0693 Incluem-se documentos referentes a publicacao de materias da competencia do orgao e entidade em diarios oficiais em periodicos de grande circulacao e em boletins internos e similares. Quanto aos boletins administrativos e de servico classificar no codigo 010.01. Quanto aos boletins de pessoal classificar no codigo 020.01.','S',5,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'070','GESTÃO DOS SERVIÇOS POSTAIS E DE TELECOMUNICAÇÕES','Esta subclasse contempla documentos referentes às atividades desenvolvidas pelo órgão e entidade para a gestão dos serviços postais e de telecomunicações (radiofrequência, telex, telefonia, fax e transmissão de dados, voz e imagem), bem como aqueles referentes à contratação de prestação de serviços de instalação, manutenção e reparo e à autorização e controle de uso.','070 070 Esta subclasse contempla documentos referentes as atividades desenvolvidas pelo orgao e entidade para a gestao dos servicos postais e de telecomunicacoes (radiofrequencia telex telefonia fax e transmissao de dados voz e imagem) bem como aqueles referentes a contratacao de prestacao de servicos de instalacao manutencao e reparo e a autorizacao e controle de uso.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'070.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão dos serviços postais e de telecomunicações do órgão e entidade.','070.01 07001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao dos servicos postais e de telecomunicacoes do orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Os descritores 071.1, 071.2, 071.3, 071.4 e 071.5 foram suprimidos em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071 071 Os descritores 071.1 071.2 071.3 071.4 e 071.5 foram suprimidos em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071.1','SERVIÇO POSTAL','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071.1 0711 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071.2','SERVIÇO DE RADIOFREQUÊNCIA','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071.2 0712 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071.3','SERVIÇO DE TELEX','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071.3 0713 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071.4','SERVIÇO DE TELEFONIA. SERVIÇO DE FAX','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071.4 0714 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'071.5','SERVIÇO DE TRANSMISSÃO DE DADOS, VOZ E IMAGEM','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1.','071.5 0715 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'072','EXECUÇÃO DE SERVIÇOS PELO ÓRGÃO E ENTIDADE','Incluem-se documentos referentes à instalação, manutenção e reparo dos serviços de telecomunicações, executados com meios próprios pelo órgão e entidade, não gerando contratação de empresas terceirizadas ou pagamento de despesas.','072 072 Incluem-se documentos referentes a instalacao manutencao e reparo dos servicos de telecomunicacoes executados com meios proprios pelo orgao e entidade nao gerando contratacao de empresas terceirizadas ou pagamento de despesas.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073','AUTORIZAÇÃO E CONTROLE DE USO','Nas subdivisões deste descritor classificam-se documentos referentes à autorização e controle de uso dos serviços de radiofrequência, de telex, de telefonia, de fax e de transmissão de dados, voz e imagem.','073 073 Nas subdivisoes deste descritor classificam-se documentos referentes a autorizacao e controle de uso dos servicos de radiofrequencia de telex de telefonia de fax e de transmissao de dados voz e imagem.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.1','SERVIÇO DE RADIOFREQUÊNCIA','Incluem-se documentos referentes à autorização e ao controle do uso dos serviços de radiofrequência.','073.1 0731 Incluem-se documentos referentes a autorizacao e ao controle do uso dos servicos de radiofrequencia.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.2','SERVIÇO DE TELEX','Incluem-se documentos referentes à autorização e ao controle do uso dos serviços de telex.','073.2 0732 Incluem-se documentos referentes a autorizacao e ao controle do uso dos servicos de telex.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.3','SERVIÇO DE TELEFONIA. SERVIÇO DE FAX','Nas subdivisões desse descritor classificam-se os documentos referentes à autorização e ao controle da utilização dos serviços de telefonia e de fax.','073.3 0733 Nas subdivisoes desse descritor classificam-se os documentos referentes a autorizacao e ao controle da utilizacao dos servicos de telefonia e de fax.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.31','TRANSFERÊNCIA DE PROPRIEDADE OU TITULARIDADE','Incluem-se documentos referentes à transferência de propriedade ou titularidade das linhas telefônicas e dos serviços telefônicos fixo ou móvel.','073.31 07331 Incluem-se documentos referentes a transferencia de propriedade ou titularidade das linhas telefônicas e dos servicos telefônicos fixo ou movel.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.32','REGISTRO DE LIGAÇÕES','Incluem-se documentos referentes à autorização e ao controle das ligações interurbanas, internacionais e de telefonia móvel.','073.32 07332 Incluem-se documentos referentes a autorizacao e ao controle das ligacoes interurbanas internacionais e de telefonia movel.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.33','DIVULGAÇÃO DE LISTAS TELEFÔNICAS INTERNAS','Incluem-se as listagens de servidores e unidades administrativas, com os respectivos ramais internos, elaboradas com o objetivo de facilitar e agilizar a comunicação interna no órgão e entidade.','073.33 07333 Incluem-se as listagens de servidores e unidades administrativas, com os respectivos ramais internos, elaboradas com o objetivo de facilitar e agilizar a comunicacao interna no orgao e entidade.','S',NULL,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'073.4','SERVIÇO DE TRANSMISSÃO DE DADOS, VOZ E IMAGEM','Incluem-se documentos referentes à autorização e ao controle do uso dos serviços de acesso à internet, assinatura de televisão e videoconferência.','073.4 0734 Incluem-se documentos referentes a autorizacao e ao controle do uso dos servicos de acesso a internet assinatura de televisao e videoconferencia.','S',NULL,2,'E','N',@idtabelaatual);




INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080','PESSOAL MILITAR - ver anexo 1','Aprovada pela Resolução n. 21, de 4 de agosto de 2004, do Conselho Nacional de Arquivos   (Conarq).','080 080 Aprovada pela Resolucao n. 21, de 4 de agosto de 2004, do Conselho Nacional de Arquivos   (Conarq).','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.1','LEGISLAÇÃO (normas; avisos; portarias de caráter geral; boletins administrativo, de pessoal e de serviço; diretrizes; procedimentos; pareceres; estudos e/ou decisões de caráter geral)','É opcional a reprodução dos documentos previamente ao recolhimento, para que o órgão permaneça com cópias para consulta.','080.1 0801 legislacao normas; avisos; portarias de carater geral; boletins administrativo de pessoal e de servico; diretrizes; procedimentos; pareceres; estudos e ou decisoes de carater geral e opcional a reproducao dos documentos previamente ao recolhimento para que o orgao permaneca com copias para consulta','N',5,1,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.2','IDENTIFICAÇÃO MILITAR','Na subdivisão deste descritor classificam-se documentos referentes a outras ações de gestão de eventos não contempladas nos descritores anteriores.','080.2 0802 identificacao militar na subdivisao deste descritor classificam-se documentos referentes a outras acoes de gestao de eventos nao contempladas nos descritores anteriores','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.21','IDENTIDADE MILITAR. CARTEIRA. CARTÃO',NULL,'080.21 08021 identidade militar carteira cartao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.21.a','FICHA DE IDENTIDADE GRANDE, FICHA INDIVIDUAL DATILOSCÓPICA, CARTÃO ÍNDICE, FICHA DE DADOS CADASTRAIS','O prazo total de guarda dos documentos é de 130 anos, independente do suporte.  Condicional "Enquanto o militar permanecer na ativa" convencionado para 1 ano no corrente. Serão transferidos ao arquivo intermediário após a transferência do militar para a reserva.','080.21.a 08021a ficha de identidade grande ficha individual datiloscopica cartao indice ficha de dados cadastrais o prazo total de guarda dos documentos e de 130 anos independente do suporte condicional enquanto o militar permanecer na ativa convencionado para 1 ano no corrente serao transferidos ao arquivo intermediario apos a transferencia do militar para a reserva','N',129,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.21.b','GUIA DE REMESSA DE MATERIAL DE IDENTIFICAÇÃO, MAPA MENSAL DO MATERIAL TÉCNICO',NULL,'080.21.b 08021b guia de remessa de material de identificacao mapa mensal do material tecnico','N',5,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.21.c','IDENTIDADE PROVISÓRIA','Condicional "Enquanto vigora" convencionada para 1 ano no corrente, a contar da perda da validade do documento.','080.21.c 08021c identidade provisoria condicional enquanto vigora convencionada para 1 ano no corrente a contar da perda da validade do documento','N',1,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.22','CONCESSÃO DE PASSAPORTE: DIPLOMÁTICO E/OU OFICIAL','Condicional "Enquanto vigora" convencionada para 1 ano no corrente, a contar da perda da validade do documento.','080.22 08022 concessao de passaporte: diplomatico e ou oficial condicional enquanto vigora convencionada para 1 ano no corrente a contar da perda da validade do documento','N',1,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.3','ASSENTAMENTOS INDIVIDUAIS.CADASTRO (Incluem-se ficha de apresentação; ficha padrão Pasep e ficha de código de especialidade, bem como os documentos referentes à contagem de tempo de serviço e à concessão e cessação de porte de arma)',NULL,'080.3 0803 assentamentos individuaiscadastro incluem-se ficha de apresentacao; ficha padrao pasep e ficha de codigo de especialidade bem como os documentos referentes a contagem de tempo de servico e a concessao e cessacao de porte de arma','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.3.a','FOLHAS DE ALTERAÇÕES, CADERNETA REGISTRO CADASTRO, CADERNETA SANITÁRIA, DECLARAÇÃO/CADASTRO DE DEPENDENTES, FICHA INDIVIDUAL, DECLARAÇÃO/ALTERAÇÃO DE BENEFICIÁRIOS, TERMO DE OPÇÃO OU DE RETIFICAÇÃO DA LICENÇA ESPECIAL, TERMO DE RENÚNCIA DE PENSÃO','A Comissão Permanente de Avaliação de Documentos, findo o prazo total de guarda, poderá determinar a preservação de alguns conjuntos documentais de relevância para a Força.  Condicional "Enquanto o militar permanecer na ativa" convencionada para 1 ano no corrente, a contar da transferência do militar para a reserva.','080.3.a 0803a folhas de alteracoes caderneta registro cadastro caderneta sanitaria declaracao cadastro de dependentes ficha individual declaracao alteracao de beneficiarios termo de opcao ou de retificacao da licenca especial termo de renuncia de pensao a comissao permanente de avaliacao de documentos findo o prazo total de guarda podera determinar a preservacao de alguns conjuntos documentais de relevancia para a forca condicional enquanto o militar permanecer na ativa convencionada para 1 ano no corrente a contar da transferencia do militar para a reserva','N',130,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'080.3.b','FICHA DE APRESENTAÇÃO, CONTAGEM DE TEMPO DE SERVIÇO, FICHA PADRÃO PASEP, FICHA DE CÓDIGO DE ESPECIALIDADE, CONCESSÃO E CESSAÇÃO DE PORTE DE ARMA','Condicional "Enquanto o militar permanecer na ativa" convencionada para 1 ano no corrente, a contar da transferência do militar para a reserva.','080.3.b 0803b ficha de apresentacao contagem de tempo de servico ficha padrao pasep ficha de codigo de especialidade concessao e cessacao de porte de arma condicional enquanto o militar permanecer na ativa convencionada para 1 ano no corrente a contar da transferencia do militar para a reserva','N',5,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081','INGRESSO NAS FORÇAS ARMADAS','Nas subdivisões deste descritor classificam-se os documentos referentes à promoção de visitas culturais, educativas e técnicas ao órgão e entidade.','081 081 ingresso nas forcas armadas nas subdivisoes deste descritor classificam-se os documentos referentes a promocao de visitas culturais educativas e tecnicas ao orgao e entidade','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.1','RECRUTAMENTO. SELEÇÃO: INSCRIÇÃO PARA CONCURSO, CRONOGRAMA DE REALIZAÇÃO DE PROVAS, CONTROLE DE APLICAÇÃO DAS PROVAS',NULL,'081.1 0811 recrutamento selecao: inscricao para concurso cronograma de realizacao de provas controle de aplicacao das provas','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.1.a','EDITAL DE CONCURSOS E ORIENTAÇÕES ESPECÍFICAS. MATERIAL DE DIVULGAÇÃO*, RELATÓRIOS E ATAS DOS PROCESSOS SELETIVOS, PROVAS ESCRITAS, PRÁTICAS E ORAIS*, GABARITOS*, INSTRUÇÕES COMPLEMENTARES DE CONVOCAÇÃO E DE SISTEMA DE SERVIÇO MILITAR','* Exemplares únicos.','081.1.a 0811a edital de concursos e orientacoes especificas material de divulgacao relatorios e atas dos processos seletivos provas escritas praticas e orais gabaritos instrucoes complementares de convocacao e de sistema de servico militar exemplares unicos','N',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.1.b','SELEÇÃO E DESIGNAÇÃO, NOMEAÇÃO E TERMO DE COMPROMISSO DE BANCA, LISTA DE CANDIDATOS, QUESTIONÁRIO BIOGRÁFICO SIMPLIFICADO, CARTÕES RESPOSTAS, TESTES, PROVAS DE TÍTULO, RESULTADOS, RELAÇÃO DOS APROVADOS, RECURSOS, SELEÇÃO INGRESSO NA CARREIRA MILITAR','Seleção e designação para incorporação e matrícula, nomeação e termo de compromisso de banca de provas, lista de candidatos, questionário biográfico simplificado, cartões respostas de testes ou provas do candidato, testes, provas de título, resultados das provas, relação dos candidatos aprovados, recursos, seleção para ingresso na carreira militar.','081.1.b 0811b selecao e designacao nomeacao e termo de compromisso de banca lista de candidatos questionario biografico simplificado cartoes respostas testes provas de titulo resultados relacao dos aprovados recursos selecao ingresso na carreira militar selecao e designacao para incorporacao e matricula nomeacao e termo de compromisso de banca de provas lista de candidatos questionario biografico simplificado cartoes respostas de testes ou provas do candidato testes provas de titulo resultados das provas relacao dos candidatos aprovados recursos selecao para ingresso na carreira militar','N',25,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.2','INCORPORAÇÃO',NULL,'081.2 0812 incorporacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.2.a','ATOS DE CONVOCAÇÃO À INCORPORAÇÃO, ALISTAMENTOS, ESTÁGIOS, DISPENSA OU ISENÇÃO DO SERVIÇO MILITAR, CONVOCAÇÃO À INCORPORAÇÃO PARA PRESTAR SERVIÇO MILITAR OBRIGATÓRIO (SERVIÇO MILITAR INICIAL OU OUTRAS FORMAS POSTERIORES)',NULL,'081.2.a 0812a atos de convocacao a incorporacao alistamentos estagios dispensa ou isencao do servico militar convocacao a incorporacao para prestar servico militar obrigatorio servico militar inicial ou outras formas posteriores','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.3','MATRÍCULA',NULL,'081.3 0813 matricula','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.3.a','ADMISSÃO EM ESCOLAS, CENTROS E CURSOS DE FORMAÇÃO',NULL,'081.3.a 0813a admissao em escolas centros e cursos de formacao','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.4','NOMEAÇÃO',NULL,'081.4 0814 nomeacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.4.a','INGRESSO NOS CORPOS E/OU QUADROS DE CARREIRA DE OFICIAIS, NOS POSTOS INICIAIS OU NOS CORPOS/QUADROS DE OFICIAIS DA RESERVA',NULL,'081.4.a 0814a ingresso nos corpos e ou quadros de carreira de oficiais nos postos iniciais ou nos corpos quadros de oficiais da reserva','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.5','EXERCÍCIOS DE MOBILIZAÇÃO / APRESENTAÇÃO',NULL,'081.5 0815 exercicios de mobilizacao apresentacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.5.a','CAMPANHAS DE CONVOCAÇÃO, MAPAS DE ENCARGOS DE MOBILIZAÇÃO, RELATÓRIOS SOBRE O EXERCÍCIO DE APRESENTAÇÃO DA RESERVA, CONTROLE DE EFETIVO DE MILITARES TEMPORÁRIOS (MÉDICOS, FARMACÊUTICOS, DENTISTAS, VETERINÁRIOS), TIROS DE GUERRA',NULL,'081.5.a 0815a campanhas de convocacao mapas de encargos de mobilizacao relatorios sobre o exercicio de apresentacao da reserva controle de efetivo de militares temporarios medicos farmaceuticos dentistas veterinarios tiros de guerra','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'081.9','OUTROS ASSUNTOS REFERENTES A INGRESSO NAS FORÇAS ARMADAS','Nas subdivisões deste descritor classificam-se documentos referentes às comunicações ocasionais e genéricas efetuadas pelo órgão e entidade no relacionamento com outras instituições públicas e privadas e que não dizem respeito ao desenvolvimento de suas atividades específicas.','081.9 0819 outros assuntos referentes a ingresso nas forcas armadas nas subdivisoes deste descritor classificam-se documentos referentes as comunicacoes ocasionais e genericas efetuadas pelo orgao e entidade no relacionamento com outras instituicoes publicas e privadas e que nao dizem respeito ao desenvolvimento de suas atividades especificas','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082','PLANO DE CARREIRA','Nas subdivisões deste descritor classificam-se documentos referentes à promoção, elaboração e execução de programas de capacitação, desenvolvimento e valorização do servidor.','082 082 plano de carreira nas subdivisoes deste descritor classificam-se documentos referentes a promocao elaboracao e execucao de programas de capacitacao desenvolvimento e valorizacao do servidor','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.1','PROMOÇÃO',NULL,'082.1 0821 promocao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.1.a','ANTIGUIDADE, POSICIONAMENTO E COGITAÇÃO/INCLUSÃO QUADRO DE ACESSO, FAIXA DE COGITAÇÃO, LISTA DE ESCOLHA, ATO, RESSARCIMENTO/RECONSIDERAÇÃO, RECONTAGEM DE PONTOS, CORREÇÃO, RETIFICAÇÃO, MÉRITOS, INQUÉRITOS, PROMOÇÃO POST-MORTEM E POR MOTIVO DE JUSTIÇA','Antiguidade, posicionamento e cogitação/inclusão no quadro de acesso, faixa de cogitação, lista de escolha, ato de promoção, ressarcimento/reconsideração, recontagem de pontos, correção, retificação, méritos relativos, informações sobre a existência de inquéritos e ações judiciais envolvendo os avaliados, promoção post-mortem e por motivo de justiça.  Condicional "Enquanto o militar permanecer na ativa" convencionada para 1 ano no corrente, a contar da transferência do militar para a reserva.','082.1.a 0821a antiguidade posicionamento e cogitacao inclusao quadro de acesso faixa de cogitacao lista de escolha ato ressarcimento reconsideracao recontagem de pontos correcao retificacao meritos inqueritos promocao post-mortem e por motivo de justica antiguidade posicionamento e cogitacao inclusao no quadro de acesso faixa de cogitacao lista de escolha ato de promocao ressarcimento reconsideracao recontagem de pontos correcao retificacao meritos relativos informacoes sobre a existencia de inqueritos e acoes judiciais envolvendo os avaliados promocao post-mortem e por motivo de justica condicional enquanto o militar permanecer na ativa convencionada para 1 ano no corrente a contar da transferencia do militar para a reserva','N',130,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.2','CURSOS','Nas subdivisões deste descritor classificam-se documentos referentes ao desenvolvimento de programas, instalação de equipamentos, implantação e controle de sistemas informatizados, bem como aqueles referentes à administração da infraestrutura tecnológica.','082.2 0822 cursos nas subdivisoes deste descritor classificam-se documentos referentes ao desenvolvimento de programas instalacao de equipamentos implantacao e controle de sistemas informatizados bem como aqueles referentes a administracao da infraestrutura tecnologica','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.21','FORMAÇÃO. ADAPTAÇÃO',NULL,'082.21 08221 formacao adaptacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.21.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CONCURSOS',NULL,'082.21.a 08221a designacao matricula conclusao cancelamento trancamento e ou desligamento dos concursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.22','APERFEIÇOAMENTO.ESPECIALIZAÇÃO',NULL,'082.22 08222 aperfeicoamentoespecializacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.22.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.22.a 08222a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.23','ESTADO-MAIOR',NULL,'082.23 08223 estado-maior','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.23.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.23.a 08223a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.24','ALTOS ESTUDOS MILITARES',NULL,'082.24 08224 altos estudos militares','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.24.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.24.a 08224a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.3','AVALIAÇÃO',NULL,'082.3 0823 avaliacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.3.a','FICHAS/FOLHAS DE AVALIAÇÃO',NULL,'082.3.a 0823a fichas folhas de avaliacao','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.4','REQUISITOS ESPECÍFICOS DE CARREIRA',NULL,'082.4 0824 requisitos especificos de carreira','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.4.a','MANOBRA, TEMPO DE TROPA, TEMPO DE EMBARQUE, VIVÊNCIA NACIONAL, DIAS DE MAR, ATIVIDADE BÉLICA, HORAS DE VOO',NULL,'082.4.a 0824a manobra tempo de tropa tempo de embarque vivencia nacional dias de mar atividade belica horas de voo','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.5','CURSOS COMPLEMENTARES',NULL,'082.5 0825 cursos complementares','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.51','ADESTRAMENTO',NULL,'082.51 08251 adestramento','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.51.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS DIVERSOS TIPOS DE ADESTRAMENTO',NULL,'082.51.a 08251a designacao matricula conclusao cancelamento trancamento e ou desligamento dos diversos tipos de adestramento','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.52','PÓS-GRADUAÇÃO LATO SENSU',NULL,'082.52 08252 pos-graduacao lato sensu','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.52.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.52.a 08252a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.53','QUALIFICAÇÃO TÉCNICA ESPECIAL',NULL,'082.53 08253 qualificacao tecnica especial','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.53.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.53.a 08253a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.54','PÓS-GRADUAÇÃO STRICTO SENSU',NULL,'082.54 08254 pos-graduacao stricto sensu','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.54.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.54.a 08254a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.55','PÓS-DOUTORADO',NULL,'082.55 08255 pos-doutorado','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.55.a','DESIGNAÇÃO, MATRÍCULA, CONCLUSÃO, CANCELAMENTO, TRANCAMENTO E/OU DESLIGAMENTO DOS CURSOS',NULL,'082.55.a 08255a designacao matricula conclusao cancelamento trancamento e ou desligamento dos cursos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.6','PRORROGAÇÃO DE TEMPO DE SERVIÇO. REENGAJAMENTO',NULL,'082.6 0826 prorrogacao de tempo de servico reengajamento','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.6.a','REQUERIMENTOS, AVALIAÇÕES, PARECERES E DESPACHOS',NULL,'082.6.a 0826a requerimentos avaliacoes pareceres e despachos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.7','TRANSPOSIÇÃO DE QUADRO',NULL,'082.7 0827 transposicao de quadro','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.7.a','REQUERIMENTOS, AVALIAÇÕES, PARECERES E DESPACHOS',NULL,'082.7.a 0827a requerimentos avaliacoes pareceres e despachos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'082.9','OUTROS ASSUNTOS REFERENTES A PLANO DE CARREIRA',NULL,'082.9 0829 outros assuntos referentes a plano de carreira','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083','MOVIMENTAÇÃO. DESTAQUE. ADIÇÃO. EXCLUSÃO DO SERVIÇO ATIVO: MAPAS DE LOTAÇÃO DE OFICIAIS E PRAÇAS',NULL,'083 083 movimentacao destaque adicao exclusao do servico ativo: mapas de lotacao de oficiais e pracas','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.1','MOVIMENTAÇÃO',NULL,'083.1 0831 movimentacao','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.11','MOTIVO DE SAÚDE',NULL,'083.11 08311 motivo de saude','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.11.a','SOLICITAÇÃO DA MOVIMENTAÇÃO, CÓPIA DA ATA DE INSPEÇÃO DE SAÚDE, TERMO DE INSPEÇÃO DE SAÚDE',NULL,'083.11.a 08311a solicitacao da movimentacao copia da ata de inspecao de saude termo de inspecao de saude','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.12','INTERESSE DO MILITAR',NULL,'083.12 08312 interesse do militar','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.12.a','SOLICITAÇÃO DA MOVIMENTAÇÃO, ORDEM DE MOVIMENTAÇÃO, PORTARIA DE MOVIMENTAÇÃO',NULL,'083.12.a 08312a solicitacao da movimentacao ordem de movimentacao portaria de movimentacao','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.13','NECESSIDADE DO SERVIÇO',NULL,'083.13 08313 necessidade do servico','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.13.a','PROPOSTA DE PLANO DE MOVIMENTAÇÃO, SOLICITAÇÕES DE ÓRGÃOS DE DIREÇÃO-GERAL OU SETORIAL, INCOMPATIBILIDADE DE POSTO, MATRÍCULA, TÉRMINO DE CURSO, INTERCÂMBIO E A BEM DA DISCIPLINA',NULL,'083.13.a 08313a proposta de plano de movimentacao solicitacoes de orgaos de direcao-geral ou setorial incompatibilidade de posto matricula termino de curso intercambio e a bem da disciplina','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.14','MOTIVO DE JUSTIÇA',NULL,'083.14 08314 motivo de justica','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.14.a','ORDEM JUDICIAL','Condicional "Até o trânsito em julgado" convencionada para 1 ano no corrente, a contar do trânsito em julgado. Como o prazo de guarda total dos documentos é de 52 anos, o prazo no intermediário foi ajustado para 51 anos.','083.14.a 08314a ordem judicial condicional ate o transito em julgado convencionada para 1 ano no corrente a contar do transito em julgado como o prazo de guarda total dos documentos e de 52 anos o prazo no intermediario foi ajustado para 51 anos','N',51,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.2','DESTAQUE. ADIÇÃO',NULL,'083.2 0832 destaque adicao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.2.a','PARECERES, DESPACHOS',NULL,'083.2.a 0832a pareceres despachos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.3','EXCLUSÃO DO SERVIÇO ATIVO',NULL,'083.3 0833 exclusao do servico ativo','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.3.a','DEMISSÃO, PERDA DE POSTO E DA PATENTE, LICENCIAMENTO, ANULAÇÃO DE INCORPORAÇÃO, DESINCORPORAÇÃO, A BEM DA DISCIPLINA, FALECIMENTO',NULL,'083.3.a 0833a demissao perda de posto e da patente licenciamento anulacao de incorporacao desincorporacao a bem da disciplina falecimento','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.3.b','DESERÇÃO. EXTRAVIO','Condicional "Até a apuração do fato" convencionada para 1 ano no corrente, a contar da conclusão da apruração.','083.3.b 0833b desercao extravio condicional ate a apuracao do fato convencionada para 1 ano no corrente a contar da conclusao da apruracao','N',100,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.9','OUTROS ASSUNTOS REFERENTES À MOVIMENTAÇÃO.DESTAQUE. ADIÇÃO. EXCLUSÃO DO SERVIÇO ATIVO',NULL,'083.9 0839 outros assuntos referentes a movimentacaodestaque adicao exclusao do servico ativo','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.9.a','POSSE E NOMEAÇÃO PARA CARGOS PÚBLICOS',NULL,'083.9.a 0839a posse e nomeacao para cargos publicos','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'083.a','PLANOS DE MOVIMENTAÇÃO','Condicional "Enquanto vigora" convencionado para 1 ano no corrente, a contar a partir da perda da vigência do documento.','083.a 083a planos de movimentacao condicional enquanto vigora convencionado para 1 ano no corrente a contar a partir da perda da vigencia do documento','N',5,1,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084','VIOLAÇÃO DAS OBRIGAÇÕES E DOS DEVERES',NULL,'084 084 violacao das obrigacoes e dos deveres','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.1','TRANSGRESSÕES E/OU CONTRAVENÇÕES DISCIPLINARES',NULL,'084.1 0841 transgressoes e ou contravencoes disciplinares','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.1.a','SINDICÂNCIA, ACAREAÇÃO E APURAÇÃO DAS TRANSGRESSÕES E/OU CONTRAVENÇÕES, APLICAÇÃO DAS PUNIÇÕES DISCIPLINARES',NULL,'084.1.a 0841a sindicancia acareacao e apuracao das transgressoes e ou contravencoes aplicacao das punicoes disciplinares','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.2','CRIMES MILITARES',NULL,'084.2 0842 crimes militares','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.2.a','PORTARIA DE NOMEAÇÃO DO ENCARREGADO E ESCRIVÃO DO IPM, SOLUÇÃO DO IPM, OFÍCIO DE REMESSA DO IPM À JUSTIÇA MILITAR','Os autos dos Inquéritos Policiais Militares (IPM) serão encaminhados á Justiça Militar.','084.2.a 0842a portaria de nomeacao do encarregado e escrivao do ipm solucao do ipm oficio de remessa do ipm a justica militar os autos dos inqueritos policiais militares ipm serao encaminhados a justica militar','N',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.3','CONSELHOS',NULL,'084.3 0843 conselhos','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.31','DE DISCIPLINA',NULL,'084.31 08431 de disciplina','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.31.a','NOMEAÇÃO DOS MEMBROS DO CONSELHO, ATOS DE AFASTAMENTO DO ACUSADO, AUTOS DO CONSELHO, CONCLUSÕES E DECISÕES','Caso seja considerado crime, os autos do processo do Conselho serão encaminhados à Justiça Militar.  Condicional "Até o despacho final do Comandante da Força" convencionada para 1 ano no arquivo corrente, a contar do despacho final do Comandante da Força.','084.31.a 08431a nomeacao dos membros do conselho atos de afastamento do acusado autos do conselho conclusoes e decisoes caso seja considerado crime os autos do processo do conselho serao encaminhados a justica militar condicional ate o despacho final do comandante da forca convencionada para 1 ano no arquivo corrente a contar do despacho final do comandante da forca','N',130,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.32','DE JUSTIFICAÇÃO','','084.32 08432 de justificacao','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'084.32.a','NOMEAÇÃO DOS MEMBROS DO CONSELHO, ATOS DE AFASTAMENTO DO ACUSADO, AUTOS DO CONSELHO, CONCLUSÕES E DECISÕES','Os autos do processo do Conselho serão encaminhados à Justiça Militar.  Condicional "Até o trânsito em julgado" convencionada para 1 ano no arquivo corrente, a contar do trânsito em julgado.','084.32.a 08432a nomeacao dos membros do conselho atos de afastamento do acusado autos do conselho conclusoes e decisoes os autos do processo do conselho serao encaminhados a justica militar condicional ate o transito em julgado convencionada para 1 ano no arquivo corrente a contar do transito em julgado','N',130,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085','DIREITOS E PRERROGATIVAS',NULL,'085 085 direitos e prerrogativas','N',NULL,NULL,'','S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.1','RECOMPENSAS. DISTINÇÕES. HONRARIAS',NULL,'085.1 0851 recompensas distincoes honrarias','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.1.a','PRÊMIOS DE HONRA AO MÉRITO, ELOGIOS, LOUVORES, REFERÊNCIAS ELOGIOSAS, DISTINTIVOS, DISPENSAS DE SERVIÇO',NULL,'085.1.a 0851a premios de honra ao merito elogios louvores referencias elogiosas distintivos dispensas de servico','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.1.b','RELAÇÕES DE AGRACIADOS COM AS CONDECORAÇÕES, RELAÇÕES DAQUELES QUE TIVERAM AS CONDECORAÇÕES CASSADAS',NULL,'085.1.b 0851b relacoes de agraciados com as condecoracoes relacoes daqueles que tiveram as condecoracoes cassadas','N',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.2','LICENÇAS',NULL,'085.2 0852 licencas','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.2.a','ADOTANTE, PARA ACOMPANHAR CÔNJUGE/COMPANHEIRO, CANDIDATO A CARGO ELETIVO, ESPECIAL, GESTANTE, PATERNIDADE, PARA TRATAR DE INTERESSE PARTICULAR, PARA TRATAMENTO DE SAÚDE DE PESSOA DA FAMÍLIA, PARA TRATAMENTO DE SAÚDE PRÓPRIA',NULL,'085.2.a 0852a adotante para acompanhar conjuge companheiro candidato a cargo eletivo especial gestante paternidade para tratar de interesse particular para tratamento de saude de pessoa da familia para tratamento de saude propria','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.3','AFASTAMENTOS',NULL,'085.3 0853 afastamentos','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.3.a','INSTALAÇÃO (NO BRASIL E NO EXTERIOR), LUTO, NÚPCIAS, TRÂNSITO (NO BRASIL E NO EXTERIOR)',NULL,'085.3.a 0853a instalacao no brasil e no exterior luto nupcias transito no brasil e no exterior','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.4','DISPENSAS DE SERVIÇO',NULL,'085.4 0854 dispensas de servico','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.4.a','PARA DESCONTO EM FÉRIAS, POR PRESCRIÇÃO MÉDICA',NULL,'085.4.a 0854a para desconto em ferias por prescricao medica','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.5','FÉRIAS',NULL,'085.5 0855 ferias','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.5.a','PLANEJAMENTO, SOLICITAÇÃO, CONCESSÃO, CANCELAMENTO E PUBLICAÇÃO',NULL,'085.5.a 0855a planejamento solicitacao concessao cancelamento e publicacao','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.6','REMUNERAÇÃO. PROVENTOS',NULL,'085.6 0856 remuneracao proventos','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.61','REMUNERAÇÃO NA ATIVA',NULL,'085.61 08561 remuneracao na ativa','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.61.a','FICHAS FINANCEIRAS E FOLHAS DE PAGAMENTO',NULL,'085.61.a 08561a fichas financeiras e folhas de pagamento','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.611','ADICIONAIS',NULL,'085.611 085611 adicionais','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.611.a','MILITAR, DE HABILITAÇÃO, DE TEMPO DE SERVIÇO, DE COMPENSAÇÃO ORGÂNICA, DE PERMANÊNCIA',NULL,'085.611.a 085611a militar de habilitacao de tempo de servico de compensacao organica de permanencia','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.612','GRATIFICAÇÕES',NULL,'085.612 085612 gratificacoes','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.612.a','DE LOCALIDADE ESPECIAL, DE REPRESENTAÇÃO',NULL,'085.612.a 085612a de localidade especial de representacao','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.619','OUTROS DIREITOS REMUNERATÓRIOS NA ATIVA',NULL,'085.619 085619 outros direitos remuneratorios na ativa','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.619.a','ADICIONAL DE FÉRIAS E NATALINO; AJUDA DE CUSTO; ASSISTÊNCIA PRÉ-ESCOLAR; AUXÍLIOS FARDAMENTO, ALIMENTAÇÃO, NATALIDADE, INVALIDEZ, FUNERAL E TRANSPORTE; COMPENSAÇÃO; DIÁRIAS; SALÁRIO-FAMÍLIA; TRANSPORTE; ADIANTAMENTO DE FÉRIAS; RETRIBUIÇÃO NO EXTERIOR','adicional de férias; adicional natalino; ajuda de custo; assistência pré-escolar; auxílios fardamento, alimentação, natalidade, invalidez, funeral e transporte; compensação pecuniária; diárias; salário-família; transporte de pessoal e bagagens por mudança de localidade; remunuração/adiantamento de férias; retribuição no exterior.','085.619.a 085619a adicional de ferias e natalino; ajuda de custo; assistencia pre-escolar; auxilios fardamento alimentacao natalidade invalidez funeral e transporte; compensacao; diarias; salario-familia; transporte; adiantamento de ferias; retribuicao no exterior adicional de ferias; adicional natalino; ajuda de custo; assistencia pre-escolar; auxilios fardamento alimentacao natalidade invalidez funeral e transporte; compensacao pecuniaria; diarias; salario-familia; transporte de pessoal e bagagens por mudanca de localidade; remunuracao adiantamento de ferias; retribuicao no exterior','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.62','PROVENTOS NA INATIVIDADE',NULL,'085.62 08562 proventos na inatividade','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.62.a','FICHAS FINANCEIRAS E FOLHAS DE PAGAMENTO',NULL,'085.62.a 08562a fichas financeiras e folhas de pagamento','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.621','ADICIONAIS',NULL,'085.621 085621 adicionais','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.621.a','ADICIONAIS: MILITAR, DE HABILITAÇÃO, DE TEMPO DE SERVIÇO, DE COMPENSAÇÃO ORGÂNICA, DE PERMANÊNCIA',NULL,'085.621.a 085621a adicionais: militar de habilitacao de tempo de servico de compensacao organica de permanencia','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.629','OUTROS DIREITOS PECUNIÁRIOS NA INATIVIDADE',NULL,'085.629 085629 outros direitos pecuniarios na inatividade','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.629.a','ADICIONAL NATALINO, ASSISTÊNCIA PRÉ-ESCOLAR, AUXÍLIOS: INVALIDEZ, NATALIDADE E FUNERAL, SALÁRIO-FAMÍLIA, ADICIONAL DESIGNAÇÃO PARA O SERVIÇO ATIVO, PRO-LABORE PARA TAREFA POR TEMPO CERTO, AJUDA DE TRANSPORTE POR BAIXA/ALTA EM ORGANIZAÇÃO, HOSPITALAR',NULL,'085.629.a 085629a adicional natalino assistencia pre-escolar auxilios: invalidez natalidade e funeral salario-familia adicional designacao para o servico ativo pro-labore para tarefa por tempo certo ajuda de transporte por baixa alta em organizacao hospitalar','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.63','DESCONTOS',NULL,'085.63 08563 descontos','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.631','OBRIGATÓRIOS',NULL,'085.631 085631 obrigatorios','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.631.a','CONTR. PARA A ASSISTÊNCIA MÉDICO-HOSPITALAR E SOCIAL, INDENIZAÇÃO PELA ASSISTÊNCIA, INDENIZAÇÃO À FAZENDA, MULTA POR OCUPAÇÃO IRREGULAR DE PRÓPRIO NACIONAL RESIDENCIAL, PENSÃO ALIMENTÍCIA OU JUDICIAL, CONTR. A PENSÃO MILITAR, TAXA DE USO POR OCUPAÇÃO','OBRIGATÓRIOS: CONTRIBUIÇÃO PARA A ASSISTÊNCIA MÉDICO-HOSPITALAR E SOCIAL (PRESTADA POR ENTIDADE MILITAR), IMPOSTOS INCIDENTES SOBRE A REMUNERAÇÃO OU PROVENTOS, INDENIZAÇÃO PELA ASSISTÊNCIA MÉDICO-HOSPITALAR (PRESTADA POR ENTIDADE MILITAR), INDENIZAÇÃO À FAZENDA NACIONAL, MULTA POR OCUPAÇÃO IRREGULAR DE PRÓPRIO NACIONAL RESIDENCIAL, PENSÃO ALIMENTÍCIA OU JUDICIAL, CONTRIBUIÇÃO PARA A PENSÃO MILITAR, TAXA DE USO POR OCUPAÇÃO DE PRÓPRIO NACIONAL RESIDENCIAL','085.631.a 085631a contr para a assistencia medico-hospitalar e social indenizacao pela assistencia indenizacao a fazenda multa por ocupacao irregular de proprio nacional residencial pensao alimenticia ou judicial contr a pensao militar taxa de uso por ocupacao obrigatorios: contribuicao para a assistencia medico-hospitalar e social prestada por entidade militar impostos incidentes sobre a remuneracao ou proventos indenizacao pela assistencia medico-hospitalar prestada por entidade militar indenizacao a fazenda nacional multa por ocupacao irregular de proprio nacional residencial pensao alimenticia ou judicial contribuicao para a pensao militar taxa de uso por ocupacao de proprio nacional residencial','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.632','AUTORIZADOS',NULL,'085.632 085632 autorizados','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'085.632.a','DESCONTOS EM FAVOR DE ENTIDADE CONSIGNATÁRIAS, DE TERCEIRO OU BENEFÍCIO FAMÍLIA',NULL,'085.632.a 085632a descontos em favor de entidade consignatarias de terceiro ou beneficio familia','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086','INATIVOS E PENSIONISTAS',NULL,'086 086 inativos e pensionistas','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.1','INATIVOS',NULL,'086.1 0861 inativos','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.11','RESERVA',NULL,'086.11 08611 reserva','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.111','REMUNERADA',NULL,'086.111 086111 remunerada','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.111.a','PROCESSO DE TRANSFERÊNCIA PARA A RESERVA REMUNERADA','O processo de reserva remunerada transforma-se em processo de reforma ou, em caso de falecimento, é anexado ao processo de pensão militar.  Condicional "Até a reforma ou falecimento do militar" convencionada para 125 anos, acompanhando o maior prazo determinado no intermediário para o processo de pensão militar.','086.111.a 086111a processo de transferencia para a reserva remunerada o processo de reserva remunerada transforma-se em processo de reforma ou em caso de falecimento e anexado ao processo de pensao militar condicional ate a reforma ou falecimento do militar convencionada para 125 anos acompanhando o maior prazo determinado no intermediario para o processo de pensao militar','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.112','NÃO REMUNERADA',NULL,'086.112 086112 nao remunerada','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.112.a','PROCESSO DE TRANSFERÊNCIA PARA A RESERVA NÃO REMUNERADA',NULL,'086.112.a 086112a processo de transferencia para a reserva nao remunerada','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.12','REFORMA',NULL,'086.12 08612 reforma','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.121','POR INVALIDEZ',NULL,'086.121 086121 por invalidez','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.121.a','PROCESSO DE REFORMA POR INVALIDEZ','O processo é anexado ao processo de pensão militar.  Condicional "Até o falecimento do militar" convencionada para 125 anos, acompanhando o maior prazo determinado no intermediário para o processo de pensão militar.','086.121.a 086121a processo de reforma por invalidez o processo e anexado ao processo de pensao militar condicional ate o falecimento do militar convencionada para 125 anos acompanhando o maior prazo determinado no intermediario para o processo de pensao militar','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.122','POR IDADES-LIMITE',NULL,'086.122 086122 por idades-limite','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.122.a','PROCESSO DE REFORMA POR IDADES-LIMITE','O processo é anexado ao processo de pensão militar.  Condicional "Até o falecimento do militar" convencionada para 125 anos, acompanhando o maior prazo determinado no intermediário para o processo de pensão militar.','086.122.a 086122a processo de reforma por idades-limite o processo e anexado ao processo de pensao militar condicional ate o falecimento do militar convencionada para 125 anos acompanhando o maior prazo determinado no intermediario para o processo de pensao militar','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.13','DESIGNAÇÃO PARA O SERVIÇO ATIVO',NULL,'086.13 08613 designacao para o servico ativo','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.13.a','PROCESSO DE DESIGNAÇÃO PARA O SERVIÇO ATIVO',NULL,'086.13.a 08613a processo de designacao para o servico ativo','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.14','TAREFA POR TEMPO CERTO',NULL,'086.14 08614 tarefa por tempo certo','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.14.a','PROCESSO DE DESIGNAÇÃO PARA TAREFA POR TEMPO CERTO',NULL,'086.14.a 08614a processo de designacao para tarefa por tempo certo','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.2','PENSIONISTAS',NULL,'086.2 0862 pensionistas','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.21','PENSÕES',NULL,'086.21 08621 pensoes','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.211','TEMPORÁRIA',NULL,'086.211 086211 temporaria','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.211.a','PROCESSOS DE SOLICITAÇÃO/CONCESSÃO DE PENSÃO MILITAR TEMPORÁRIA',NULL,'086.211.a 086211a processos de solicitacao concessao de pensao militar temporaria','N',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.212','VITALÍCIA',NULL,'086.212 086212 vitalicia','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.212.a','PROCESSOS DE SOLICITAÇÃO/CONCESSÃO DE PENSÃO MILITAR VITALÍCIA',NULL,'086.212.a 086212a processos de solicitacao concessao de pensao militar vitalicia','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.213','ESPECIAL',NULL,'086.213 086213 especial','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'086.213.a','PROCESSOS DE SOLICITAÇÃO/CONCESSÃO DE PENSÃO MILITAR ESPECIAL',NULL,'086.213.a 086213a processos de solicitacao concessao de pensao militar especial','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087','ASSISTÊNCIA',NULL,'087 087 assistencia','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.1','MÉDICA',NULL,'087.1 0871 medica','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.11','HOSPITALAR',NULL,'087.11 08711 hospitalar','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.11.a','ATENDIMENTO AMBULATORIAL OU PRONTO-ATENDIMENTO',NULL,'087.11.a 08711a atendimento ambulatorial ou pronto-atendimento','N',20,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.11.b','PRONTUÁRIOS MÉDICOS, FICHAS ODONTOLÓGICAS',NULL,'087.11.b 08711b prontuarios medicos fichas odontologicas','N',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.12','PERICIAL',NULL,'087.12 08712 pericial','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.12.a','CONTROLE E VERIFICAÇÃO DE HIGIDEZ DO PESSOAL; ATESTADO E INQUÉRITO SANITÁRIO; RESULTADO DE EXAMES; CORPO DE DELITO; INSPEÇÃO; PROCESSOS DE PERÍCIA PARA REFORMA, ISENÇÃO DE IMPOSTO DE RENDA, MELHORIA DE REFORMA E MOVIMENTAÇÃO POR MOTIVO DE SAÚDE','Controle e verificação do estado de higidez (em estado saudável) do pessoal em serviço ativo, inativo e a ser selecionado para ingresso nas Forças Armadas; atestado sanitário de origem; inquérito sanitário de origem; resultado de exames; auto de corpo de delito; atas de inspeção de saúde; processos de perícia médica para reforma, isenção de imposto de renda, melhoria de reforma e movimentação por motivo de saúde.','087.12.a 08712a controle e verificacao de higidez do pessoal; atestado e inquerito sanitario; resultado de exames; corpo de delito; inspecao; processos de pericia para reforma isencao de imposto de renda melhoria de reforma e movimentacao por motivo de saude controle e verificacao do estado de higidez em estado saudavel do pessoal em servico ativo inativo e a ser selecionado para ingresso nas forcas armadas; atestado sanitario de origem; inquerito sanitario de origem; resultado de exames; auto de corpo de delito; atas de inspecao de saude; processos de pericia medica para reforma isencao de imposto de renda melhoria de reforma e movimentacao por motivo de saude','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.2','SOCIAL',NULL,'087.2 0872 social','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.2.a','PROGRAMAS DE ASSISTÊNCIA SOCIAL COM VISTAS À CONCESSÃO DE LICENÇAS E BENEFÍCIOS; ATENDIMENTOS EDUCACIONAIS E ASSISTENCIAIS PRESTADOS POR EMPRESAS CONVENIADAS',NULL,'087.2.a 0872a programas de assistencia social com vistas a concessao de licencas e beneficios; atendimentos educacionais e assistenciais prestados por empresas conveniadas','N',95,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.3','JURÍDICA',NULL,'087.3 0873 juridica','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.3.a','ORIENTAÇÃO DE CARÁTER PARTICULAR; ATENDIMENTOS JURÍDICOS PRESTADOS POR EMPRESAS CONVENIADAS',NULL,'087.3.a 0873a orientacao de carater particular; atendimentos juridicos prestados por empresas conveniadas','N',20,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.4','PSICOLÓGICA',NULL,'087.4 0874 psicologica','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.4.a','TRIAGEM PARA ENCAMINHAMENTO AO SERVIÇO DE SAÚDE ESPECÍFICO; ORIENTAÇÃO E ACONSELHAMENTO PSICOLÓGICO; ATENDIMENTOS PSICOLÓGICOS PRESTADOS POR EMPRESAS CONVENIADAS',NULL,'087.4.a 0874a triagem para encaminhamento ao servico de saude especifico; orientacao e aconselhamento psicologico; atendimentos psicologicos prestados por empresas conveniadas','N',125,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.5','RELIGIOSA',NULL,'087.5 0875 religiosa','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.5.a','CENSO RELIGIOSO',NULL,'087.5.a 0875a censo religioso','N',45,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'087.5.b','PROCESSOS DE HABILITAÇÃO E REGISTROS DE CASAMENTO; BATIZADO E CRISMA; LIVRO TOMBO',NULL,'087.5.b 0875b processos de habilitacao e registros de casamento; batizado e crisma; livro tombo','N',15,15,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'088','VAGA',NULL,'088 088 vaga','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089','OUTROS ASSUNTOS REFERENTES A PESSOAL MILITAR',NULL,'089 089 outros assuntos referentes a pessoal militar','N',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.1','SERVIÇOS DE ESCALA',NULL,'089.1 0891 servicos de escala','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.1.a','ESCALAS DE SERVIÇO',NULL,'089.1.a 0891a escalas de servico','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.2','TABELAS MESTRAS',NULL,'089.2 0892 tabelas mestras','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.2.a','TABELAS INDIVIDUAIS E GERAIS','Condicional "Enquanto vigora" convencionada para 1 ano no corrente, a contar da perda da validade do documento.','089.2.a 0892a tabelas individuais e gerais condicional enquanto vigora convencionada para 1 ano no corrente a contar da perda da validade do documento','N',5,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.3','CONTROLE DE FREQUÊNCIA',NULL,'089.3 0893 controle de frequencia','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.3.a','FICHAS DE CONTROLE DE EFETIVOS; LIVROS DE LICENCIADOS',NULL,'089.3.a 0893a fichas de controle de efetivos; livros de licenciados','N',47,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.4','DELEGAÇÕES DE COMPETÊNCIA',NULL,'089.4 0894 delegacoes de competencia','N',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'089.4.a','ATOS DE DELEGAÇÃO; RELAÇÃO DE ENCARGOS COLATERAIS','Condicional "Enquanto vigora" convencionada para 1 ano no corrente, a contar da perda da validade do documento.','089.4.a 0894a atos de delegacao; relacao de encargos colaterais condicional enquanto vigora convencionada para 1 ano no corrente a contar da perda da validade do documento','N',5,1,'E','N',@idtabelaatual);



INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'900','ADMINISTRAÇÃO DE ATIVIDADES ACESSÓRIAS','Esta classe contempla documentos referentes ao desenvolvimento de atividades complementares, normalmente, vinculadas às atividades-meio, mas que não são essenciais para o funcionamento e cumprimento das competências finalísticas do órgão e entidade.','900 900 Esta classe contempla documentos referentes ao desenvolvimento de atividades complementares normalmente vinculadas as atividades-meio mas que nao sao essenciais para o funcionamento e cumprimento das competencias finalisticas do orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'910','GESTÃO DE EVENTOS','Nas subdivisões deste descritor classificam-se documentos referentes à gestão dos eventos promovidos e realizados pelo órgão e entidade, como: solenidades, comemorações, homenagens, congressos, conferências, seminários, simpósios, jornadas, oficinas, encontros, convenções, ciclos de palestras, mesas redondas, feiras, salões, exposições, mostras, exibição de filmes e vídeos, lançamentos de livros, festas e concursos culturais. Quanto às atividades de comunicação social no âmbito externo, classificar nas subdivisões do código 019.11.','910 910 Nas subdivisoes deste descritor classificam-se documentos referentes a gestao dos eventos promovidos e realizados pelo orgao e entidade como: solenidades comemoracoes homenagens congressos conferencias seminarios simposios jornadas oficinas encontros convencoes ciclos de palestras mesas redondas feiras saloes exposicoes mostras exibicao de filmes e videos lancamentos de livros festas e concursos culturais. Quanto as atividades de comunicacao social no ambito externo classificar nas subdivisoes do codigo 019.11.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'910.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a gestão de eventos promovidos e realizados pelo órgão e entidade.','910.01 91001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a gestao de eventos promovidos e realizados pelo orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'911','PLANEJAMENTO E PROGRAMAÇÃO','Incluem-se documentos referentes ao planejamento e à programação do evento, tais como: a definição do tema, a programação prévia e final, a lista de palestrantes e convidados, o cronograma das atividades (dias, horários e sessões), as instruções para participantes e ouvintes, os contatos com parcerias, patrocinadores e fornecedores e a disponibilização de informações turísticas e sobre hospedagem, alimentação e transporte.','911 911 Incluem-se documentos referentes ao planejamento e a programacao do evento tais como: a definicao do tema a programacao previa e final a lista de palestrantes e convidados o cronograma das atividades (dias horarios e sessoes) as instrucoes para participantes e ouvintes os contatos com parcerias patrocinadores e fornecedores e a disponibilizacao de informacoes turisticas e sobre hospedagem alimentacao e transporte.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'912','DIVULGAÇÃO','Incluem-se documentos referentes à divulgação dos eventos, tais como: fôlderes, cartazes, folhetos, chamadas nas redes sociais e anúncios nas mídias de comunicação impressas e eletrônicas.','912 912 Incluem-se documentos referentes a divulgacao dos eventos tais como: fôlderes cartazes folhetos chamadas nas redes sociais e anuncios nas midias de comunicacao impressas e eletrônicas.','S',2,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'913','INSCRIÇÃO E CONTROLE DE FREQUÊNCIA','Incluem-se fichas de inscrição, cadastro ou relação de inscritos e listas de presença dos participantes nos eventos.','913 913 Incluem-se fichas de inscricao, cadastro ou relacao de inscritos e listas de presenca dos participantes nos eventos.','S',2,NULL,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'914','EMISSÃO DE CERTIFICADOS','Incluem-se documentos referentes à expedição, registro e controle da entrega do certificado aos participantes nos eventos.','914 914 Incluem-se documentos referentes a expedicao registro e controle da entrega do certificado aos participantes nos eventos.','S',3,2,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'915','AVALIAÇÃO DOS RESULTADOS','Incluem-se documentos referentes à avaliação dos resultados alcançados pelos eventos, tais como: formulários de avaliação e relatórios parciais e finais.','915 915 Incluem-se documentos referentes a avaliacao dos resultados alcancados pelos eventos tais como: formularios de avaliacao e relatorios parciais e finais.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'916','HABILITAÇÃO, JULGAMENTO E RECURSOS','Incluem-se documentos referentes à habilitação dos candidatos inscritos nos prêmios e nos concursos culturais, ao julgamento dos trabalhos concorrentes, ao desempenho dos participantes e aos recursos apresentados aos resultados do julgamento, bem como os trabalhos inscritos e as atas de julgamento.','916 916 Incluem-se documentos referentes a habilitacao dos candidatos inscritos nos premios e nos concursos culturais ao julgamento dos trabalhos concorrentes ao desempenho dos participantes e aos recursos apresentados aos resultados do julgamento bem como os trabalhos inscritos e as atas de julgamento.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'917','PREMIAÇÃO','Incluem-se documentos referentes a entrega da premiação aos candidatos vencedores dos concursos culturais, tais como: termo de entrega e recebimento e termo de cessão de direitos autorais.','917 917 Incluem-se documentos referentes a entrega da premiacao aos candidatos vencedores dos concursos culturais, tais como: termo de entrega e recebimento e termo de cessao de direitos autorais.','S',2,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'918','CONTRATAÇÃO DE PRESTAÇÃO DE SERVIÇOS','Esse descritor foi suprimido em revisão do presente instrumento em 2022. Todos os documentos relativos à contratação de pessoa jurídica para prestação de serviços devem ser classificados no código 018.1. Quanto ao uso de dependências do órgão e entidade, por terceiros, mediante locação, arrendamento mercantil (leasing) e sublocação, classificar no código 041.61.','918 918 Esse descritor foi suprimido em revisao do presente instrumento em 2022. Todos os documentos relativos a contratacao de pessoa juridica para prestacao de servicos devem ser classificados no codigo 018.1. Quanto ao uso de dependencias do orgao e entidade por terceiros mediante locacao arrendamento mercantil (leasing) e sublocacao classificar no codigo 041.61.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'919','OUTRAS AÇÕES REFERENTES À GESTÃO DE EVENTOS','Na subdivisão deste descritor classificam-se documentos referentes a outras ações de gestão de eventos não contempladas nos descritores anteriores.','919 919 Na subdivisao deste descritor classificam-se documentos referentes a outras acoes de gestao de eventos nao contempladas nos descritores anteriores.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'919.1','PARTICIPAÇÃO EM EVENTOS PROMOVIDOS E REALIZADOS POR OUTRAS INSTITUIÇÕES','Incluem-se documentos referentes à participação do servidor em eventos promovidos por outras instituições, tais como: comprovantes da inscrição e da participação no evento, discursos, palestras e trabalhos apresentados. Quanto aos documentos comprobatórios de participação do servidor, que deverão integrar o assentamento funcional, classificar nas subdivisões do código 020.1.','919.1 9191 Incluem-se documentos referentes a participacao do servidor em eventos promovidos por outras instituicoes tais como: comprovantes da inscricao e da participacao no evento discursos palestras e trabalhos apresentados. Quanto aos documentos comprobatorios de participacao do servidor que deverao integrar o assentamento funcional classificar nas subdivisoes do codigo 020.1.','S',NULL,5,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'920','PROMOÇÃO DE VISITAS','Nas subdivisões deste descritor classificam-se os documentos referentes à promoção de visitas culturais, educativas e técnicas ao órgão e entidade.','920 920 Nas subdivisoes deste descritor classificam-se os documentos referentes a promocao de visitas culturais educativas e tecnicas ao orgao e entidade.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'920.01','NORMATIZAÇÃO. REGULAMENTAÇÃO','Incluem-se documentos referentes às determinações legais, aos atos e instruções normativas, aos procedimentos operacionais e às decisões de caráter geral sobre a promoção de visitas ao órgão e entidade.','920.01 92001 Incluem-se documentos referentes as determinacoes legais aos atos e instrucoes normativas aos procedimentos operacionais e as decisoes de carater geral sobre a promocao de visitas ao orgao e entidade.','S',5,NULL,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'921','PROGRAMAÇÃO DE VISITAS','Incluem-se documentos referentes ao atendimento de solicitação de visitas ao órgão e entidade, bem como aqueles referentes ao planejamento e à programação de visitas monitoradas, dirigidas a diferentes públicos.','921 921 Incluem-se documentos referentes ao atendimento de solicitacao de visitas ao orgao e entidade bem como aqueles referentes ao planejamento e a programacao de visitas monitoradas dirigidas a diferentes publicos.','S',5,5,'G','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'922','CONTROLE DE VISITAS E VISITANTES','Incluem-se documentos referentes ao controle da entrada de visitantes e ao acompanhamento dos mesmos por ocasião das visitas.','922 922 Incluem-se documentos referentes ao controle da entrada de visitantes e ao acompanhamento dos mesmos por ocasiao das visitas.','S',NULL,2,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'990','OUTRAS AÇÕES REFERENTES À ADMINISTRAÇÃO DE ATIVIDADES ACESSÓRIAS','Nas subdivisões deste descritor classificam-se documentos referentes às comunicações ocasionais e genéricas produzidas ou recebidas pelo órgão e entidade no relacionamento com outras instituições públicas e privadas e que não dizem respeito ao desenvolvimento de suas atividades específicas.','990 990 Nas subdivisoes deste descritor classificam-se documentos referentes as comunicacoes ocasionais e genericas produzidas ou recebidas pelo orgao e entidade no relacionamento com outras instituicoes publicas e privadas e que nao dizem respeito ao desenvolvimento de suas atividades especificas.','S',NULL,NULL,NULL,'S',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'991','GESTÃO DE COMUNICAÇÕES EVENTUAIS','Incluem-se comunicados, informes, pedidos, solicitações e oferecimentos, trocados entre o órgão e entidade e demais instituições públicas e privadas, que não tiveram solução de con-tinuidade, como por exemplo: apresentação e recomendação de pessoas e de profissionais; comunicado de falecimento e envio de pêsames; informe de posse, afastamento e mudança de titular; comunicados de alterações de telefones e endereços; informe de luto oficial; envio de cumprimentos e felicitações; recebimento de convites para solenidade e eventos diversos. Quanto às solicitações de informações efetuadas pelos cidadãos por meio do SIC, classificar nas subdivisões do código 002.1. Quanto aos elogios e reclamações recebidos pela ouvidoria e outros canais de comunicação, classificar no código 002.2.','991 991 Incluem-se comunicados informes pedidos solicitacoes e oferecimentos trocados entre o orgao e entidade e demais instituicoes publicas e privadas que nao tiveram solucao de con-tinuidade como por exemplo: apresentacao e recomendacao de pessoas e de profissionais comunicado de falecimento e envio de pesames informe de posse afastamento e mudanca de titular comunicados de alteracoes de telefones e enderecos informe de luto oficial envio de cumprimentos e felicitacoes recebimento de convites para solenidade e eventos diversos. Quanto as solicitacoes de informacoes efetuadas pelos cidadaos por meio do SIC classificar nas subdivisoes do codigo 002.1. Quanto aos elogios e reclamacoes recebidos pela ouvidoria e outros canais de comunicacao classificar no codigo 002.2.','S',NULL,1,'E','N',@idtabelaatual);

INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto,'992','RELACIONAMENTO COM ASSOCIAÇÕES CULTURAIS, DE AMIGOS E DE SERVIDORES','Incluem-se documentos referentes ao relacionamento do órgão e entidade com associações culturais, de amigos e de servidores.','992 992 Incluem-se documentos referentes ao relacionamento do orgao e entidade com associacoes culturais, de amigos e de servidores.','S',NULL,1,'E','N',@idtabelaatual);
/*
INSERT INTO seq_assunto (campo) VALUES (0);
SET @idassunto=LAST_INSERT_ID();
INSERT INTO assunto  VALUES (@idassunto, '999.b','OUTROS','ITEM ABRANGE OS CÓDIGOS 098.1 A 099.99.g',NULL,'S',NULL,NULL,NULL,'S',@idtabelaatual);
*/
##INSERINDO NA NOVA TABELA DE ASSUNTOS OS FINALÍSTICOS DO ÓRGÃO


SET @ident = (SELECT max(id_assunto) FROM assunto);
SET @idtabelaant=(select id_tabela_assuntos from tabela_assuntos where sin_atual='S');
SET @idtabelaatual=(select max(id_tabela_assuntos) from tabela_assuntos);

insert into assunto (id_assunto, id_tabela_assuntos, codigo_estruturado, descricao, observacao, idx_assunto, sin_ativo, prazo_intermediario, prazo_corrente, sta_destinacao, sin_estrutural)
(select (@ident := @ident + 1), @idtabelaatual, codigo_estruturado, descricao, observacao, idx_assunto, sin_ativo, prazo_intermediario, prazo_corrente, sta_destinacao, sin_estrutural from assunto where substring(codigo_estruturado, 1, 1)  not in ('0','9') and id_tabela_assuntos = @idtabelaant);

##CRIANDO O MAPEAMENTO

SET @idtabelaatual=(select max(id_tabela_assuntos) from tabela_assuntos);
SET @idtabelaant=(select id_tabela_assuntos from tabela_assuntos where sin_atual='S');

INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='000' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='000' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='001' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='001' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='004.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='005.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='005.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='005.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='005.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='010' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='010' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='010.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='010.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='011' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='011' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='012' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='012' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='013.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='013.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='013.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='013.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.111' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.111' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.112' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.112' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.113' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.113' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.02' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.02' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.021' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.021' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.022' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.022' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.031' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.031' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.032' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.032' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.033' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.033' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.14' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.14' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='020.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='021.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.63' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.63' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.7' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.7' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.14' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.14' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.15' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.15' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.151' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.151' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.152' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.152' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.153' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.153' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.154' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.154' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.155' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.155' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.156' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.156' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.157' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.157' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.16' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.16' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.161' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.161' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.162' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.162' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.163' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.163' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.164' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.164' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.165' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.165' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.166' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.166' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.167' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.167' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.17' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.17' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.171' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.171' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.172' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.172' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.173' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.173' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.174' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.174' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.175' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.175' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.18' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.18' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.181' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.181' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.182' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.182' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.183' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.183' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.184' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.184' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.185' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.185' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.186' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.186' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.191' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.191' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.7' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.7' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.71' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.71' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.72' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.72' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.73' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.73' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.91' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.91' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.92' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.92' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.93' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='023.93' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.33' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.33' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.14' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.14' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.311' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.311' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.312' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.312' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.02' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.02' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.53' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.53' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.54' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.54' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.61' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.61' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.62' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.62' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.9' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.9' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.91' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='026.91' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='027' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='027' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='028.23' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='030' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='030' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.02' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.02' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.03' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='030.03' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.41' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.41' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.42' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.42' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='034' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='035' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='035' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='036' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='036' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='039' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='039' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='040' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='040' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='040.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='040.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.23' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.53' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.53' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.61' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.61' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.62' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.62' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.23' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.53' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.53' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.72' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.72' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.61' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.61' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.62' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.62' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.7' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.7' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='044.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.24' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.7' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='046.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='047.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='049' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='049' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='050' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='050' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='051' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='051' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='051.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.211' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.211' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.212' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.212' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.213' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.213' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.221' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.221' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.222' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.222' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.23' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.24' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.24' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.251' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.251' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.252' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='052.252' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='054.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='054.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='054.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='054.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='059.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='060' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='060' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='060.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='060.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.011' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.011' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.012' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.012' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.51' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.51' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.52' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.52' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.521' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.521' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.522' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.522' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.523' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.523' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.41' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.41' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.42' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='062.42' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='064.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='065.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.41' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.41' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.42' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.42' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='067' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='069' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='069' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='070' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='070' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='071.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='071.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='071.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='071.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='071.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.33' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.33' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='900' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='900' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='910.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='910.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='911' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='911' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='912' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='912' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='913' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='913' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='914' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='914' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='915' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='915' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='916' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='916' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='917' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='917' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='918' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='919.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='919.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='920.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='920.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='921' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='921' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='922' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='922' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='990' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='990' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='991' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='991' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='992' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='992' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='002.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='003.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='014.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.33' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='015.33' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='016.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='017.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='017.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='017.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='017.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='018' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='018' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='019.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.61' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.61' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.62' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='022.62' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='024.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.13' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.13' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='025.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='027.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.22' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.22' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.23' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.23' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.24' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.24' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='029.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='031.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='032.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.41' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.41' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.42' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='033.42' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='036.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='039.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='041.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.31' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.31' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.32' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.32' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.71' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='042.71' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='043.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.33' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='045.33' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='049.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.02' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.02' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.03' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='050.03' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='053.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='061.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='063.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.91' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='066.91' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.11' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.11' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.12' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='069.12' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='070.01' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='070.01' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='072' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='072' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='073.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.2' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.2' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.c' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.21.c' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.22 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.22 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='080.3.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.1.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.4 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.4 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.4.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.4.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.5' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.5' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.5.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.5.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.9 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='081.9 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.1.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.1.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.21 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.21 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.21.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.21.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.22 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.22 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.22.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.22.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.23 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.23 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.23.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.23.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.24 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.24 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.24.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.24.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.4' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.4' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.4.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.4.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.5 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.5 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.51 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.51 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.51.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.51.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.52 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.52 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.52.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.52.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.53 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.53 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.53.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.53.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.54 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.54 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.54.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.54.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.55' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.55' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.55.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.55.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.6.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.6.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.7 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.7 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.7.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.7.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.9 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='082.9 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.11 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.11 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.11.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.11.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.12 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.12 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.12.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.12.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.13 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.13 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.13.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.13.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.14 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.14 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.14.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.14.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.3.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.9 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.9 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.9.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='083.9.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.1.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.1.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.31 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.31 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.31.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.31.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.32 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.32 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.32.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='084.32.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.1.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.4 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.4 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.4.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.4.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.5 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.5 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.5.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.5.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.6' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.6' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.61' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.61' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.61.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.61.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.611 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.611 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.611.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.611.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.612 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.612 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.612.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.612.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.619 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.619 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.619.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.619.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.62 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.62 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.62.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.62.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.621 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.621 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.621.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.621.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.629 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.629 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.629.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.629.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.63 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.63 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.631 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.631 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.631.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.631.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.632 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.632 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.632.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='085.632.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.11 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.11 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.111 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.111 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.111.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.111.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.112 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.112 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.112.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.112.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.12 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.12 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.121 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.121 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.121.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.121.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.122 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.122 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.122.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.122.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.13 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.13 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.13.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.13.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.14 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.14 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.14.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.14.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.21 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.21 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.211 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.211 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.211.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.211.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.212 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.212 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.212.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.212.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.213 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.213 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.213.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='086.213.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.11.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.12 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.12 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.12.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.12.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.4 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.4 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.4.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.4.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5.b' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='087.5.b' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='088 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='088 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.1 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.1 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.1.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.1.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.2 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.2 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.2.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.2.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.3 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.3 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.3.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.3.a' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.4 ' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.4 ' AND id_tabela_assuntos = @idtabelaatual));
INSERT INTO mapeamento_assunto (id_assunto_origem, id_assunto_destino) VALUES ((SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.4.a' AND id_tabela_assuntos = @idtabelaant),(SELECT id_assunto FROM assunto WHERE codigo_estruturado='089.4.a' AND id_tabela_assuntos = @idtabelaatual));


#INSERINDO MAPEAMENTO ASSUNTOS FINALÍSTICOS

INSERT INTO mapeamento_assunto 
SELECT  a1.id_assunto, a2.id_assunto FROM assunto a1 JOIN (SELECT id_assunto, codigo_estruturado FROM assunto WHERE id_tabela_assuntos = (SELECT max(id_tabela_assuntos) from tabela_assuntos)) a2 ON a1.codigo_estruturado = a2.codigo_estruturado AND a1.id_tabela_assuntos = (SELECT id_tabela_assuntos FROM tabela_assuntos ta WHERE sin_atual = 'S') AND substring(a1.codigo_estruturado, 1, 1) NOT IN 
('0', '9');


