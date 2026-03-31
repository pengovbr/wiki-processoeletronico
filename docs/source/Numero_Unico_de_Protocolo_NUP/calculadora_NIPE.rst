 Calculadora de DV do NIPE

=========================

A calculadora dos dígitos verificadores do NIPE é uma ferramenta que auxilia na identificação dos dígitos verificadores do NIPE de 20 dígitos, conforme fórmula
definida na documentação de apoio do produto.

Para usar a calculadora, informe os 18 primeiros dígitos do NIPE, como no exemplo:

.. raw:: html

   <table border="0" class="plain" align="center">
     <tbody>
       <tr>
         <td style="text-align: center">12</td>
         <td style="text-align: center">123</td>
         <td style="text-align: center">123</td>
         <td style="text-align: center">123456</td>
         <td style="text-align: center">1234</td>
         <td style="text-align: center"><strong>??</strong></td>
       </tr>
       <tr>
         <td style="text-align: center">Identificador de Origem</td>
         <td style="text-align: center">Instituição Vinculada</td>
         <td style="text-align: center">Unidade Protocolizadora</td>
         <td style="text-align: center">Sequencial</td>
         <td style="text-align: center">Ano</td>
         <td style="text-align: center">Dígitos verificadores</td>
       </tr>
     </tbody>
   </table>

.. raw:: html

   <h2 style="text-align: center">Calculadora dos dígitos verificadores do NIPE</h2>
   <p style="text-align: center">Coloque o NIPE sem pontos, barras ou traços (apenas números):</p>
   <p style="text-align: center">
     <input id="nup" type="text" maxlength="18" onkeypress="return EnviaFormulario(event);" />
     <button type="button" onclick="calculaDV()">Calcular</button>
   </p>
   <p id="resultado" style="text-align: center">.</p>

   <script type="text/javascript">
     function calculaDV() {
       var x, text;
       x = document.getElementById("nup").value;
       x = x.replace(/\D/g, "");
       var tamanhoNIPE = x.length;

       if (isNaN(x) || x <= 0 || tamanhoNIPE != 18) {
         text = "Entrada inválida. Digite o NIPE com 18 dígitos para cálculo do DV";
       } else {
         var stringDoNIPE = x.toString();
         var j = 2;
         var soma = 0;
         for (var i = stringDoNIPE.length - 1; i >= 0; i--) {
           var posicao = stringDoNIPE.charAt(i).valueOf();
           soma = soma + j * posicao;
           j++;
         }

         var resto = soma % 11;
         resto = 11 - resto;
         if (resto > 9) resto -= 10;
         var primeiroDV = resto;

         stringDoNIPE = stringDoNIPE + primeiroDV;
         soma = 0;
         j = 2;
         for (var i = stringDoNIPE.length - 1; i >= 0; i--) {
           var posicao = stringDoNIPE.charAt(i).valueOf();
           soma = soma + j * posicao;
           j++;
         }

         var resto = soma % 11;
         resto = 11 - resto;
         if (resto > 9) resto -= 10;
         var segundoDV = resto;

         text = "O DV gerado foi " + primeiroDV + segundoDV + ", resultando em " +
           x.slice(0, 2) + "." + x.slice(3, 8) + "." + x.slice(9, 14) + "/" + x.slice(15, 18) + "-" + primeiroDV + segundoDV;
       }

       document.getElementById("resultado").innerHTML = text;
     }

     function OnEnter(evt) {
       var key_code = evt.keyCode ? evt.keyCode : evt.charCode ? evt.charCode : evt.which;
       return key_code == 13;
     }

     function EnviaFormulario(e) {
       if (OnEnter(e)) {
         calculaDV();
         return false;
       } else {
         return true;
       }
     }
   </script>
  
