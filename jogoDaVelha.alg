algoritmo "jogoDaVelha"
var
   tabuleiro: vetor[1..9] de caractere
   vencedor, vez: caractere
   jogoOn: logico
   i, j, k, cont: inteiro

procedimento mostrarTab()
inicio
   cont <- 1
   EscrevaL("+---+---+---+")
   Para i <- 1 ate 3 faca
      Escreva("| ")
      Para j <- 1 ate 3 faca
         Escreva(tabuleiro[cont], " | ")
         cont <- cont+1
      fimPara
      EscrevaL()
      EscrevaL("+---+---+---+")
   fimPara
fimProcedimento

procedimento movimentacao()
var
   resposta: inteiro
inicio
   EscrevaL("É a vez do jogador ", vez, "!")
   Escreva("Vai jogar em qual posição? ")
   Leia(resposta)
   Se (resposta < 1) ou (resposta > 9) entao
      EscrevaL("Posição INVÁLIDA!")
      movimentacao()
   senao
      Se(tabuleiro[resposta] <> "X") e (tabuleiro[resposta] <> "O") entao
         tabuleiro[resposta] <- vez
         checarFimJogo()
         Se (vez = "X") entao
            vez <- "O"
         senao
            vez <- "X"
         fimSe
         limpaTela
      senao
         EscrevaL("Posição INDISPONÍVEL!")
         movimentacao()
      fimSe
   fimSe
fimProcedimento

procedimento checarFimJogo()
inicio
   //Diagonais
   Se ((tabuleiro[1] = tabuleiro[5]) e (tabuleiro[5] = tabuleiro[9])) ou ((tabuleiro[3] = tabuleiro[5]) e (tabuleiro[5] = tabuleiro[7]))  entao
      jogoOn <- falso
      Se (tabuleiro[5] = "X") entao
         vencedor <- "X"
      senao
         vencedor <- "O"
      fimSe
   fimSe
   //Linhas
   Para i <- 1 ate 7 passo 3 faca
      j <- i+1
      k <- j+1
      jogoOn <- checagem(i,j,k)
   fimPara
   //Colunas
   Para i <- 1 ate 3 faca
      j <- i+3
      k <- j+3
      jogoOn <- checagem(i,j,k)
   fimPara
   //Empate
   cont <- 0
   Para i <- 1 ate 9 faca
      Se (tabuleiro[i] <> i) entao
         cont <- cont+1
      fimSe
   fimPara
   Se (cont = 9) entao
      jogoOn <- falso
      vencedor <- "empate"
   fimSe
fimProcedimento

funcao checagem(A, B, C: inteiro):logico
var
   S: logico
inicio
   S <- verdadeiro
   Se (tabuleiro[A] = tabuleiro[B]) e (tabuleiro[B] = tabuleiro[C]) entao
         S <- falso
         Se (tabuleiro[B] = "X") entao
            vencedor <- "X"
         senao
            vencedor <- "O"
         fimSe
      fimSe
   Retorne S
fimFuncao

inicio
   jogoOn <- verdadeiro
   vez <- "X"

   Para cont <- 1 ate 9 faca
      tabuleiro[cont] <- numpcarac(cont)
   fimPara

   Enquanto (jogoOn = verdadeiro) faca
      mostrarTab()
      movimentacao()
   fimEnquanto

   Se (jogoOn = falso) entao
      mostrarTab()
   fimSe

fimalgoritmo
