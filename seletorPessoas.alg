algoritmo "seletorPessoas"
var
   sexo, resposta: caractere
   idade, cabelo, qntHomens, qntMulheres: inteiro
inicio
   Repita
      EscrevaL("======================")
      EscrevaL("  SELETOR DE PESSOAS  ")
      EscrevaL("======================")
      Escreva("Qual o sexo? [M/F] ")
      Leia(sexo)
      EscrevaL("")
      Escreva("Qual a idade? ")
      Leia(idade)
      EscrevaL("")
      EscrevaL("Qual a cor do cabelo? ")
      EscrevaL("--------------------")
      EscrevaL("[1] Preto")
      EscrevaL("[2] Castanho")
      EscrevaL("[3] Loiro")
      EscrevaL("[4] Ruivo")
      Leia(cabelo)
      Se (cabelo="2") e (sexo="M") e (idade>18) entao
         qntHomens <- qntHomens+1
      senao
         Se (cabelo="3") e (sexo="F") e (idade>=25) e (idade<30) entao
         qntMulheres <- qntMulheres+1
         FimSe
      FimSe
      EscrevaL("")
      Escreva("Quer continuar? [S/N] ")
      Leia(resposta)
   Ate (resposta="N")
   EscrevaL("")
   EscrevaL("--------------------------")
   EscrevaL("      RESULTADO FINAL     ")
   EscrevaL("--------------------------")
   EscrevaL("Total de homens com mais de 18 anos e cabelos castanhos: ", qntHomens)
   EscrevaL("Total de mulheres entre 25 e 30 anos e cabelos loiros: ", qntMulheres)
fimalgoritmo
