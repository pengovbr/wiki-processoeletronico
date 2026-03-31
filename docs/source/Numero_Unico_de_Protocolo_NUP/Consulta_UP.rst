Consulta de Dados
=================

Selecione as opções abaixo para filtrar os dados. A lista de municípios será carregada após a seleção da UF.

.. raw:: html

   <style>
     .form-group { margin-bottom: 15px; }
     select { width: 100%; padding: 8px; margin-top: 5px; max-width: 400px; }
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
     <select id="codigo" disabled><option value="">Selecione o Município primeiro</option></select>
   </div>

   <div id="resultado">
     <h3>Dados Encontrados:</h3>
     <pre id="dados-completos"></pre>
   </div>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>
   
   <script type="text/javascript">
     // 1. COLOQUE AQUI O LINK RAW DO SEU CSV NO GITHUB
     const csvUrl = 'https://raw.githubusercontent.com/pengovbr/wiki-processoeletronico/refs/heads/homologacao/docs/source/Numero_Unico_de_Protocolo_NUP/Codigos_UP_das_UF.csv';
     let dadosGlobais = [];

     const selectUf = document.getElementById('uf');
     const selectMunicipio = document.getElementById('municipio');
     const selectCodigo = document.getElementById('codigo');
     const divResultado = document.getElementById('resultado');
     const preDados = document.getElementById('dados-completos');

     // 2. Baixar e ler o CSV
     Papa.parse(csvUrl, {
       download: true,
       header: true,
       skipEmptyLines: true,
       complete: function(results) {
         dadosGlobais = results.data;
         iniciarFiltros();
       }
     });

     // 3. Preencher a UF
     function iniciarFiltros() {
       const ufsUnicas = [...new Set(dadosGlobais.map(item => item.UF))].sort();
       popularSelect(selectUf, ufsUnicas, 'Selecione a UF');
       selectUf.disabled = false;
     }

     // 4. Mudar UF -> Preencher Municípios
     selectUf.addEventListener('change', function() {
       const ufSelecionada = this.value;
       const municipiosFiltrados = dadosGlobais.filter(item => item.UF === ufSelecionada);
       const municipiosUnicos = [...new Set(municipiosFiltrados.map(item => item.Municipio))].sort();
       
       popularSelect(selectMunicipio, municipiosUnicos, 'Selecione o Município');
       selectMunicipio.disabled = false;
       
       selectCodigo.innerHTML = '<option value="">Selecione o Município primeiro</option>';
       selectCodigo.disabled = true;
       divResultado.style.display = 'none';
     });

     // 5. Mudar Município -> Preencher Códigos
     selectMunicipio.addEventListener('change', function() {
       const ufSelecionada = selectUf.value;
       const municipioSelecionado = this.value;
       
       const codigosFiltrados = dadosGlobais.filter(item => 
         item.UF === ufSelecionada && item.Municipio === municipioSelecionado
       );
       const codigosUnicos = [...new Set(codigosFiltrados.map(item => item.Codigo))].sort();
       
       popularSelect(selectCodigo, codigosUnicos, 'Selecione o Código');
       selectCodigo.disabled = false;
       divResultado.style.display = 'none';
     });

     // 6. Selecionar Código -> Exibir Resultado
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
         preDados.textContent = JSON.stringify(linhaEncontrada, null, 2);
         divResultado.style.display = 'block';
       }
     });

     // Função auxiliar para criar as opções
     function popularSelect(elemento, arrayDeValores, textoPadrao) {
       elemento.innerHTML = `<option value="">${textoPadrao}</option>`;
       arrayDeValores.forEach(valor => {
         if(valor) {
           elemento.innerHTML += `<option value="${valor}">${valor}</option>`;
         }
       });
     }
   </script>
