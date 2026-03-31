Consulta de Dados
=================

Selecione a UF e o Município para encontrar o Código correspondente.

.. raw:: html

   <style>
     .form-group { margin-bottom: 15px; }
     select, input[type="text"] { width: 100%; padding: 8px; margin-top: 5px; max-width: 400px; box-sizing: border-box; }
     input[readonly] { background-color: #e9ecef; color: #495057; border: 1px solid #ced4da; cursor: not-allowed; }
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

   <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>
   
   <script type="text/javascript">
     const csvUrl = 'https://raw.githubusercontent.com/pengovbr/wiki-processoeletronico/refs/heads/homologacao/docs/source/Numero_Unico_de_Protocolo_NUP/Codigos_UP_das_UF.csv'; // Lembre-se de colocar sua URL
     let dadosGlobais = [];

     const selectUf = document.getElementById('uf');
     const selectMunicipio = document.getElementById('municipio');
     const inputCodigo = document.getElementById('codigo');

     // 1. Baixar e ler o CSV
     Papa.parse(csvUrl, {
       download: true,
       header: true,
       skipEmptyLines: true,
       complete: function(results) {
         dadosGlobais = results.data;
         iniciarFiltros();
       }
     });

     // 2. Preencher a UF
     function iniciarFiltros() {
       const ufsUnicas = [...new Set(dadosGlobais.map(item => item.UF))].sort();
       popularSelect(selectUf, ufsUnicas, 'Selecione a UF');
       selectUf.disabled = false;
     }

     // 3. Mudar UF -> Preencher Municípios e limpar Código
     selectUf.addEventListener('change', function() {
       const ufSelecionada = this.value;
       
       // Limpa o campo do código sempre que a UF mudar
       inputCodigo.value = '';

       if (!ufSelecionada) {
         selectMunicipio.innerHTML = '<option value="">Selecione a UF primeiro</option>';
         selectMunicipio.disabled = true;
         return;
       }

       const municipiosFiltrados = dadosGlobais.filter(item => item.UF === ufSelecionada);
       const municipiosUnicos = [...new Set(municipiosFiltrados.map(item => item.Municipio))].sort();
       
       popularSelect(selectMunicipio, municipiosUnicos, 'Selecione o Município');
       selectMunicipio.disabled = false;
     });

     // 4. Mudar Município -> Preencher Código automaticamente
     selectMunicipio.addEventListener('change', function() {
       const ufSelecionada = selectUf.value;
       const municipioSelecionado = this.value;
       
       if (!municipioSelecionado) {
         inputCodigo.value = '';
         return;
       }

       // Busca a linha exata correspondente à UF e Município
       const linhaEncontrada = dadosGlobais.find(item => 
         item.UF === ufSelecionada && item.Municipio === municipioSelecionado
       );
       
       // Preenche apenas a caixinha do código
       if (linhaEncontrada) {
         inputCodigo.value = linhaEncontrada.Codigo || 'Código não cadastrado';
       } else {
         inputCodigo.value = 'Código não encontrado';
       }
     });

     // Função auxiliar (mantida para evitar repetição de código)
     function popularSelect(elemento, arrayDeValores, textoPadrao) {
       elemento.innerHTML = `<option value="">${textoPadrao}</option>`;
       arrayDeValores.forEach(valor => {
         if(valor && valor.trim() !== "") {
           elemento.innerHTML += `<option value="${valor}">${valor}</option>`;
         }
       });
     }
   </script>
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
     }
   </script>
