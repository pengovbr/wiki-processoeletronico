Consulta de Código de UP
=================

Selecione a UF e o Município para encontrar o Código correspondente.

.. raw:: html

   <style>
     .form-group { margin-bottom: 15px; }
     select, input[type="text"] { width: 100%; padding: 8px; margin-top: 5px; max-width: 400px; box-sizing: border-box; }
     input[readonly] { background-color: #e9ecef; color: #495057; border: 1px solid #ced4da; cursor: not-allowed; }
     #resultado { margin-top: 20px; padding: 15px; background: #f4f4f4; border-radius: 5px; display: none; }
   </style>

   <div class="form-group">
     <label for="uf">UF:</label><br>
     <select id="uf" disabled><option value="">Carregando...</option></select>
   </div>

   <div class="form-group">
     <label for="municipio">Município:</label><br>
     <select id="municipio" disabled><option value="">Selecione a UF primeiro</option></select>
   </div>

   <div class="form-group">
     <label for="codigo">Código:</label><br>
     <input type="text" id="codigo" readonly placeholder="Aguardando seleção do município...">
   </div>

   <div id="resultado">
     <h3>Dados Encontrados:</h3>
     <pre id="dados-completos"></pre>
   </div>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>
   
  <script type="text/javascript">
     // 1. COLOQUE AQUI O SEU LINK RAW DO GITHUB
     const csvUrl = 'https://raw.githubusercontent.com/pengovbr/wiki-processoeletronico/refs/heads/homologacao/docs/source/Numero_Unico_de_Protocolo_NUP/Codigos_UP_das_UF.csv';
     let dadosGlobais = [];

     const selectUf = document.getElementById('uf');
     const selectMunicipio = document.getElementById('municipio');
     const inputCodigo = document.getElementById('codigo');
     const divResultado = document.getElementById('resultado');
     const preDados = document.getElementById('dados-completos');

     // 2. Baixar e ler o CSV
     Papa.parse(csvUrl, {
       download: true,
       header: true,
       skipEmptyLines: true,
       complete: function(results) {
         // VERIFICAÇÃO DE ERRO
         if (!results.data || results.data.length === 0) {
             alert("Erro: O arquivo CSV está vazio ou o link está incorreto.");
             return;
         }
         
         // Verifica se a coluna UF existe de verdade na planilha
         if (results.data[0].UF === undefined) {
             alert("Erro: A coluna 'UF' não foi encontrada. Verifique se o nome da coluna no CSV está exatamente como 'UF' (maiúsculo e sem espaços). Nomes das colunas encontradas: " + Object.keys(results.data[0]).join(", "));
             return;
         }

         dadosGlobais = results.data;
         iniciarFiltros();
       },
       error: function(erro) {
           alert("Erro ao tentar baixar o arquivo do GitHub: " + erro.message);
       }
     });

     // 3. Preencher a UF
     function iniciarFiltros() {
       const ufsUnicas = [...new Set(dadosGlobais.map(item => item.UF))].sort();
       popularSelect(selectUf, ufsUnicas, 'Selecione a UF');
       selectUf.disabled = false;
       selectUf.options[0].text = "Selecione a UF"; // Tira o texto "Carregando..."
     }

     // 4. Mudar UF -> Preencher Municípios
     selectUf.addEventListener('change', function() {
       const ufSelecionada = this.value;
       
       inputCodigo.value = '';
       divResultado.style.display = 'none';

       if (!ufSelecionada) {
         selectMunicipio.innerHTML = '<option value="">Selecione a UF primeiro</option>';
         selectMunicipio.disabled = true;
         return;
       }

       const municipiosFiltrados = dadosGlobais.filter(item => item.UF === ufSelecionada);
       
       // Verifica se a coluna Municipio existe
       if (municipiosFiltrados.length > 0 && municipiosFiltrados[0].Municipio === undefined) {
           alert("Erro: A coluna 'Municipio' não foi encontrada. Verifique letras maiúsculas ou acentos na sua planilha.");
           return;
       }

       const municipiosUnicos = [...new Set(municipiosFiltrados.map(item => item.Municipio))].sort();
       
       popularSelect(selectMunicipio, municipiosUnicos, 'Selecione o Município');
       selectMunicipio.disabled = false;
     });

     // 5. Mudar Município -> Preencher Código e Resultado automaticamente
     selectMunicipio.addEventListener('change', function() {
       const ufSelecionada = selectUf.value;
       const municipioSelecionado = this.value;
       
       if (!municipioSelecionado) {
         inputCodigo.value = '';
         divResultado.style.display = 'none';
         return;
       }

       const linhaEncontrada = dadosGlobais.find(item => 
         item.UF === ufSelecionada && item.Municipio === municipioSelecionado
       );
       
       if (linhaEncontrada) {
         inputCodigo.value = linhaEncontrada.Codigo || 'Código não cadastrado';
         preDados.textContent = JSON.stringify(linhaEncontrada, null, 2);
         divResultado.style.display = 'block';
       }
     });

     // Função auxiliar para criar as opções do select
     //function popularSelect(elemento, arrayDeValores, textoPadrao) {
     //  elemento.innerHTML = `<option value="">${textoPadrao}</option>`;
     //  arrayDeValores.forEach(valor => {
     //    if(valor && valor.trim() !== "") { // Evita linhas em branco indesejadas
     //      elemento.innerHTML += `<option value="${valor}">${valor}</option>`;
     //    }
     //  });
     //}
   </script>
