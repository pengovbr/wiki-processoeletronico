4.Certificado Digital
=====================





4.1.	Quais sãos os certificados digitais aceitos para realizar a assinatura qualificada?
----------------------------------------------------------------------------------------
  O módulo apenas aceita certificados emitidos pela ICP-Brasil. Alguns exemplos:
  

- Certificado em nuvem (Serpro ID, Certisign, Valid, Soluti, etc)

- Certificado A1 (arquivo PFX/P12).

  	**OBS1: O módulo não aceita certificados A3 físico (token/smartcard).**
  

4.2.	O usuário pode realizar a assinatura avançada utilizando o GOV.BR?
-----------------------------------------------------------------------
  Sim, o módulo possibilita a assinatura utilizando O GOV.BR.



  
4.3.	O módulo suporta certificados A1 e A3?
--------------------------------------------
  As versões lançadas (1.3.0 e 1.4.0) possuem apenas compatibilidade com certificado A3 em nuvem e A1.

  
4.4.	Preciso configurar algo para usar um certificado A1?
-------------------------------------------------------------------
  Não. Basta importar o arquivo PFX/P12 no momento da assinatura e digitar a sua senha.

  
4.5.	O módulo reconhece assinaturas realizadas com certificados emitidos por outros países do Mercosul?
-------------------------------------------------------------------------------------------------------
  Sim.  A API Validar reconhece assinaturas padrão Mercosul e exibe selos especiais.