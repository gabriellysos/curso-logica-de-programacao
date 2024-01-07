algoritmo "dissecandoMatrizes"
var
   matriz: vetor[1..4, 1..4] de inteiro
   linha, coluna, espaco, opcao: inteiro
   
procedimento menu(var X: inteiro): inteiro
inicio
   EscrevaL("MENU DE OPÇÕES")
   EscrevaL("=====================")
   EscrevaL("[1] Exibir a matriz completa")
   EscrevaL("[2] Diagonal principal")
   EscrevaL("[3] Triângulo superior")
   EscrevaL("[4] Triângulo inferior")
   EscrevaL("[5] Sair")
   Escreva("===== OPÇÃO: ")
   Leia(X)
fimProcedimento

procedimento exibicao()
inicio
   Escolha opcao
      Caso 1
         Para linha <- 1 ate 4 faca
            Para coluna <- 1 ate 4 faca
               Escreva(matriz[linha,coluna]:4)
            fimPara
         EscrevaL()
         fimPara
      Caso 2
         Para linha <- 1 ate 4 faca
            EscrevaL(matriz[linha,linha]:4)
            Para espaco <- 1 ate linha faca
               Escreva("    ")
            fimPara
         fimPara
      Caso 3
         Para linha <- 1 ate 3 faca
            Para espaco <- 1 ate linha faca
               Escreva("    ")
            fimPara
            Para coluna <- linha+1 ate 4 faca
               Escreva(matriz[linha,coluna]:4)
            fimPara
            EscrevaL()
         fimPara
      Caso 4
         Para linha <- 2 ate 4 faca
            EscrevaL()
            Para coluna <- 1 ate linha-1 faca
               Escreva(matriz[linha,coluna]:4)
            fimPara
         fimPara
      Caso 5
         limpaTela
         EscrevaL("Encerrando..")
      outroCaso
         EscrevaL("Opção INVÁLIDA!")
   fimEscolha
fimProcedimento
   

inicio
   Para linha <- 1 ate 4 faca
      Para coluna <- 1 ate 4 faca
         Escreva("Digite o valor da posição [", linha, ",", coluna, " ]: ")
         Leia(matriz[linha,coluna])
      fimPara
   fimPara
   limpaTela

   Repita
      menu(opcao)
      limpaTela
      exibicao()
      EscrevaL()
   Ate (opcao = 5)

fimalgoritmo
