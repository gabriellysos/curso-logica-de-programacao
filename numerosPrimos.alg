algoritmo "numerosPrimos"
var
   contador, numero, contDivisiveis: inteiro
inicio
   contDivisiveis <- 0
   Escreva("Digite um número: ")
   Leia(numero)
   contador <- numero
   Escreva("Divisores:")
   Repita
      Se (numero % contador = 0) entao
         Escreva(numero/contador)
         contDivisiveis <- contDivisiveis+1
      FimSe
      contador <- contador-1
   Ate (contador<1)
   EscrevaL("")
   Se (contDivisiveis=2) entao
      EscrevaL("O número", numero, " é primo!")
   senao
      EscrevaL("O número", numero, " não é primo :(")
   FimSe
fimalgoritmo
