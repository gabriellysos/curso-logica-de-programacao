algoritmo "crian�aEsperan�a"
var
   doacao: inteiro
   valor: real
inicio
      EscrevaL("--------------------------")
      EscrevaL("    CRIAN�A ESPERAN�A    ")
      EscrevaL("--------------------------")
      EscrevaL("Obrigado por ajudar!")
      EscrevaL("[1] para doar R$10")
      EscrevaL("[2] para doar R$25")
      EscrevaL("[3] para doar R$50")
      EscrevaL("[4] para doar outro valor")
      EscrevaL("[5] para cancelar a doa��o")
      Leia(doacao)
      Escolha doacao
          Caso 1
               valor <- 10
          Caso 2
               valor <- 25
          Caso 3
               valor <- 50
          Caso 4
               Escreva("Digite o valor da doa��o: R$")
               Leia(valor)
          Caso 5
               EscrevaL("-------------------------")
               EscrevaL("Sua doa��o foi cancelada.")
               EscrevaL("[1] para fazer uma doa��o")
               EscrevaL("[2] para sair")
               EscrevaL("-------------------------")
               fimalgoritmo
      FimEscolha
      EscrevaL("-------------------------")
      EscrevaL("SUA DOA��O FOI DE R$", valor)
      EscrevaL("MUITO OBRIGADO! :D")
      EscrevaL("-------------------------")
fimalgoritmo
