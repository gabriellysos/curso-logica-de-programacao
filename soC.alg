algoritmo "soComecaComC"
var
   soC: vetor[1..10] de caractere
   nome: caractere
   i, totalC: inteiro
   
inicio
   Para i <- 1 ate 10 faca
      Escreva("Digite o nome: ")
      Leia(nome)
      Se (copia(maiusc(nome), 1, 1) = "c") entao
         totalC <- totalC + 1
         soC[totalC] <- nome
      fimSe
   fimPara
   
   limpaTela
   EscrevaL("LISTAGEM - NOMES COM C")
   EscrevaL("----------------------")
   Para i <- 1 ate totalC faca
      EscrevaL(soC[i])
   fimPara

fimalgoritmo
