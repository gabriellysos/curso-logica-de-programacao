algoritmo "numerosPrimos"
var
   contador, numero, contDivisiveis: inteiro
inicio
   contDivisiveis <- 0
   Escreva("Digite um n�mero: ")
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
      EscrevaL("O n�mero", numero, " � primo!")
   senao
      EscrevaL("O n�mero", numero, " n�o � primo :(")
   FimSe
fimalgoritmo
