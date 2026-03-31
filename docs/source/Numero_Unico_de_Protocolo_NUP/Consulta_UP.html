<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de Planilha</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; max-width: 600px; margin: auto; }
        .form-group { margin-bottom: 15px; }
        select { width: 100%; padding: 8px; margin-top: 5px; }
        #resultado { margin-top: 20px; padding: 15px; background: #f4f4f4; border-radius: 5px; display: none; }
    </style>
</head>
<body>

    <h2>Consulta de Dados</h2>

    <div class="form-group">
        <label for="uf">UF:</label>
        <select id="uf" disabled><option value="">Carregando...</option></select>
    </div>

    <div class="form-group">
        <label for="municipio">Município:</label>
        <select id="municipio" disabled><option value="">Selecione a UF primeiro</option></select>
    </div>

    <div class="form-group">
        <label for="codigo">Código:</label>
        <select id="codigo" disabled><option value="">Selecione o Município primeiro</option></select>
    </div>

    <div id="resultado">
        <h3>Dados Encontrados:</h3>
        <pre id="dados-completos"></pre>
    </div>

    <script>
        // COLOQUE AQUI O LINK RAW DO SEU CSV NO GITHUB
        const csvUrl = 'https://raw.githubusercontent.com/pengovbr/wiki-processoeletronico/refs/heads/homologacao/docs/source/Numero_Unico_de_Protocolo_NUP/Codigos_UP_das_UF.csv';
        let dadosGlobais = [];

        const selectUf = document.getElementById('uf');
        const selectMunicipio = document.getElementById('municipio');
        const selectCodigo = document.getElementById('codigo');
        const divResultado = document.getElementById('resultado');
        const preDados = document.getElementById('dados-completos');

        // 1. Baixar e ler o CSV
        Papa.parse(csvUrl, {
            download: true,
            header: true, // Garante que a primeira linha seja o nome das colunas
            skipEmptyLines: true,
            complete: function(results) {
                dadosGlobais = results.data;
                iniciarFiltros();
            }
        });

        // 2. Preencher a UF (Extrair valores únicos)
        function iniciarFiltros() {
            const ufsUnicas = [...new Set(dadosGlobais.map(item => item.UF))].sort();
            popularSelect(selectUf, ufsUnicas, 'Selecione a UF');
            selectUf.disabled = false;
        }

        // 3. Quando a UF mudar, preencher os Municípios
        selectUf.addEventListener('change', function() {
            const ufSelecionada = this.value;
            const municipiosFiltrados = dadosGlobais.filter(item => item.UF === ufSelecionada);
            const municipiosUnicos = [...new Set(municipiosFiltrados.map(item => item.Municipio))].sort(); // Use o nome exato da coluna da sua planilha
            
            popularSelect(selectMunicipio, municipiosUnicos, 'Selecione o Município');
            selectMunicipio.disabled = false;
            
            // Reseta o Código e Resultado
            selectCodigo.innerHTML = '<option value="">Selecione o Município primeiro</option>';
            selectCodigo.disabled = true;
            divResultado.style.display = 'none';
        });

        // 4. Quando o Município mudar, preencher os Códigos
        selectMunicipio.addEventListener('change', function() {
            const ufSelecionada = selectUf.value;
            const municipioSelecionado = this.value;
            
            const codigosFiltrados = dadosGlobais.filter(item => 
                item.UF === ufSelecionada && item.Municipio === municipioSelecionado
            );
            const codigosUnicos = [...new Set(codigosFiltrados.map(item => item.Codigo))].sort(); // Use o nome exato da coluna da sua planilha
            
            popularSelect(selectCodigo, codigosUnicos, 'Selecione o Código');
            selectCodigo.disabled = false;
            divResultado.style.display = 'none';
        });

        // 5. Quando o Código mudar, exibir os dados finais
        selectCodigo.addEventListener('change', function() {
            const ufSelecionada = selectUf.value;
            const municipioSelecionado = selectMunicipio.value;
            const codigoSelecionado = this.value;

            const linhaEncontrada = dadosGlobais.find(item => 
                item.UF === ufSelecionada && 
                item.Municipio === municipioSelecionado && 
                item.Codigo === codigoSelecionado
            );

            if (linhaEncontrada) {
                // Exibe a linha completa encontrada formatada em JSON para facilitar a visualização
                preDados.textContent = JSON.stringify(linhaEncontrada, null, 2);
                divResultado.style.display = 'block';
            }
        });

        // Função auxiliar para preencher os <select>
        function popularSelect(elemento, arrayDeValores, textoPadrao) {
            elemento.innerHTML = `<option value="">${textoPadrao}</option>`;
            arrayDeValores.forEach(valor => {
                if(valor) { // Evita criar opções em branco se houver falhas no CSV
                    elemento.innerHTML += `<option value="${valor}">${valor}</option>`;
                }
            });
        }
    </script>
</body>
</html>
