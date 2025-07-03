Calculadora de DV do NUP
=========================

A calculadora dos dígitos verificadores do NUP é uma ferramenta que auxilia na identificação dos dígitos verificadores do NUP de 17 dígitos, conforme fórmula
definida no anexo da `Portaria Interministerial nº 11/2019 <https://www.in.gov.br/en/web/dou/-/portaria-interministerial-n-11-de-25-de-novembro-de-2019-229645093>`_,
que trata da padronização do NUP no Governo Federal.

Para usar a calculadora, informe os 15 primeiros dígitos do NUP, como no exemplo:

.. raw:: html

   <table border="0" class="plain" align="center">
     <tbody>
       <tr>
         <td style="text-align: center">12345</td>
         <td style="text-align: center">123456</td>
         <td style="text-align: center">1234</td>
         <td style="text-align: center"><strong>??</strong></td>
       </tr>
       <tr>
         <td>Código da UP</td>
         <td>Sequencial numérico</td>
         <td>Ano</td>
         <td>Dígitos verificadores</td>
       </tr>
     </tbody>
   </table>

As letras **D** e **V** em NUPs antigos podem ser substituídas pelos dígitos calculados aqui.

.. raw:: html

   <h2 style="text-align: center">Calculadora dos dígitos verificadores do NUP</h2>
   <p style="text-align: center">Coloque o NUP sem pontos, barras ou traços (apenas números):</p>
   <p style="text-align: center">
     <input id="nup" type="text" maxlength="19" onkeypress="return EnviaFormulario(event);" />
     <button type="button" onclick="calculaDV()">Calcular</button>
   </p>
   <p id="resultado" style="text-align: center">.</p>

   <script type="text/javascript">
     function calculaDV() {
       var x, text;
       x = document.getElementById("nup").value;
       x = x.replace(/\D/g, "");
       var tamanhoNUP = x.length;

       if (isNaN(x) || x <= 0 || tamanhoNUP != 15) {
         text = "Entrada inválida. Digite o NUP com 15 dígitos para cálculo do DV";
       } else {
         var stringDoNUP = x.toString();
         var j = 2;
         var soma = 0;
         for (var i = stringDoNUP.length - 1; i >= 0; i--) {
           var posicao = stringDoNUP.charAt(i).valueOf();
           soma = soma + j * posicao;
           j++;
         }

         var resto = soma % 11;
         resto = 11 - resto;
         if (resto > 9) resto -= 10;
         var primeiroDV = resto;

         stringDoNUP = stringDoNUP + primeiroDV;
         soma = 0;
         j = 2;
         for (var i = stringDoNUP.length - 1; i >= 0; i--) {
           var posicao = stringDoNUP.charAt(i).valueOf();
           soma = soma + j * posicao;
           j++;
         }

         var resto = soma % 11;
         resto = 11 - resto;
         if (resto > 9) resto -= 10;
         var segundoDV = resto;

         text = "O DV gerado foi " + primeiroDV + segundoDV + ", resultando em " +
           x.slice(0, 5) + "." + x.slice(5, 11) + "/" + x.slice(11, 15) + "-" + primeiroDV + segundoDV;
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
 
