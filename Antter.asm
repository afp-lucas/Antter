
; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco              0000 0000
; 256 marrom            0001 0000
; 512 verde             0010 0000
; 768 oliva             0011 0000
; 1024 azul marinho         0100 0000
; 1280 roxo             0101 0000
; 1536 teal             0110 0000
; 1792 prata            0111 0000
; 2048 cinza            1000 0000
; 2304 vermelho           1001 0000
; 2560 lima             1010 0000
; 2816 amarelo            1011 0000
; 3072 azul             1100 0000
; 3328 rosa             1101 0000
; 3584 aqua             1110 0000
; 3840 branco           1111 0000

;********************************************************
;                        ANTTER
;********************************************************


jmp main 

Fundo: var #1200                 ; declaracao da variavel do fundo
posFormigaC: var #1              ; declaracao da variavel da posicao da cabeca da formiga
posFormigaAnteriorC: var #1      ; declaracao da variavel da posicao anterior da cabeca da formiga
posFormigaB: var #1              ; declaracao da variavel da posicao da bunda da formiga
posFormigaAnteriorB: var #1      ; declaracao da variavel da posicao anterior da bunda da formiga

; declaracao das variaveis da posicao dos carros, no seguinte formato:
;   posicao da parte superior do carro
;   posicao anterior da parte superior do carro
;   posicao da parte inferior do carro
;   posicao anterior da parte inferior do carro

posCarro11: var #1              
posCarro11_Anterior: var #1
posCarro12: var #1
posCarro12_Anterior: var #1

posCarro21: var #1
posCarro21_Anterior: var #1
posCarro22: var #1
posCarro22_Anterior: var #1

posCarro31: var #1
posCarro31_Anterior: var #1
posCarro32: var #1
posCarro32_Anterior: var #1

posCarro41: var #1
posCarro41_Anterior: var #1
posCarro42: var #1
posCarro42_Anterior: var #1

posCarro51: var #1
posCarro51_Anterior: var #1
posCarro52: var #1
posCarro52_Anterior: var #1

posCarro61: var #1
posCarro61_Anterior: var #1
posCarro62: var #1
posCarro62_Anterior: var #1

posCarro71: var #1
posCarro71_Anterior: var #1
posCarro72: var #1
posCarro72_Anterior: var #1

posCarro81: var #1
posCarro81_Anterior: var #1
posCarro82: var #1
posCarro82_Anterior: var #1

; declaracao das variaveis da posicao dos troncos, no seguinte formato:
;   posicao da parte superior do tronco
;   posicao anterior da parte superior do tronco
;   posicao da parte inferior do tronco
;   posicao anterior da parte inferior do tronco

posMadeira11: var #1
posMadeira11_Anterior: var #1
posMadeira12: var #1
posMadeira12_Anterior: var #1

posMadeira21: var #1
posMadeira21_Anterior: var #1
posMadeira22: var #1
posMadeira22_Anterior: var #1

posMadeira31: var #1
posMadeira31_Anterior: var #1
posMadeira32: var #1
posMadeira32_Anterior: var #1

posMadeira41: var #1
posMadeira41_Anterior: var #1
posMadeira42: var #1
posMadeira42_Anterior: var #1

posMadeira51: var #1
posMadeira51_Anterior: var #1
posMadeira52: var #1
posMadeira52_Anterior: var #1

posMadeira61: var #1
posMadeira61_Anterior: var #1
posMadeira62: var #1
posMadeira62_Anterior: var #1

posMadeira71: var #1
posMadeira71_Anterior: var #1
posMadeira72: var #1
posMadeira72_Anterior: var #1

;---- Inicio do Programa Principal -----

main:
  
  call printINICIO_Screen

  Comecar:
  call printFundoScreen

  loadn r0, #1180                 ; inicializar as variaveis posFormigaB e posFormigaAnteriorB com a posicao inicial da bunda da formiga 
  store posFormigaB, r0
  store posFormigaAnteriorB, r0

  loadn r0, #1140                 ; inicializar as variaveis posFormigaC e posFormigaAnteriorC com a posicao inicial da cabeca da formiga
  store posFormigaC, r0
  store posFormigaAnteriorC, r0
  
  ; inicializar as variaveis posCarroXY e posCarroXY_Anterior com a posicao inicial das partes superior(XY) e inferior(X(Y+1)) dos carros
  
  loadn r0, #480                  
  store posCarro11, r0
  store posCarro11_Anterior, r0
  
  loadn r0, #520
  store posCarro12, r0
  store posCarro12_Anterior, r0
  
  loadn r0, #599
  store posCarro21, r0
  store posCarro21_Anterior, r0
  
  loadn r0, #639
  store posCarro22, r0
  store posCarro22_Anterior, r0
  
  loadn r0, #666
  store posCarro31, r0
  store posCarro31_Anterior, r0
  
  loadn r0, #706
  store posCarro32, r0
  store posCarro32_Anterior, r0
  
  loadn r0, #737
  store posCarro41, r0
  store posCarro41_Anterior, r0
  
  loadn r0, #777
  store posCarro42, r0
  store posCarro42_Anterior, r0
  
  loadn r0, #832
  store posCarro51, r0
  store posCarro51_Anterior, r0
  
  loadn r0, #872
  store posCarro52, r0
  store posCarro52_Anterior, r0
  
  loadn r0, #891
  store posCarro61, r0
  store posCarro61_Anterior, r0
  
  loadn r0, #931
  store posCarro62, r0
  store posCarro62_Anterior, r0
  
  loadn r0, #991
  store posCarro71, r0
  store posCarro71_Anterior, r0
  
  loadn r0, #1031
  store posCarro72, r0
  store posCarro72_Anterior, r0
  
  loadn r0, #1049
  store posCarro81, r0
  store posCarro81_Anterior, r0
  
  loadn r0, #1089
  store posCarro82, r0
  store posCarro82_Anterior, r0
  
   ; inicializar as variaveis posMadeiraXY e posMadeiraXY_Anterior com a posicao inicial das partes superior(XY) e inferior(X(Y+1)) dos troncos
   
  loadn r0, #320
  store posMadeira11, r0
  store posMadeira11_Anterior, r0
  
  loadn r0, #360
  store posMadeira12, r0
  store posMadeira12_Anterior, r0
  
  loadn r0, #337
  store posMadeira21, r0
  store posMadeira21_Anterior, r0
  
  loadn r0, #377
  store posMadeira22, r0
  store posMadeira22_Anterior, r0
  
  loadn r0, #347
  store posMadeira31, r0
  store posMadeira31_Anterior, r0
  
  loadn r0, #387
  store posMadeira32, r0
  store posMadeira32_Anterior, r0
  
  loadn r0, #267
  store posMadeira41, r0
  store posMadeira41_Anterior, r0
  
  loadn r0, #307
  store posMadeira42, r0
  store posMadeira42_Anterior, r0
  
  loadn r0, #162
  store posMadeira51, r0
  store posMadeira51_Anterior, r0
  
  loadn r0, #202
  store posMadeira52, r0
  store posMadeira52_Anterior, r0
  
  loadn r0, #185
  store posMadeira61, r0
  store posMadeira61_Anterior, r0
  
  loadn r0, #225
  store posMadeira62, r0
  store posMadeira62_Anterior, r0
  
  loop:
  
  ; chamar todas as rotinas 
    call MoveFormiga
    call Move_Carro1
    call Move_Carro2
    call Move_Carro3
    call Move_Carro4
    call Move_Carro5
    call Move_Carro6
    call Move_Carro7
    call Move_Carro8
    call Move_Madeira1
    call Move_Madeira2
    call Move_Madeira3
    call Move_Madeira4
    call Move_Madeira5
    call Move_Madeira6
    
    load r0, posFormigaC          ; coloca a posicao da formiga no r0
    
    ; coloca a posicao da parte superior do carroX no r1
    ; compara a posicao do carro com a posicao da formiga
    ; se igual, vai para a funcao Fim
    
    load r1, posCarro11           
    cmp r1, r0                    
    jeq Fim                       
    
    load r1, posCarro21
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro31
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro41
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro51
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro61
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro71
    cmp r1, r0
    jeq Fim
    
    load r1, posCarro81
    cmp r1, r0
    jeq Fim
    
    loadn r1, #20                 ;compara a posicao da formiga com a posicao da maça para verificar se a formiga ganhou
    cmp r1, r0
    ;jeq Fim                       ;se igual, vai para a funcao Fim
    jeq Ganhou
    
    ;Formiga Afoga:
    
    loadn r2, #40                 ; 40 eh o numero de caracteres por linha
    div r1, r0, r2                ; divide a posicao da cabeca da formiga por 40 para descobrir o numero de linha da formiga
    
    loadn r2, #8                  ; linha da primeira fila de madeira
    cmp r1, r2                    ; compara a linha da formiga com a linha da madeira
    jeq Morre8                    ; se igual, formiga vai pra funcao Morre8
    
    loadn r2, #6                  ; linha da primeira fila de madeira
    cmp r1, r2                    ; compara a linha da formiga com a linha da madeira
    jeq Morre6                    ; se igual, formiga vai pra funcao Morre6
    
    loadn r2, #4                  ; linha da primeira fila de madeira
    cmp r1, r2                    ; compara a linha da formiga com a linha da madeira
    jeq Morre4                    ; se igual, formiga vai pra funcao Morre4
    
    jmp Continue                  ; se a formiga nao estiver em nenhuma dessas linhas, vai para a funcao Continue
    
    ; FUNCOES MORRE 8, 6 E 4:
    ; coloca a posicao da madeira no r3, compara a posicao da madeira com a posicao da formiga
    ; se as posicoes forem iguais, continua igual
    ; se a posicao da formiga for diferente de todas as posicoes das madeiras na linha, a formiga afoga e chama a funcao Fi
    Morre8:
       load r3, posMadeira11
       cmp r3, r0
       jeq Continue
       
       load r3, posMadeira21
       cmp r3, r0
       jeq Continue
       
       load r3, posMadeira31
       cmp r3, r0
       jeq Continue
       
       jmp Fim
    
    Morre6:
       load r3, posMadeira41
       cmp r3, r0
       jeq Continue
       
       jmp Fim
       
    Morre4:
       load r3, posMadeira51
       cmp r3, r0
       jeq Continue
       
       load r3, posMadeira61
       cmp r3, r0
       jeq Continue
       
       jmp Fim
;   ------------------------------   ;
    ; chama o delay e continua o loop
    Continue:
    call Delay
    jmp loop
    
  Fim:
    call printGAMEOVERScreen
    ;loadn r0, 'caracter'
    ;loadn r1, #poscição tela
    ;outchar r0, r1
    ;call delay
    
    call AperteEspaco
    jmp Comecar

    halt
  
  Ganhou:
    call printFinal_letrsScreen
    call AperteEspaco
    jmp main
  
;---- Fim do Programa Principal -----


;********************************************************
;                  Inicio das Subrotinas
;********************************************************

;---- Formigas-----

MoveFormiga:
  push r1
  push r2
  call Atualiza_Formiga           ; chama a funcao Atualiza_Formiga para atualizar a posicao da formiga
  
  load r1, posFormigaC            ; coloca nos registradores r1 e r2 as posicoes da cabeca e bunda da formiga
  load r2, posFormigaB
  
  call Formiga_Apaga              ; chama as funcoes apaga e desenha para apagar as formigas da posicao e redesenha-las na proxima
  call Formiga_Desenha
  
  
  pop r1
  pop r2
  rts


Atualiza_Formiga:
  push r0
  push r1
  push r2
  push r3
  push r4
  
  load r0, posFormigaC            ; coloca nos registradores r0 e r4 as posicoes da cabeca e bunda da formiga
  load r4, posFormigaB

  inchar r1                       ; le o input do teclado

  loadn r2, #'a'                  ; coloca o 'a' no r2 e compara com o input do teclado, se igual, vai para a funcao MoveFormiga_RecalculaPos_A
  cmp r1, r2
  jeq MoveFormiga_RecalculaPos_A

  loadn r2, #'d'                  ; coloca o 'd' no r2 e compara com o input do teclado, se igual, vai para a funcao MoveFormiga_RecalculaPos_D
  cmp r1, r2
  jeq MoveFormiga_RecalculaPos_D

  loadn r2, #'w'                  ; coloca o 'w' no r2 e compara com o input do teclado, se igual, vai para a funcao MoveFormiga_RecalculaPos_W
  cmp r1, r2
  jeq MoveFormiga_RecalculaPos_W

  loadn r2, #'s'                  ; coloca o 's' no r2 e compara com o input do teclado, se igual, vai para a funcao MoveFormiga_RecalculaPos_S
  cmp r1, r2
  jeq MoveFormiga_RecalculaPos_S

MoveFormiga_Fim: 

  store posFormigaC, r0           ; muda a posicao da formiga(cabeca e bunda) com os valores do r0 e r4
  store posFormigaB, r4 

  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

MoveFormiga_RecalculaPos_A:
  loadn r1, #40                   ; guarda 40 no r1
  loadn r2, #0                    ; guarda 0 no r2
  mod r1, r0, r1                  ; calcula modulo entre a posicao da formiga e 40, para achar a pocisao dela na linha
  cmp r1, r2                      ; compara para ver se a formiga nao esta no canto esquerdo da tela
  jeq MoveFormiga_Fim             ; se esta no canto esquerdo vai para Moveformiga_fim 

  dec r0                          ; decrementa posicao da cabeca e da bunda da formiga para ela ir para a esquerda
  dec r4                          
  jmp MoveFormiga_Fim             ; vai para moveformiga_fim
  
MoveFormiga_RecalculaPos_D:
  loadn r1, #40                  ; guarda 40 no r1
  loadn r2, #39                  ; guarda 39 no r2
  mod r1, r0, r1                 ; calcula modulo entre a posicao da formiga e 40, para achar a pocisao dela na linha
  cmp r1, r2                     ; compara para ver se a formiga nao esta no canto direito da tela
  jeq MoveFormiga_Fim            ; vai para moveformiga_fim

  inc r0                         ; incrementa posicao da cabeca e da bunda da formiga para ela ir para a direita
  inc r4
  jmp MoveFormiga_Fim            ; vai para moveformiga_fim

MoveFormiga_RecalculaPos_W:
  loadn r1, #40                  ; guarda 40 no r1
  cmp r0, r1                     ; compara posicao da formiga com 40 para ver se ela esta no topo da tela
  jle MoveFormiga_Fim            ; vai para moveformiga_fim

  sub r0, r0, r1                 ; subtrai a posicao da cabeca e bunda por 40 duas vezes para mover a formiga para cima, 2 linhas
  sub r4, r4, r1                 
  sub r0, r0, r1                
  sub r4, r4, r1                 
  
  jmp MoveFormiga_Fim            ; vai para moveformiga_fim

MoveFormiga_RecalculaPos_S:
  loadn r1, #1159                ; guarda 1159 no r1
  cmp r0, r1                     ; compara posicao da formiga com 1159 para ver se ela esta na parte de baixo da tela
  jgr MoveFormiga_Fim            ; vai para moveformiga_fim

  loadn r1, #40                  ; guarda 40 no r1
  
  add r0, r0, r1                 ; adiciona a posicao da cabeca e bunda por 40 duas vezes para mover a formiga para baixo, 2 linhas
  add r4, r4, r1
  add r0, r0, r1
  add r4, r4, r1
  
  jmp MoveFormiga_Fim            ; vai para moveformiga_fim
  
Formiga_Desenha:
  push r3
  push r4
  
  loadn r4, #256                 ; guarda 256 no r4 para cor da formiga
  
  loadn r3, #8                   ; guarda 8 no r3 para o caracter da cabeca da formiga
  add r3, r3, r4                 ; adiciona os dois para colorir a cabeca
  outchar r3, r1                 ; print da cabeca na posicao salva em r1
  store posFormigaAnteriorC, r1  ; salva a posicao anterior da cabeca
  
  loadn r3, #9                   ; guarda 9 no r3 para o caracter da bunda da formiga
  add r3, r3, r4                 ; adiciona os dois para colorir a bunda
  outchar r3, r2                 ; print da bunda na posicao salva em r2
  store posFormigaAnteriorB, r2  ; salva a posicao anterior da bunda
  
  pop r4
  pop r3
  rts

Formiga_Apaga:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo              ; guarda o fundo em r0
  loadn r3, #40                 ; guarda 40 em r3
  
  load r1, posFormigaAnteriorC  ; guarda a posicao anterior da cabeca em r1
  add r2, r1, r0                ; soma a posicao da formiga com o fundo para achar a posicao do fundo a ser desenhada
  loadi r5, r2                  ; coloca a direcao do r2, com o fundo, no r5
  outchar r5, r1                ; print do fundo por cima da formiga
  
  load r1, posFormigaAnteriorB  ; guarda a posicao anterior da bunda em r1
  add r2, r1, r0                ; soma a posicao da formiga com o fundo para achar a posicao do fundo a ser desenhada
  loadi r5, r2                  ; coloca a direcao do r2, com o fundo, no r5
  outchar r5, r1                ; print do fundo por cima da formiga
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

;---- Delay -----

Delay:
  push r0
  push r1

  loadn r1, #15                ; guarda 15 no r1

  Delay_Volta2:                ; loop que acontecera 15 vezes para causar o delay
    loadn r0, #3000            ; guarda 3000 no r0

  Delay_Volta1:                ; loop que acontecera 3000 vezes antes de repetir o delay_volta2 e tambem ocorrera 15 vezes 
    dec r0                     ; decrementa r0
    jnz Delay_Volta1           ; refaz o loop ate r0 ser igual a 0
    dec r1                     ; decrementa r1
    jnz Delay_Volta2           ; refaz o loop ate r1 ser igual a 0
  
  pop r1
  pop r2

  rts
  
;---- Carros -----
;Funcao move_carro:
;chama funcoes para apagar, redesenhar e atualizar as pocicoes dos carros


Move_Carro1:

  call Apaga_Carro1
  call Desenha_Carro1
  call Atualiza_Carro_Direita1

  rts

Atualiza_Carro_Direita1:       
  push r0
  push r1
  push r2
  
  load r0, posCarro11           ; guarda posicao do carroX em r0
  inc r0                        ; incrementa posicao do carroX para move-lo a direita 
  ;loadn r1, #40
  loadn r2, #520                ; guarda 520 no r2 
  cmp r0, r2                    ; compara posicao do carroX com r2 para ver se chegou ao fim da linha
  jeq Carro_Fim1                ; se igual pula para carro_fimX
  
  store posCarro11, r0          ; guarda a posicao de r0 na posicao do carroX
  load r0, posCarro12           ; guarda a posicao inferior do carroX no r0 
  inc r0                        ; incrementa o r0 para mover o carro para a direita
  store posCarro12, r0          ; guarda a nova posicao inferior do carro no posCarroX
  jmp Atuliza_Fim1              ; se igual pula para Atualiza_fimX
  
  Carro_Fim1:
    loadn r2, #480              ; guarda em r2 a posicao do inicio da linha
    store posCarro11, r2        ; muda a posicao superior do carro para a posicao salva em r2
    loadn r2, #520              ; guarda em r2 a posicao do inicio da linha
    store posCarro12, r2        ; muda a posicao inferior do carro para a posicao salva em r2
    jmp Atuliza_Fim1
  
  Atuliza_Fim1:
  pop r2
  pop r1
  pop r0
  rts

Desenha_Carro1:
  push r0
  push r1
  push r2
  
  load r0, posCarro11            ; guarda a posicao do carro em r0
  loadn r1, #'x'                 ; guarda o caracter da parte superior do carro em r1
  outchar r1, r0                 ; imprime o caracter da superior do carro na posicao do carro
  store posCarro11_Anterior, r0  ; salva a posicao atual como posicao anterior
  
  ;parte de baixo de carro
  load r0, posCarro12
  outchar r1, r0
  store posCarro12_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro1:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo               ; guarda em r0 a posicao do fundo
  
  load r1, posCarro11_Anterior   ; guarda em r1 a posicao anterior da parte superior do carro
  add r2, r1, r0                 ; r2 = r1 + r0
  loadi r5, r2                   ; guarda em r5 o conteudo de r2
  outchar r5, r1                 ; imprime o caracter de r5 na posicao anterior da parte superior do carro
  
  ; o mesmo para a parte inferior do carro
  
  load r1, posCarro12_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

  
Move_Carro2:
 call Apaga_Carro2
 call Desenha_Carro2
 call Atualiza_Carro_Esq2

 rts

Atualiza_Carro_Esq2:
  push r0
  push r1
  push r2
  
  load r0, posCarro21
  dec r0
  ;loadn r1, #40
  loadn r2, #560
  cmp r0, r2
  jeq Carro_Fim2
  
  store posCarro21, r0
  load r0, posCarro22
  dec r0
  store posCarro22, r0
  jmp Atuliza_Fim2
  
  Carro_Fim2:
    loadn r2, #599
    store posCarro21, r2
    loadn r2, #639
    store posCarro22, r2
    jmp Atuliza_Fim2
  
  Atuliza_Fim2:
  pop r2
  pop r1
  pop r0
  rts
  
Desenha_Carro2:
  push r0
  push r1
  push r2
  
  load r0, posCarro21
  loadn r1, #'x'
  outchar r1, r0
  store posCarro21_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro22
  outchar r1, r0
  store posCarro22_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro2:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro21_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro22_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  
  
  
Move_Carro3:
 call Apaga_Carro3
 call Desenha_Carro3
 call Atualiza_Carro_Esq3

 rts

Atualiza_Carro_Esq3:
  push r0
  push r1
  push r2
  
  load r0, posCarro31
  dec r0
  ;loadn r1, #40
  loadn r2, #640
  cmp r0, r2
  jeq Carro_Fim3
  
  store posCarro31, r0
  load r0, posCarro32
  dec r0
  store posCarro32, r0
  jmp Atuliza_Fim3
  
  Carro_Fim3:
    loadn r2, #679
    store posCarro31, r2
    loadn r2, #719
    store posCarro32, r2
    jmp Atuliza_Fim3
  
  Atuliza_Fim3:
  pop r2
  pop r1
  pop r0
  rts
  
Desenha_Carro3:
  push r0
  push r1
  push r2
  
  load r0, posCarro31
  loadn r1, #'x'
  outchar r1, r0
  store posCarro31_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro32
  outchar r1, r0
  store posCarro32_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro3:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro31_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro32_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  
  
  Move_Carro4:

  call Apaga_Carro4
  call Desenha_Carro4
  call Atualiza_Carro_Direita4

  rts

Atualiza_Carro_Direita4:
  push r0
  push r1
  push r2
  
  load r0, posCarro41
  inc r0
  ;loadn r1, #40
  loadn r2, #759
  cmp r0, r2
  jeq Carro_Fim4
  
  store posCarro41, r0
  load r0, posCarro42
  inc r0
  store posCarro42, r0
  jmp Atuliza_Fim4
  
  Carro_Fim4:
    loadn r2, #720
    store posCarro41, r2
    loadn r2, #760
    store posCarro42, r2
    jmp Atuliza_Fim4
  
  Atuliza_Fim4:
  pop r2
  pop r1
  pop r0
  rts

Desenha_Carro4:
  push r0
  push r1
  push r2
  
  load r0, posCarro41
  loadn r1, #'x'
  outchar r1, r0
  store posCarro41_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro42
  outchar r1, r0
  store posCarro42_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro4:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro41_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro42_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
Move_Carro5:
 call Apaga_Carro5
 call Desenha_Carro5
 call Atualiza_Carro_Esq5

 rts

Atualiza_Carro_Esq5:
  push r0
  push r1
  push r2
  
  load r0, posCarro51
  dec r0
  ;loadn r1, #40
  loadn r2, #800
  cmp r0, r2
  jeq Carro_Fim5
  
  store posCarro51, r0
  load r0, posCarro52
  dec r0
  store posCarro52, r0
  jmp Atuliza_Fim5
  
  Carro_Fim5:
    loadn r2, #839
    store posCarro51, r2
    loadn r2, #879
    store posCarro52, r2
    jmp Atuliza_Fim5
  
  Atuliza_Fim5:
  pop r2
  pop r1
  pop r0
  rts
  
Desenha_Carro5:
  push r0
  push r1
  push r2
  
  load r0, posCarro51
  loadn r1, #'x'
  outchar r1, r0
  store posCarro51_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro52
  outchar r1, r0
  store posCarro52_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro5:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro51_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro52_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  
  Move_Carro6:

  call Apaga_Carro6
  call Desenha_Carro6
  call Atualiza_Carro_Direita6

  rts

Atualiza_Carro_Direita6:
  push r0
  push r1
  push r2
  
  load r0, posCarro61
  inc r0
  ;loadn r1, #40
  loadn r2, #919
  cmp r0, r2
  jeq Carro_Fim6
  
  store posCarro61, r0
  load r0, posCarro62
  inc r0
  store posCarro62, r0
  jmp Atuliza_Fim6
  
  Carro_Fim6:
    loadn r2, #880
    store posCarro61, r2
    loadn r2, #920
    store posCarro62, r2
    jmp Atuliza_Fim6
  
  Atuliza_Fim6:
  pop r2
  pop r1
  pop r0
  rts

Desenha_Carro6:
  push r0
  push r1
  push r2
  
  load r0, posCarro61
  loadn r1, #'x'
  outchar r1, r0
  store posCarro61_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro62
  outchar r1, r0
  store posCarro62_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro6:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro61_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro62_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
Move_Carro7:

  call Apaga_Carro7
  call Desenha_Carro7
  call Atualiza_Carro_Direita7

  rts

Atualiza_Carro_Direita7:
  push r0
  push r1
  push r2
  
  load r0, posCarro71
  inc r0
  ;loadn r1, #40
  loadn r2, #999
  cmp r0, r2
  jeq Carro_Fim7
  
  store posCarro71, r0
  load r0, posCarro72
  inc r0
  store posCarro72, r0
  jmp Atuliza_Fim7
  
  Carro_Fim7:
    loadn r2, #960
    store posCarro71, r2
    loadn r2, #1000
    store posCarro72, r2
    jmp Atuliza_Fim7
  
  Atuliza_Fim7:
  pop r2
  pop r1
  pop r0
  rts

Desenha_Carro7:
  push r0
  push r1
  push r2
  
  load r0, posCarro71
  loadn r1, #'x'
  outchar r1, r0
  store posCarro71_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro72
  outchar r1, r0
  store posCarro72_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro7:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro71_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro72_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
Move_Carro8:
 call Apaga_Carro8
 call Desenha_Carro8
 call Atualiza_Carro_Esq8

 rts

Atualiza_Carro_Esq8:
  push r0
  push r1
  push r2
  
  load r0, posCarro81
  dec r0
  ;loadn r1, #40
  loadn r2, #1040
  cmp r0, r2
  jeq Carro_Fim8
  
  store posCarro81, r0
  load r0, posCarro82
  dec r0
  store posCarro82, r0
  jmp Atuliza_Fim8
  
  Carro_Fim8:
    loadn r2, #1079
    store posCarro81, r2
    loadn r2, #1119
    store posCarro82, r2
    jmp Atuliza_Fim8
  
  Atuliza_Fim8:
  pop r2
  pop r1
  pop r0
  rts
  
Desenha_Carro8:
  push r0
  push r1
  push r2
  
  load r0, posCarro81
  loadn r1, #'x'
  outchar r1, r0
  store posCarro81_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posCarro82
  outchar r1, r0
  store posCarro82_Anterior, r0
  
  
  pop r2
  pop r1
  pop r0
  rts

Apaga_Carro8:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posCarro81_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posCarro82_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
;---- Madeiras-----


; o movimento das madeiras eh igual ao movimento dos carros, comentarios na parte carros

Move_Madeira1:
  call Apaga_Madeira1
  call Desenha_Madeira1
  call Atualiza_Madeira1
  
  rts

Desenha_Madeira1:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC 
  load r0, posMadeira11
  
  cmp r3,r0
  jeq Final_Desenha_Madeira1
  
  loadn r1, #15   ;sprite da madeira
  loadn r2, #2816 ;cor da madeira 
  add r1, r1, r2
  outchar r1, r0
  store posMadeira11_Anterior, r0
  
  ;parte de baixo da madeira 
  load r0, posMadeira12
  outchar r1, r0
  store posMadeira12_Anterior, r0
  
  Final_Desenha_Madeira1:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira1:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira11_Anterior
  add r2, r1, r0
  loadi r5, r2    ;reconstroi o fundo desamadeirado
  outchar r5, r1
  
  load r1, posMadeira12_Anterior
  add r2, r1, r0
  loadi r5, r2    ;msm coisa (parte de baixo)
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira1:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira11
  cmp r0, r1
  jne MoveMadeira_semFormiga1
  
  cmp r0, r1
  jeq Move_FormigaeMadeira1
  
  Fim_Atualiza_Madeira1:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga1:
  push r0
  push r1
  push r2
  
  load r0, posMadeira11
  inc r0
  loadn r2, #359
  cmp r0, r2
  jeq Madeira_Fim1
  
  store posMadeira11, r0
  load r0, posMadeira12
  inc r0
  store posMadeira12, r0
  jmp Atuliza_Fim_Madeira1
  
  Madeira_Fim1:
    loadn r2, #320
    store posMadeira11, r2
    loadn r2, #360
    store posMadeira12, r2
    jmp Atuliza_Fim_Madeira1
  
  Atuliza_Fim_Madeira1:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira1


; Funcao para quando a formiga esta encima da madeira

Move_FormigaeMadeira1:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira11              ; guarda a posicao superior da madeira em r0
  inc r0                             ; incrementa r0 para mover a madeira para a direita.
  loadn r2, #359                     ; guarda em r2 a posicao do final da linha
  cmp r0, r2                         ; compara a posicao do final da linha com a posicao da madeira
  jeq MadeiraF_Fim1                  ; se igual, pule pra funcao MadeiraF_Fim1
  
  store posMadeira11, r0             ; salva o conteudo de r0 na posicao superior da madeiraX
  store posFormigaC, r0              ; salva o conteudo de r0 na posicao da cabeca da formiga
  
  load r0, posMadeira12              ; guarda a posicao inferior da madeira em r0
  inc r0                             ; incrementa r0 para mover a madeira para a direita
  store posMadeira12, r0             ; salva o conteudo de r0 na posicao inferior da madeiraX
  store posFormigaB, r0              ; salva o conteudo de r0 na posicao da bunda da formiga
  call Apaga_Formiga_Madeira1
  call Desenha_Formiga_Madeira1
  
  jmp Atuliza_Fim_MadeiraF1
  
  MadeiraF_Fim1:
    loadn r2, #320                   ; guarda o inicio da linha em r2
    store posMadeira11, r2           ; salva na posicao superior da madeira e da formiga
    store posFormigaC, r2
    
    ; o mesmo na parte inferior
    loadn r2, #360
    store posMadeira12, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF1
  
  Atuliza_Fim_MadeiraF1:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira1


;imprime a formiga ao inves da madeira quando estao na mesma posicao, igual a funcao desenha_formiga
Desenha_Formiga_Madeira1:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

;apaga a posicao da formiga + madeira e substitui pelo fundo, eh a mesma funcao que apaga_formiga
Apaga_Formiga_Madeira1:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
Move_Madeira2:
  call Apaga_Madeira2
  call Desenha_Madeira2
  call Atualiza_Madeira2
  
  rts

Desenha_Madeira2:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC
  load r0, posMadeira21
  
  cmp r3,r0
  jeq Final_Desenha_Madeira2
  
  loadn r1, #15
  loadn r2, #2816
  add r1, r1, r2
  outchar r1, r0
  store posMadeira21_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posMadeira22
  outchar r1, r0
  store posMadeira22_Anterior, r0
  
  Final_Desenha_Madeira2:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira2:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira21_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posMadeira22_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira2:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira21
  cmp r0, r1
  jne MoveMadeira_semFormiga2
  
  cmp r0, r1
  jeq Move_FormigaeMadeira2
  
  Fim_Atualiza_Madeira2:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga2:
  push r0
  push r1
  push r2
  
  load r0, posMadeira21
  inc r0
  loadn r2, #359
  cmp r0, r2
  jeq Madeira_Fim2
  
  store posMadeira21, r0
  load r0, posMadeira22
  inc r0
  store posMadeira22, r0
  jmp Atuliza_Fim_Madeira2
  
  Madeira_Fim2:
    loadn r2, #320
    store posMadeira21, r2
    loadn r2, #360
    store posMadeira22, r2
    jmp Atuliza_Fim_Madeira2
  
  Atuliza_Fim_Madeira2:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira2

Move_FormigaeMadeira2:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira21
  inc r0
  loadn r2, #359
  cmp r0, r2
  jeq MadeiraF_Fim2
  
  store posMadeira21, r0
  store posFormigaC, r0
  
  load r0, posMadeira22
  inc r0
  store posMadeira22, r0
  store posFormigaB, r0
  call Apaga_Formiga_Madeira2
  call Desenha_Formiga_Madeira2
  
  jmp Atuliza_Fim_MadeiraF2
  
  MadeiraF_Fim2:
    loadn r2, #320
    store posMadeira21, r2
    store posFormigaC, r2
    
    loadn r2, #360
    store posMadeira22, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF2
  
  Atuliza_Fim_MadeiraF2:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira2

Desenha_Formiga_Madeira2:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

Apaga_Formiga_Madeira2:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
Move_Madeira3:
  call Apaga_Madeira3
  call Desenha_Madeira3
  call Atualiza_Madeira3
  
  rts

Desenha_Madeira3:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC
  load r0, posMadeira31
  
  cmp r3,r0
  jeq Final_Desenha_Madeira3
  
  loadn r1, #15
  loadn r2, #2816
  add r1, r1, r2
  outchar r1, r0
  store posMadeira31_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posMadeira32
  outchar r1, r0
  store posMadeira32_Anterior, r0
  
  Final_Desenha_Madeira3:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira3:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira31_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posMadeira32_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira3:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira31
  cmp r0, r1
  jne MoveMadeira_semFormiga3
  
  cmp r0, r1
  jeq Move_FormigaeMadeira3
  
  Fim_Atualiza_Madeira3:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga3:
  push r0
  push r1
  push r2
  
  load r0, posMadeira31
  inc r0
  loadn r2, #359
  cmp r0, r2
  jeq Madeira_Fim3
  
  store posMadeira31, r0
  load r0, posMadeira32
  inc r0
  store posMadeira32, r0
  jmp Atuliza_Fim_Madeira3
  
  Madeira_Fim3:
    loadn r2, #320
    store posMadeira31, r2
    loadn r2, #360
    store posMadeira32, r2
    jmp Atuliza_Fim_Madeira3
  
  Atuliza_Fim_Madeira3:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira3

Move_FormigaeMadeira3:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira31
  inc r0
  loadn r2, #359
  cmp r0, r2
  jeq MadeiraF_Fim3
  
  store posMadeira31, r0
  store posFormigaC, r0
  
  load r0, posMadeira32
  inc r0
  store posMadeira32, r0
  store posFormigaB, r0
  call Apaga_Formiga_Madeira3
  call Desenha_Formiga_Madeira3
  
  jmp Atuliza_Fim_MadeiraF3
  
  MadeiraF_Fim3:
    loadn r2, #320
    store posMadeira31, r2
    store posFormigaC, r2
    
    loadn r2, #360
    store posMadeira32, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF3
  
  Atuliza_Fim_MadeiraF3:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira3

Desenha_Formiga_Madeira3:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

Apaga_Formiga_Madeira3:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  
  Move_Madeira4:
  call Apaga_Madeira4
  call Desenha_Madeira4
  call Atualiza_Madeira4
  
  rts

Desenha_Madeira4:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC
  load r0, posMadeira41
  
  cmp r3,r0
  jeq Final_Desenha_Madeira4
  
  loadn r1, #15
  loadn r2, #2816
  add r1, r1, r2
  outchar r1, r0
  store posMadeira41_Anterior, r0
  
  ;parte de baixo de carro?
  load r0, posMadeira42
  outchar r1, r0
  store posMadeira42_Anterior, r0
  
  Final_Desenha_Madeira4:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira4:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira41_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posMadeira42_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira4:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira41
  cmp r0, r1
  jne MoveMadeira_semFormiga4
  
  cmp r0, r1
  jeq Move_FormigaeMadeira4
  
  Fim_Atualiza_Madeira4:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga4:
  push r0
  push r1
  push r2
  
  load r0, posMadeira41
  dec r0
  loadn r2, #240
  cmp r0, r2
  jeq Madeira_Fim4
  
  store posMadeira41, r0
  load r0, posMadeira42
  dec r0
  store posMadeira42, r0
  jmp Atuliza_Fim_Madeira4
  
  Madeira_Fim4:
    loadn r2, #279
    store posMadeira41, r2
    loadn r2, #319
    store posMadeira42, r2
    jmp Atuliza_Fim_Madeira4
  
  Atuliza_Fim_Madeira4:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira4

Move_FormigaeMadeira4:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira41
  dec r0
  loadn r2, #240
  cmp r0, r2
  jeq MadeiraF_Fim4
  
  store posMadeira41, r0
  store posFormigaC, r0
  
  load r0, posMadeira42
  dec r0
  store posMadeira42, r0
  store posFormigaB, r0
  call Apaga_Formiga_Madeira4
  call Desenha_Formiga_Madeira4
  
  jmp Atuliza_Fim_MadeiraF4
  
  MadeiraF_Fim4:
    loadn r2, #279
    store posMadeira41, r2
    store posFormigaC, r2
    
    loadn r2, #319
    store posMadeira42, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF3
  
  Atuliza_Fim_MadeiraF4:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira4

Desenha_Formiga_Madeira4:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

Apaga_Formiga_Madeira4:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  Move_Madeira5:
  call Apaga_Madeira5
  call Desenha_Madeira5
  call Atualiza_Madeira5
  
  rts

Desenha_Madeira5:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC
  load r0, posMadeira51
  
  cmp r3,r0
  jeq Final_Desenha_Madeira5
  
  loadn r1, #15
  loadn r2, #2816
  add r1, r1, r2
  outchar r1, r0
  store posMadeira51_Anterior, r0
  
  ;parte de baixo de carro, nem eh...
  load r0, posMadeira52
  outchar r1, r0
  store posMadeira52_Anterior, r0
  
  Final_Desenha_Madeira5:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira5:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira51_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posMadeira52_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira5:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira51
  cmp r0, r1
  jne MoveMadeira_semFormiga5
  
  cmp r0, r1
  jeq Move_FormigaeMadeira5
  
  Fim_Atualiza_Madeira5:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga5:
  push r0
  push r1
  push r2
  
  load r0, posMadeira51
  inc r0
  loadn r2, #199
  cmp r0, r2
  jeq Madeira_Fim5
  
  store posMadeira51, r0
  load r0, posMadeira52
  inc r0
  store posMadeira52, r0
  jmp Atuliza_Fim_Madeira5
  
  Madeira_Fim5:
    loadn r2, #160
    store posMadeira51, r2
    loadn r2, #200
    store posMadeira52, r2
    jmp Atuliza_Fim_Madeira5
  
  Atuliza_Fim_Madeira5:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira5

Move_FormigaeMadeira5:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira51
  inc r0
  loadn r2, #199
  cmp r0, r2
  jeq MadeiraF_Fim5
  
  store posMadeira51, r0
  store posFormigaC, r0
  
  load r0, posMadeira52
  inc r0
  store posMadeira52, r0
  store posFormigaB, r0
  call Apaga_Formiga_Madeira5
  call Desenha_Formiga_Madeira5
  
  jmp Atuliza_Fim_MadeiraF5
  
  MadeiraF_Fim5:
    loadn r2, #160
    store posMadeira51, r2
    store posFormigaC, r2
    
    loadn r2, #200
    store posMadeira52, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF5
  
  Atuliza_Fim_MadeiraF5:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira5

Desenha_Formiga_Madeira5:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

Apaga_Formiga_Madeira5:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts
  
  
Move_Madeira6:
  call Apaga_Madeira6
  call Desenha_Madeira6
  call Atualiza_Madeira6
  
  rts

Desenha_Madeira6:
  push r0
  push r1
  push r2
  push r3
  
  load r3, posFormigaC
  load r0, posMadeira61
  
  cmp r3,r0
  jeq Final_Desenha_Madeira6
  
  loadn r1, #15
  loadn r2, #2816
  add r1, r1, r2
  outchar r1, r0
  store posMadeira61_Anterior, r0
  
  ;parte de baixo de carro
  load r0, posMadeira62
  outchar r1, r0
  store posMadeira62_Anterior, r0
  
  Final_Desenha_Madeira6:
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Apaga_Madeira6:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  
  load r1, posMadeira61_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posMadeira62_Anterior
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

Atualiza_Madeira6:
  push r0
  push r1
  
  load r0, posFormigaC
  load r1, posMadeira61
  cmp r0, r1
  jne MoveMadeira_semFormiga6
  
  cmp r0, r1
  jeq Move_FormigaeMadeira6
  
  Fim_Atualiza_Madeira6:
  pop r1
  pop r0
  rts
  
  
MoveMadeira_semFormiga6:
  push r0
  push r1
  push r2
  
  load r0, posMadeira61
  inc r0
  loadn r2, #199
  cmp r0, r2
  jeq Madeira_Fim6
  
  store posMadeira61, r0
  load r0, posMadeira62
  inc r0
  store posMadeira62, r0
  jmp Atuliza_Fim_Madeira6
  
  Madeira_Fim6:
    loadn r2, #160
    store posMadeira61, r2
    loadn r2, #200
    store posMadeira62, r2
    jmp Atuliza_Fim_Madeira6
  
  Atuliza_Fim_Madeira6:
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira6

Move_FormigaeMadeira6:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  load r0, posMadeira61
  inc r0
  loadn r2, #199
  cmp r0, r2
  jeq MadeiraF_Fim6
  
  store posMadeira61, r0
  store posFormigaC, r0
  
  load r0, posMadeira62
  inc r0
  store posMadeira62, r0
  store posFormigaB, r0
  call Apaga_Formiga_Madeira6
  call Desenha_Formiga_Madeira6
  
  jmp Atuliza_Fim_MadeiraF6
  
  MadeiraF_Fim6:
    loadn r2, #160
    store posMadeira61, r2
    store posFormigaC, r2
    
    loadn r2, #200
    store posMadeira62, r2
    store posFormigaB, r2
    jmp Atuliza_Fim_MadeiraF6
  
  Atuliza_Fim_MadeiraF6:
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  jmp Fim_Atualiza_Madeira6

Desenha_Formiga_Madeira6:
  push r1
  push r2
  push r3
  push r4
  
  loadn r4, #256
  
  load r1, posFormigaC
  loadn r3, #8
  add r3, r3, r4
  outchar r3, r1
  store posFormigaAnteriorC, r1
  
  load r2, posFormigaB
  loadn r3, #9
  add r3, r3, r4
  outchar r3, r2
  store posFormigaAnteriorB, r2
  
  pop r4
  pop r3
  pop r2
  pop r1
  rts

Apaga_Formiga_Madeira6:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #Fundo
  loadn r3, #40
  
  load r1, posFormigaAnteriorC
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  load r1, posFormigaAnteriorB
  add r2, r1, r0
  loadi r5, r2
  outchar r5, r1
  
  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

AperteEspaco:
  push r0
  push r1
  push r2
  push r3
  push r4
  push r5
  
  loadn r0, #' '

  AperteEspacoLoop:
    inchar r1
    cmp r0, r1
    jne AperteEspacoLoop

  pop r5
  pop r4
  pop r3
  pop r2
  pop r1
  pop r0
  rts

;__xXx--=TURNO_DE_VOLTA=--xXx__
  
;---- Tela Fundo -----

  ;Linha 0
  static Fundo + #0, #2577
  static Fundo + #1, #2577
  static Fundo + #2, #2577
  static Fundo + #3, #2577
  static Fundo + #4, #2577
  static Fundo + #5, #2577
  static Fundo + #6, #2577
  static Fundo + #7, #2577
  static Fundo + #8, #2577
  static Fundo + #9, #2577
  static Fundo + #10, #2577
  static Fundo + #11, #2577
  static Fundo + #12, #2577
  static Fundo + #13, #2577
  static Fundo + #14, #2577
  static Fundo + #15, #2577
  static Fundo + #16, #2577
  static Fundo + #17, #2577
  static Fundo + #18, #2577
  static Fundo + #19, #2577
  static Fundo + #20, #2845
  static Fundo + #21, #2577
  static Fundo + #22, #2577
  static Fundo + #23, #2577
  static Fundo + #24, #2577
  static Fundo + #25, #2577
  static Fundo + #26, #2577
  static Fundo + #27, #2577
  static Fundo + #28, #2577
  static Fundo + #29, #2577
  static Fundo + #30, #2577
  static Fundo + #31, #2577
  static Fundo + #32, #2577
  static Fundo + #33, #2577
  static Fundo + #34, #529
  static Fundo + #35, #529
  static Fundo + #36, #529
  static Fundo + #37, #2577
  static Fundo + #38, #529
  static Fundo + #39, #529

  ;Linha 1
  static Fundo + #40, #2577
  static Fundo + #41, #2577
  static Fundo + #42, #2577
  static Fundo + #43, #2577
  static Fundo + #44, #2577
  static Fundo + #45, #2577
  static Fundo + #46, #2577
  static Fundo + #47, #2577
  static Fundo + #48, #2577
  static Fundo + #49, #2577
  static Fundo + #50, #2577
  static Fundo + #51, #2577
  static Fundo + #52, #2577
  static Fundo + #53, #2577
  static Fundo + #54, #2577
  static Fundo + #55, #2577
  static Fundo + #56, #2577
  static Fundo + #57, #2577
  static Fundo + #58, #2577
  static Fundo + #59, #2577
  static Fundo + #60, #2577
  static Fundo + #61, #2577
  static Fundo + #62, #2577
  static Fundo + #63, #2577
  static Fundo + #64, #2577
  static Fundo + #65, #2577
  static Fundo + #66, #2577
  static Fundo + #67, #2577
  static Fundo + #68, #529
  static Fundo + #69, #529
  static Fundo + #70, #529
  static Fundo + #71, #529
  static Fundo + #72, #529
  static Fundo + #73, #529
  static Fundo + #74, #529
  static Fundo + #75, #529
  static Fundo + #76, #529
  static Fundo + #77, #529
  static Fundo + #78, #529
  static Fundo + #79, #529

  ;Linha 2
  static Fundo + #80, #2577
  static Fundo + #81, #2577
  static Fundo + #82, #2577
  static Fundo + #83, #2577
  static Fundo + #84, #2577
  static Fundo + #85, #2577
  static Fundo + #86, #2577
  static Fundo + #87, #2577
  static Fundo + #88, #2577
  static Fundo + #89, #2577
  static Fundo + #90, #2577
  static Fundo + #91, #2577
  static Fundo + #92, #2577
  static Fundo + #93, #2577
  static Fundo + #94, #529
  static Fundo + #95, #529
  static Fundo + #96, #529
  static Fundo + #97, #529
  static Fundo + #98, #529
  static Fundo + #99, #2577
  static Fundo + #100, #529
  static Fundo + #101, #529
  static Fundo + #102, #529
  static Fundo + #103, #529
  static Fundo + #104, #2577
  static Fundo + #105, #2577
  static Fundo + #106, #529
  static Fundo + #107, #2577
  static Fundo + #108, #529
  static Fundo + #109, #529
  static Fundo + #110, #529
  static Fundo + #111, #529
  static Fundo + #112, #529
  static Fundo + #113, #529
  static Fundo + #114, #529
  static Fundo + #115, #529
  static Fundo + #116, #529
  static Fundo + #117, #529
  static Fundo + #118, #529
  static Fundo + #119, #529

  ;Linha 3
  static Fundo + #120, #529
  static Fundo + #121, #529
  static Fundo + #122, #529
  static Fundo + #123, #529
  static Fundo + #124, #529
  static Fundo + #125, #529
  static Fundo + #126, #529
  static Fundo + #127, #529
  static Fundo + #128, #529
  static Fundo + #129, #529
  static Fundo + #130, #529
  static Fundo + #131, #529
  static Fundo + #132, #529
  static Fundo + #133, #529
  static Fundo + #134, #529
  static Fundo + #135, #529
  static Fundo + #136, #529
  static Fundo + #137, #529
  static Fundo + #138, #529
  static Fundo + #139, #529
  static Fundo + #140, #2577
  static Fundo + #141, #2577
  static Fundo + #142, #2577
  static Fundo + #143, #2577
  static Fundo + #144, #2577
  static Fundo + #145, #529
  static Fundo + #146, #529
  static Fundo + #147, #529
  static Fundo + #148, #529
  static Fundo + #149, #529
  static Fundo + #150, #529
  static Fundo + #151, #529
  static Fundo + #152, #529
  static Fundo + #153, #2577
  static Fundo + #154, #2577
  static Fundo + #155, #2577
  static Fundo + #156, #2577
  static Fundo + #157, #529
  static Fundo + #158, #529
  static Fundo + #159, #529

  ;Linha 4
  static Fundo + #160, #1554
  static Fundo + #161, #1554
  static Fundo + #162, #1554
  static Fundo + #163, #1554
  static Fundo + #164, #1554
  static Fundo + #165, #1554
  static Fundo + #166, #1554
  static Fundo + #167, #1554
  static Fundo + #168, #1554
  static Fundo + #169, #1554
  static Fundo + #170, #1554
  static Fundo + #171, #1554
  static Fundo + #172, #1554
  static Fundo + #173, #1554
  static Fundo + #174, #1554
  static Fundo + #175, #1554
  static Fundo + #176, #1554
  static Fundo + #177, #1554
  static Fundo + #178, #1554
  static Fundo + #179, #1554
  static Fundo + #180, #1554
  static Fundo + #181, #1554
  static Fundo + #182, #1554
  static Fundo + #183, #1554
  static Fundo + #184, #1554
  static Fundo + #185, #1554
  static Fundo + #186, #1554
  static Fundo + #187, #1554
  static Fundo + #188, #1554
  static Fundo + #189, #1554
  static Fundo + #190, #1554
  static Fundo + #191, #1554
  static Fundo + #192, #1554
  static Fundo + #193, #1554
  static Fundo + #194, #1554
  static Fundo + #195, #1554
  static Fundo + #196, #1554
  static Fundo + #197, #1554
  static Fundo + #198, #1554
  static Fundo + #199, #1554

  ;Linha 5
  static Fundo + #200, #1554
  static Fundo + #201, #1554
  static Fundo + #202, #1554
  static Fundo + #203, #1554
  static Fundo + #204, #1554
  static Fundo + #205, #1554
  static Fundo + #206, #1554
  static Fundo + #207, #1554
  static Fundo + #208, #1554
  static Fundo + #209, #1554
  static Fundo + #210, #1554
  static Fundo + #211, #1554
  static Fundo + #212, #1554
  static Fundo + #213, #1554
  static Fundo + #214, #1554
  static Fundo + #215, #1554
  static Fundo + #216, #1554
  static Fundo + #217, #1554
  static Fundo + #218, #1554
  static Fundo + #219, #1554
  static Fundo + #220, #1554
  static Fundo + #221, #1554
  static Fundo + #222, #1554
  static Fundo + #223, #1554
  static Fundo + #224, #1554
  static Fundo + #225, #1554
  static Fundo + #226, #1554
  static Fundo + #227, #1554
  static Fundo + #228, #1554
  static Fundo + #229, #1554
  static Fundo + #230, #1554
  static Fundo + #231, #1554
  static Fundo + #232, #1554
  static Fundo + #233, #1554
  static Fundo + #234, #1554
  static Fundo + #235, #1554
  static Fundo + #236, #1554
  static Fundo + #237, #1554
  static Fundo + #238, #1554
  static Fundo + #239, #1554

  ;Linha 6
  static Fundo + #240, #1554
  static Fundo + #241, #1554
  static Fundo + #242, #1554
  static Fundo + #243, #1554
  static Fundo + #244, #1554
  static Fundo + #245, #1554
  static Fundo + #246, #1554
  static Fundo + #247, #1554
  static Fundo + #248, #1554
  static Fundo + #249, #1554
  static Fundo + #250, #1554
  static Fundo + #251, #1554
  static Fundo + #252, #1554
  static Fundo + #253, #1554
  static Fundo + #254, #1554
  static Fundo + #255, #1554
  static Fundo + #256, #1554
  static Fundo + #257, #1554
  static Fundo + #258, #1554
  static Fundo + #259, #1554
  static Fundo + #260, #1554
  static Fundo + #261, #1554
  static Fundo + #262, #1554
  static Fundo + #263, #1554
  static Fundo + #264, #1554
  static Fundo + #265, #1554
  static Fundo + #266, #1554
  static Fundo + #267, #1554
  static Fundo + #268, #1554
  static Fundo + #269, #1554
  static Fundo + #270, #1554
  static Fundo + #271, #1554
  static Fundo + #272, #1554
  static Fundo + #273, #1554
  static Fundo + #274, #1554
  static Fundo + #275, #1554
  static Fundo + #276, #1554
  static Fundo + #277, #1554
  static Fundo + #278, #1554
  static Fundo + #279, #1554

  ;Linha 7
  static Fundo + #280, #1554
  static Fundo + #281, #1554
  static Fundo + #282, #1554
  static Fundo + #283, #1554
  static Fundo + #284, #1554
  static Fundo + #285, #1554
  static Fundo + #286, #1554
  static Fundo + #287, #1554
  static Fundo + #288, #1554
  static Fundo + #289, #1554
  static Fundo + #290, #1554
  static Fundo + #291, #1554
  static Fundo + #292, #1554
  static Fundo + #293, #1554
  static Fundo + #294, #1554
  static Fundo + #295, #1554
  static Fundo + #296, #1554
  static Fundo + #297, #1554
  static Fundo + #298, #1554
  static Fundo + #299, #1554
  static Fundo + #300, #1554
  static Fundo + #301, #1554
  static Fundo + #302, #1554
  static Fundo + #303, #1554
  static Fundo + #304, #1554
  static Fundo + #305, #1554
  static Fundo + #306, #1554
  static Fundo + #307, #1554
  static Fundo + #308, #1554
  static Fundo + #309, #1554
  static Fundo + #310, #1554
  static Fundo + #311, #1554
  static Fundo + #312, #1554
  static Fundo + #313, #1554
  static Fundo + #314, #1554
  static Fundo + #315, #1554
  static Fundo + #316, #1554
  static Fundo + #317, #1554
  static Fundo + #318, #1554
  static Fundo + #319, #1554

  ;Linha 8
  static Fundo + #320, #1554
  static Fundo + #321, #1554
  static Fundo + #322, #1554
  static Fundo + #323, #1554
  static Fundo + #324, #1554
  static Fundo + #325, #1554
  static Fundo + #326, #1554
  static Fundo + #327, #1554
  static Fundo + #328, #1554
  static Fundo + #329, #1554
  static Fundo + #330, #1554
  static Fundo + #331, #1554
  static Fundo + #332, #1554
  static Fundo + #333, #1554
  static Fundo + #334, #1554
  static Fundo + #335, #1554
  static Fundo + #336, #1554
  static Fundo + #337, #1554
  static Fundo + #338, #1554
  static Fundo + #339, #1554
  static Fundo + #340, #1554
  static Fundo + #341, #1554
  static Fundo + #342, #1554
  static Fundo + #343, #1554
  static Fundo + #344, #1554
  static Fundo + #345, #1554
  static Fundo + #346, #1554
  static Fundo + #347, #1554
  static Fundo + #348, #1554
  static Fundo + #349, #1554
  static Fundo + #350, #1554
  static Fundo + #351, #1554
  static Fundo + #352, #1554
  static Fundo + #353, #1554
  static Fundo + #354, #1554
  static Fundo + #355, #1554
  static Fundo + #356, #1554
  static Fundo + #357, #1554
  static Fundo + #358, #1554
  static Fundo + #359, #1554

  ;Linha 9
  static Fundo + #360, #1554
  static Fundo + #361, #1554
  static Fundo + #362, #1554
  static Fundo + #363, #1554
  static Fundo + #364, #1554
  static Fundo + #365, #1554
  static Fundo + #366, #1554
  static Fundo + #367, #1554
  static Fundo + #368, #1554
  static Fundo + #369, #1554
  static Fundo + #370, #1554
  static Fundo + #371, #1554
  static Fundo + #372, #1554
  static Fundo + #373, #1554
  static Fundo + #374, #1554
  static Fundo + #375, #1554
  static Fundo + #376, #1554
  static Fundo + #377, #1554
  static Fundo + #378, #1554
  static Fundo + #379, #1554
  static Fundo + #380, #1554
  static Fundo + #381, #1554
  static Fundo + #382, #1554
  static Fundo + #383, #1554
  static Fundo + #384, #1554
  static Fundo + #385, #1554
  static Fundo + #386, #1554
  static Fundo + #387, #1554
  static Fundo + #388, #1554
  static Fundo + #389, #1554
  static Fundo + #390, #1554
  static Fundo + #391, #1554
  static Fundo + #392, #1554
  static Fundo + #393, #1554
  static Fundo + #394, #1554
  static Fundo + #395, #1554
  static Fundo + #396, #1554
  static Fundo + #397, #1554
  static Fundo + #398, #1554
  static Fundo + #399, #1554

  ;Linha 10
  static Fundo + #400, #2064
  static Fundo + #401, #2064
  static Fundo + #402, #2064
  static Fundo + #403, #2064
  static Fundo + #404, #2064
  static Fundo + #405, #2064
  static Fundo + #406, #2064
  static Fundo + #407, #2064
  static Fundo + #408, #2064
  static Fundo + #409, #2064
  static Fundo + #410, #2064
  static Fundo + #411, #2064
  static Fundo + #412, #2064
  static Fundo + #413, #2064
  static Fundo + #414, #2064
  static Fundo + #415, #2064
  static Fundo + #416, #2064
  static Fundo + #417, #2064
  static Fundo + #418, #2064
  static Fundo + #419, #2064
  static Fundo + #420, #2064
  static Fundo + #421, #2064
  static Fundo + #422, #2064
  static Fundo + #423, #2064
  static Fundo + #424, #2064
  static Fundo + #425, #2064
  static Fundo + #426, #2064
  static Fundo + #427, #2064
  static Fundo + #428, #2064
  static Fundo + #429, #2064
  static Fundo + #430, #2064
  static Fundo + #431, #2064
  static Fundo + #432, #2064
  static Fundo + #433, #2064
  static Fundo + #434, #2064
  static Fundo + #435, #2064
  static Fundo + #436, #2064
  static Fundo + #437, #2064
  static Fundo + #438, #2064
  static Fundo + #439, #2064

  ;Linha 11
  static Fundo + #440, #2064
  static Fundo + #441, #2064
  static Fundo + #442, #2064
  static Fundo + #443, #2064
  static Fundo + #444, #2064
  static Fundo + #445, #2064
  static Fundo + #446, #2064
  static Fundo + #447, #2064
  static Fundo + #448, #2064
  static Fundo + #449, #2064
  static Fundo + #450, #2064
  static Fundo + #451, #2064
  static Fundo + #452, #2064
  static Fundo + #453, #2064
  static Fundo + #454, #2064
  static Fundo + #455, #2064
  static Fundo + #456, #2064
  static Fundo + #457, #2064
  static Fundo + #458, #2064
  static Fundo + #459, #2064
  static Fundo + #460, #2064
  static Fundo + #461, #2064
  static Fundo + #462, #2064
  static Fundo + #463, #2064
  static Fundo + #464, #2064
  static Fundo + #465, #2064
  static Fundo + #466, #2064
  static Fundo + #467, #2064
  static Fundo + #468, #2064
  static Fundo + #469, #2064
  static Fundo + #470, #2064
  static Fundo + #471, #2064
  static Fundo + #472, #2064
  static Fundo + #473, #2064
  static Fundo + #474, #2064
  static Fundo + #475, #2064
  static Fundo + #476, #2064
  static Fundo + #477, #2064
  static Fundo + #478, #2064
  static Fundo + #479, #2064

  ;Linha 12
  static Fundo + #480, #3856
  static Fundo + #481, #3856
  static Fundo + #482, #3856
  static Fundo + #483, #3856
  static Fundo + #484, #3856
  static Fundo + #485, #3856
  static Fundo + #486, #3856
  static Fundo + #487, #3856
  static Fundo + #488, #3856
  static Fundo + #489, #3856
  static Fundo + #490, #3856
  static Fundo + #491, #3856
  static Fundo + #492, #3856
  static Fundo + #493, #3856
  static Fundo + #494, #3856
  static Fundo + #495, #3856
  static Fundo + #496, #3856
  static Fundo + #497, #3856
  static Fundo + #498, #3856
  static Fundo + #499, #3856
  static Fundo + #500, #3856
  static Fundo + #501, #3856
  static Fundo + #502, #3856
  static Fundo + #503, #3856
  static Fundo + #504, #3856
  static Fundo + #505, #3856
  static Fundo + #506, #3856
  static Fundo + #507, #3856
  static Fundo + #508, #3856
  static Fundo + #509, #3856
  static Fundo + #510, #3856
  static Fundo + #511, #3856
  static Fundo + #512, #3856
  static Fundo + #513, #3856
  static Fundo + #514, #3856
  static Fundo + #515, #3856
  static Fundo + #516, #3856
  static Fundo + #517, #3856
  static Fundo + #518, #3856
  static Fundo + #519, #3856

  ;Linha 13
  static Fundo + #520, #2836
  static Fundo + #521, #3859
  static Fundo + #522, #2836
  static Fundo + #523, #2836
  static Fundo + #524, #2836
  static Fundo + #525, #2836
  static Fundo + #526, #3859
  static Fundo + #527, #2836
  static Fundo + #528, #2836
  static Fundo + #529, #2836
  static Fundo + #530, #2836
  static Fundo + #531, #3859
  static Fundo + #532, #2836
  static Fundo + #533, #2836
  static Fundo + #534, #2836
  static Fundo + #535, #2836
  static Fundo + #536, #3859
  static Fundo + #537, #2836
  static Fundo + #538, #2836
  static Fundo + #539, #2836
  static Fundo + #540, #2836
  static Fundo + #541, #3859
  static Fundo + #542, #2836
  static Fundo + #543, #2836
  static Fundo + #544, #2836
  static Fundo + #545, #2836
  static Fundo + #546, #3859
  static Fundo + #547, #2836
  static Fundo + #548, #2836
  static Fundo + #549, #2836
  static Fundo + #550, #2836
  static Fundo + #551, #3859
  static Fundo + #552, #2836
  static Fundo + #553, #2836
  static Fundo + #554, #2836
  static Fundo + #555, #2836
  static Fundo + #556, #3860
  static Fundo + #557, #2836
  static Fundo + #558, #2836
  static Fundo + #559, #2836

  ;Linha 14
  static Fundo + #560, #2835
  static Fundo + #561, #3859
  static Fundo + #562, #2835
  static Fundo + #563, #2835
  static Fundo + #564, #2835
  static Fundo + #565, #2835
  static Fundo + #566, #3859
  static Fundo + #567, #2835
  static Fundo + #568, #2835
  static Fundo + #569, #2835
  static Fundo + #570, #2835
  static Fundo + #571, #3859
  static Fundo + #572, #2835
  static Fundo + #573, #2835
  static Fundo + #574, #2835
  static Fundo + #575, #2835
  static Fundo + #576, #3859
  static Fundo + #577, #2835
  static Fundo + #578, #2835
  static Fundo + #579, #2835
  static Fundo + #580, #2835
  static Fundo + #581, #3859
  static Fundo + #582, #2835
  static Fundo + #583, #2835
  static Fundo + #584, #2835
  static Fundo + #585, #2835
  static Fundo + #586, #3859
  static Fundo + #587, #2835
  static Fundo + #588, #2835
  static Fundo + #589, #2835
  static Fundo + #590, #2835
  static Fundo + #591, #3859
  static Fundo + #592, #2835
  static Fundo + #593, #2835
  static Fundo + #594, #2835
  static Fundo + #595, #2835
  static Fundo + #596, #3860
  static Fundo + #597, #2835
  static Fundo + #598, #2835
  static Fundo + #599, #2835

  ;Linha 15
  static Fundo + #600, #2836
  static Fundo + #601, #2836
  static Fundo + #602, #2836
  static Fundo + #603, #2836
  static Fundo + #604, #2836
  static Fundo + #605, #2836
  static Fundo + #606, #2836
  static Fundo + #607, #2836
  static Fundo + #608, #2836
  static Fundo + #609, #2836
  static Fundo + #610, #2836
  static Fundo + #611, #2836
  static Fundo + #612, #2836
  static Fundo + #613, #2836
  static Fundo + #614, #2836
  static Fundo + #615, #2836
  static Fundo + #616, #2836
  static Fundo + #617, #2836
  static Fundo + #618, #2836
  static Fundo + #619, #2836
  static Fundo + #620, #2836
  static Fundo + #621, #2836
  static Fundo + #622, #2836
  static Fundo + #623, #2836
  static Fundo + #624, #2836
  static Fundo + #625, #2836
  static Fundo + #626, #2836
  static Fundo + #627, #2836
  static Fundo + #628, #2836
  static Fundo + #629, #2836
  static Fundo + #630, #2836
  static Fundo + #631, #2836
  static Fundo + #632, #2836
  static Fundo + #633, #2836
  static Fundo + #634, #2836
  static Fundo + #635, #2836
  static Fundo + #636, #2836
  static Fundo + #637, #2836
  static Fundo + #638, #2836
  static Fundo + #639, #2836

  ;Linha 16
  static Fundo + #640, #2835
  static Fundo + #641, #2835
  static Fundo + #642, #2835
  static Fundo + #643, #2835
  static Fundo + #644, #2835
  static Fundo + #645, #2835
  static Fundo + #646, #2835
  static Fundo + #647, #2835
  static Fundo + #648, #2835
  static Fundo + #649, #2835
  static Fundo + #650, #2835
  static Fundo + #651, #2835
  static Fundo + #652, #2835
  static Fundo + #653, #2835
  static Fundo + #654, #2835
  static Fundo + #655, #2835
  static Fundo + #656, #2835
  static Fundo + #657, #2835
  static Fundo + #658, #2835
  static Fundo + #659, #2835
  static Fundo + #660, #2835
  static Fundo + #661, #2835
  static Fundo + #662, #2835
  static Fundo + #663, #2835
  static Fundo + #664, #2835
  static Fundo + #665, #2835
  static Fundo + #666, #2835
  static Fundo + #667, #2835
  static Fundo + #668, #2835
  static Fundo + #669, #2835
  static Fundo + #670, #2835
  static Fundo + #671, #2835
  static Fundo + #672, #2835
  static Fundo + #673, #2835
  static Fundo + #674, #2835
  static Fundo + #675, #2835
  static Fundo + #676, #2835
  static Fundo + #677, #2835
  static Fundo + #678, #2835
  static Fundo + #679, #2835

  ;Linha 17
  static Fundo + #680, #2836
  static Fundo + #681, #2836
  static Fundo + #682, #2836
  static Fundo + #683, #2836
  static Fundo + #684, #3859
  static Fundo + #685, #2836
  static Fundo + #686, #2836
  static Fundo + #687, #2836
  static Fundo + #688, #2836
  static Fundo + #689, #3859
  static Fundo + #690, #2836
  static Fundo + #691, #2836
  static Fundo + #692, #2836
  static Fundo + #693, #2836
  static Fundo + #694, #3859
  static Fundo + #695, #2836
  static Fundo + #696, #2836
  static Fundo + #697, #2836
  static Fundo + #698, #2836
  static Fundo + #699, #3859
  static Fundo + #700, #2836
  static Fundo + #701, #2836
  static Fundo + #702, #2836
  static Fundo + #703, #2836
  static Fundo + #704, #3859
  static Fundo + #705, #2836
  static Fundo + #706, #2836
  static Fundo + #707, #2836
  static Fundo + #708, #2836
  static Fundo + #709, #3859
  static Fundo + #710, #2836
  static Fundo + #711, #2836
  static Fundo + #712, #2836
  static Fundo + #713, #2836
  static Fundo + #714, #3859
  static Fundo + #715, #2836
  static Fundo + #716, #2836
  static Fundo + #717, #2836
  static Fundo + #718, #2836
  static Fundo + #719, #3859

  ;Linha 18
  static Fundo + #720, #2835
  static Fundo + #721, #2835
  static Fundo + #722, #2835
  static Fundo + #723, #2835
  static Fundo + #724, #3859
  static Fundo + #725, #2835
  static Fundo + #726, #2835
  static Fundo + #727, #2835
  static Fundo + #728, #2835
  static Fundo + #729, #3859
  static Fundo + #730, #2835
  static Fundo + #731, #2835
  static Fundo + #732, #2835
  static Fundo + #733, #2835
  static Fundo + #734, #3859
  static Fundo + #735, #2835
  static Fundo + #736, #2835
  static Fundo + #737, #2835
  static Fundo + #738, #2835
  static Fundo + #739, #3859
  static Fundo + #740, #2835
  static Fundo + #741, #2835
  static Fundo + #742, #2835
  static Fundo + #743, #2835
  static Fundo + #744, #3859
  static Fundo + #745, #2835
  static Fundo + #746, #2835
  static Fundo + #747, #2835
  static Fundo + #748, #2835
  static Fundo + #749, #3859
  static Fundo + #750, #2835
  static Fundo + #751, #2835
  static Fundo + #752, #2835
  static Fundo + #753, #2835
  static Fundo + #754, #3859
  static Fundo + #755, #2835
  static Fundo + #756, #2835
  static Fundo + #757, #2835
  static Fundo + #758, #2835
  static Fundo + #759, #3859

  ;Linha 19
  static Fundo + #760, #2836
  static Fundo + #761, #2836
  static Fundo + #762, #2836
  static Fundo + #763, #2836
  static Fundo + #764, #2836
  static Fundo + #765, #2836
  static Fundo + #766, #2836
  static Fundo + #767, #2836
  static Fundo + #768, #2836
  static Fundo + #769, #2836
  static Fundo + #770, #2836
  static Fundo + #771, #2836
  static Fundo + #772, #2836
  static Fundo + #773, #2836
  static Fundo + #774, #2836
  static Fundo + #775, #2836
  static Fundo + #776, #2836
  static Fundo + #777, #2836
  static Fundo + #778, #2836
  static Fundo + #779, #2836
  static Fundo + #780, #2836
  static Fundo + #781, #2836
  static Fundo + #782, #2836
  static Fundo + #783, #2836
  static Fundo + #784, #2836
  static Fundo + #785, #2836
  static Fundo + #786, #2836
  static Fundo + #787, #2836
  static Fundo + #788, #2836
  static Fundo + #789, #2836
  static Fundo + #790, #2836
  static Fundo + #791, #2836
  static Fundo + #792, #2836
  static Fundo + #793, #2836
  static Fundo + #794, #2836
  static Fundo + #795, #2836
  static Fundo + #796, #2836
  static Fundo + #797, #2836
  static Fundo + #798, #2836
  static Fundo + #799, #2836

  ;Linha 20
  static Fundo + #800, #2835
  static Fundo + #801, #2835
  static Fundo + #802, #2835
  static Fundo + #803, #2835
  static Fundo + #804, #2835
  static Fundo + #805, #2835
  static Fundo + #806, #2835
  static Fundo + #807, #2835
  static Fundo + #808, #2835
  static Fundo + #809, #2835
  static Fundo + #810, #2835
  static Fundo + #811, #2835
  static Fundo + #812, #2835
  static Fundo + #813, #2835
  static Fundo + #814, #2835
  static Fundo + #815, #2835
  static Fundo + #816, #2835
  static Fundo + #817, #2835
  static Fundo + #818, #2835
  static Fundo + #819, #2835
  static Fundo + #820, #2835
  static Fundo + #821, #2835
  static Fundo + #822, #2835
  static Fundo + #823, #2835
  static Fundo + #824, #2835
  static Fundo + #825, #2835
  static Fundo + #826, #2835
  static Fundo + #827, #2835
  static Fundo + #828, #2835
  static Fundo + #829, #2835
  static Fundo + #830, #2835
  static Fundo + #831, #2835
  static Fundo + #832, #2835
  static Fundo + #833, #2835
  static Fundo + #834, #2835
  static Fundo + #835, #2835
  static Fundo + #836, #2835
  static Fundo + #837, #2835
  static Fundo + #838, #2835
  static Fundo + #839, #2835

  ;Linha 21
  static Fundo + #840, #2836
  static Fundo + #841, #3860
  static Fundo + #842, #2836
  static Fundo + #843, #2836
  static Fundo + #844, #2836
  static Fundo + #845, #2836
  static Fundo + #846, #3860
  static Fundo + #847, #2836
  static Fundo + #848, #2836
  static Fundo + #849, #2836
  static Fundo + #850, #2836
  static Fundo + #851, #3860
  static Fundo + #852, #2836
  static Fundo + #853, #2836
  static Fundo + #854, #2836
  static Fundo + #855, #2836
  static Fundo + #856, #3860
  static Fundo + #857, #2836
  static Fundo + #858, #2836
  static Fundo + #859, #2836
  static Fundo + #860, #2836
  static Fundo + #861, #3860
  static Fundo + #862, #2836
  static Fundo + #863, #2836
  static Fundo + #864, #2836
  static Fundo + #865, #2836
  static Fundo + #866, #3860
  static Fundo + #867, #2836
  static Fundo + #868, #2836
  static Fundo + #869, #2836
  static Fundo + #870, #2836
  static Fundo + #871, #3860
  static Fundo + #872, #2836
  static Fundo + #873, #2836
  static Fundo + #874, #2836
  static Fundo + #875, #2836
  static Fundo + #876, #3860
  static Fundo + #877, #2836
  static Fundo + #878, #2836
  static Fundo + #879, #2836

  ;Linha 22
  static Fundo + #880, #2835
  static Fundo + #881, #3860
  static Fundo + #882, #2835
  static Fundo + #883, #2835
  static Fundo + #884, #2835
  static Fundo + #885, #2835
  static Fundo + #886, #3860
  static Fundo + #887, #2835
  static Fundo + #888, #2835
  static Fundo + #889, #2835
  static Fundo + #890, #2835
  static Fundo + #891, #3860
  static Fundo + #892, #2835
  static Fundo + #893, #2835
  static Fundo + #894, #2835
  static Fundo + #895, #2835
  static Fundo + #896, #3860
  static Fundo + #897, #2835
  static Fundo + #898, #2835
  static Fundo + #899, #2835
  static Fundo + #900, #2835
  static Fundo + #901, #3860
  static Fundo + #902, #2835
  static Fundo + #903, #2835
  static Fundo + #904, #2835
  static Fundo + #905, #2835
  static Fundo + #906, #3860
  static Fundo + #907, #2835
  static Fundo + #908, #2835
  static Fundo + #909, #2835
  static Fundo + #910, #2835
  static Fundo + #911, #3860
  static Fundo + #912, #2835
  static Fundo + #913, #2835
  static Fundo + #914, #2835
  static Fundo + #915, #2835
  static Fundo + #916, #3860
  static Fundo + #917, #2835
  static Fundo + #918, #2835
  static Fundo + #919, #2835

  ;Linha 23
  static Fundo + #920, #2836
  static Fundo + #921, #2836
  static Fundo + #922, #2836
  static Fundo + #923, #2836
  static Fundo + #924, #2836
  static Fundo + #925, #2836
  static Fundo + #926, #2836
  static Fundo + #927, #2836
  static Fundo + #928, #2836
  static Fundo + #929, #2836
  static Fundo + #930, #2836
  static Fundo + #931, #2836
  static Fundo + #932, #2836
  static Fundo + #933, #2836
  static Fundo + #934, #2836
  static Fundo + #935, #2836
  static Fundo + #936, #2836
  static Fundo + #937, #2836
  static Fundo + #938, #2836
  static Fundo + #939, #2836
  static Fundo + #940, #2836
  static Fundo + #941, #2836
  static Fundo + #942, #2836
  static Fundo + #943, #2836
  static Fundo + #944, #2836
  static Fundo + #945, #2836
  static Fundo + #946, #2836
  static Fundo + #947, #2836
  static Fundo + #948, #2836
  static Fundo + #949, #2836
  static Fundo + #950, #2836
  static Fundo + #951, #2836
  static Fundo + #952, #2836
  static Fundo + #953, #2836
  static Fundo + #954, #2836
  static Fundo + #955, #2836
  static Fundo + #956, #2836
  static Fundo + #957, #2836
  static Fundo + #958, #2836
  static Fundo + #959, #2836

  ;Linha 24
  static Fundo + #960, #2835
  static Fundo + #961, #2835
  static Fundo + #962, #2835
  static Fundo + #963, #2835
  static Fundo + #964, #2835
  static Fundo + #965, #2835
  static Fundo + #966, #2835
  static Fundo + #967, #2835
  static Fundo + #968, #2835
  static Fundo + #969, #2835
  static Fundo + #970, #2835
  static Fundo + #971, #2835
  static Fundo + #972, #2835
  static Fundo + #973, #2835
  static Fundo + #974, #2835
  static Fundo + #975, #2835
  static Fundo + #976, #2835
  static Fundo + #977, #2835
  static Fundo + #978, #2835
  static Fundo + #979, #2835
  static Fundo + #980, #2835
  static Fundo + #981, #2835
  static Fundo + #982, #2835
  static Fundo + #983, #2835
  static Fundo + #984, #2835
  static Fundo + #985, #2835
  static Fundo + #986, #2835
  static Fundo + #987, #2835
  static Fundo + #988, #2835
  static Fundo + #989, #2835
  static Fundo + #990, #2835
  static Fundo + #991, #2835
  static Fundo + #992, #2835
  static Fundo + #993, #2835
  static Fundo + #994, #2835
  static Fundo + #995, #2835
  static Fundo + #996, #2835
  static Fundo + #997, #2835
  static Fundo + #998, #2835
  static Fundo + #999, #2835

  ;Linha 25
  static Fundo + #1000, #2836
  static Fundo + #1001, #2836
  static Fundo + #1002, #2836
  static Fundo + #1003, #2836
  static Fundo + #1004, #538
  static Fundo + #1005, #2836
  static Fundo + #1006, #2836
  static Fundo + #1007, #2836
  static Fundo + #1008, #2836
  static Fundo + #1009, #2835
  static Fundo + #1010, #2836
  static Fundo + #1011, #2836
  static Fundo + #1012, #2836
  static Fundo + #1013, #2836
  static Fundo + #1014, #2835
  static Fundo + #1015, #2836
  static Fundo + #1016, #2836
  static Fundo + #1017, #2836
  static Fundo + #1018, #2836
  static Fundo + #1019, #2835
  static Fundo + #1020, #2836
  static Fundo + #1021, #2836
  static Fundo + #1022, #2836
  static Fundo + #1023, #2836
  static Fundo + #1024, #2835
  static Fundo + #1025, #2836
  static Fundo + #1026, #2836
  static Fundo + #1027, #2836
  static Fundo + #1028, #2836
  static Fundo + #1029, #2835
  static Fundo + #1030, #2836
  static Fundo + #1031, #2836
  static Fundo + #1032, #2836
  static Fundo + #1033, #2836
  static Fundo + #1034, #2835
  static Fundo + #1035, #2836
  static Fundo + #1036, #2836
  static Fundo + #1037, #2836
  static Fundo + #1038, #2836
  static Fundo + #1039, #2835

  ;Linha 26
  static Fundo + #1040, #2835
  static Fundo + #1041, #2835
  static Fundo + #1042, #2835
  static Fundo + #1043, #2835
  static Fundo + #1044, #3859
  static Fundo + #1045, #2835
  static Fundo + #1046, #2835
  static Fundo + #1047, #2835
  static Fundo + #1048, #2835
  static Fundo + #1049, #2835
  static Fundo + #1050, #2835
  static Fundo + #1051, #2835
  static Fundo + #1052, #2835
  static Fundo + #1053, #2835
  static Fundo + #1054, #2835
  static Fundo + #1055, #2835
  static Fundo + #1056, #2835
  static Fundo + #1057, #2835
  static Fundo + #1058, #2835
  static Fundo + #1059, #2835
  static Fundo + #1060, #2835
  static Fundo + #1061, #2835
  static Fundo + #1062, #2835
  static Fundo + #1063, #2835
  static Fundo + #1064, #2835
  static Fundo + #1065, #2835
  static Fundo + #1066, #2835
  static Fundo + #1067, #2835
  static Fundo + #1068, #2835
  static Fundo + #1069, #2835
  static Fundo + #1070, #2835
  static Fundo + #1071, #2835
  static Fundo + #1072, #2835
  static Fundo + #1073, #2835
  static Fundo + #1074, #2835
  static Fundo + #1075, #2835
  static Fundo + #1076, #2835
  static Fundo + #1077, #2835
  static Fundo + #1078, #2835
  static Fundo + #1079, #2835

  ;Linha 27
  static Fundo + #1080, #3856
  static Fundo + #1081, #3856
  static Fundo + #1082, #3856
  static Fundo + #1083, #3856
  static Fundo + #1084, #3856
  static Fundo + #1085, #3856
  static Fundo + #1086, #3856
  static Fundo + #1087, #3856
  static Fundo + #1088, #3856
  static Fundo + #1089, #3856
  static Fundo + #1090, #3856
  static Fundo + #1091, #3856
  static Fundo + #1092, #3856
  static Fundo + #1093, #3856
  static Fundo + #1094, #3856
  static Fundo + #1095, #3856
  static Fundo + #1096, #3856
  static Fundo + #1097, #3856
  static Fundo + #1098, #3856
  static Fundo + #1099, #3856
  static Fundo + #1100, #3856
  static Fundo + #1101, #3856
  static Fundo + #1102, #3856
  static Fundo + #1103, #3856
  static Fundo + #1104, #3856
  static Fundo + #1105, #3856
  static Fundo + #1106, #3856
  static Fundo + #1107, #3856
  static Fundo + #1108, #3856
  static Fundo + #1109, #3856
  static Fundo + #1110, #3856
  static Fundo + #1111, #3856
  static Fundo + #1112, #3859
  static Fundo + #1113, #3859
  static Fundo + #1114, #3859
  static Fundo + #1115, #3859
  static Fundo + #1116, #3859
  static Fundo + #1117, #3856
  static Fundo + #1118, #3856
  static Fundo + #1119, #3856

  ;Linha 28
  static Fundo + #1120, #2064
  static Fundo + #1121, #2064
  static Fundo + #1122, #2064
  static Fundo + #1123, #2064
  static Fundo + #1124, #2064
  static Fundo + #1125, #2064
  static Fundo + #1126, #2064
  static Fundo + #1127, #2064
  static Fundo + #1128, #2064
  static Fundo + #1129, #2064
  static Fundo + #1130, #2064
  static Fundo + #1131, #2064
  static Fundo + #1132, #2064
  static Fundo + #1133, #2064
  static Fundo + #1134, #2064
  static Fundo + #1135, #2064
  static Fundo + #1136, #2064
  static Fundo + #1137, #2064
  static Fundo + #1138, #2064
  static Fundo + #1139, #2064
  static Fundo + #1140, #2064
  static Fundo + #1141, #2064
  static Fundo + #1142, #2064
  static Fundo + #1143, #2064
  static Fundo + #1144, #2064
  static Fundo + #1145, #2064
  static Fundo + #1146, #2064
  static Fundo + #1147, #2064
  static Fundo + #1148, #2064
  static Fundo + #1149, #2064
  static Fundo + #1150, #2064
  static Fundo + #1151, #2064
  static Fundo + #1152, #2064
  static Fundo + #1153, #2064
  static Fundo + #1154, #2064
  static Fundo + #1155, #2064
  static Fundo + #1156, #2064
  static Fundo + #1157, #2064
  static Fundo + #1158, #2064
  static Fundo + #1159, #2064

  ;Linha 29
  static Fundo + #1160, #2064
  static Fundo + #1161, #2064
  static Fundo + #1162, #2064
  static Fundo + #1163, #2064
  static Fundo + #1164, #2064
  static Fundo + #1165, #2064
  static Fundo + #1166, #2064
  static Fundo + #1167, #2064
  static Fundo + #1168, #2064
  static Fundo + #1169, #2064
  static Fundo + #1170, #2064
  static Fundo + #1171, #2064
  static Fundo + #1172, #2064
  static Fundo + #1173, #2064
  static Fundo + #1174, #2064
  static Fundo + #1175, #2064
  static Fundo + #1176, #2064
  static Fundo + #1177, #2064
  static Fundo + #1178, #2064
  static Fundo + #1179, #2064
  static Fundo + #1180, #2064
  static Fundo + #1181, #2064
  static Fundo + #1182, #2064
  static Fundo + #1183, #2064
  static Fundo + #1184, #2064
  static Fundo + #1185, #2064
  static Fundo + #1186, #2064
  static Fundo + #1187, #2064
  static Fundo + #1188, #2064
  static Fundo + #1189, #2064
  static Fundo + #1190, #2064
  static Fundo + #1191, #2064
  static Fundo + #1192, #2064
  static Fundo + #1193, #2064
  static Fundo + #1194, #2064
  static Fundo + #1195, #2064
  static Fundo + #1196, #2064
  static Fundo + #1197, #2064
  static Fundo + #1198, #2064
  static Fundo + #1199, #2064

printFundoScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #Fundo
  loadn R1, #0
  loadn R2, #1200

  printFundoScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printFundoScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts


  INICIO_ : var #1200
  ;Linha 0
  static INICIO_ + #0, #127
  static INICIO_ + #1, #127
  static INICIO_ + #2, #127
  static INICIO_ + #3, #127
  static INICIO_ + #4, #127
  static INICIO_ + #5, #127
  static INICIO_ + #6, #127
  static INICIO_ + #7, #127
  static INICIO_ + #8, #127
  static INICIO_ + #9, #127
  static INICIO_ + #10, #127
  static INICIO_ + #11, #127
  static INICIO_ + #12, #127
  static INICIO_ + #13, #127
  static INICIO_ + #14, #127
  static INICIO_ + #15, #127
  static INICIO_ + #16, #127
  static INICIO_ + #17, #127
  static INICIO_ + #18, #127
  static INICIO_ + #19, #127
  static INICIO_ + #20, #127
  static INICIO_ + #21, #127
  static INICIO_ + #22, #3967
  static INICIO_ + #23, #127
  static INICIO_ + #24, #127
  static INICIO_ + #25, #127
  static INICIO_ + #26, #127
  static INICIO_ + #27, #127
  static INICIO_ + #28, #127
  static INICIO_ + #29, #127
  static INICIO_ + #30, #127
  static INICIO_ + #31, #127
  static INICIO_ + #32, #3967
  static INICIO_ + #33, #127
  static INICIO_ + #34, #127
  static INICIO_ + #35, #127
  static INICIO_ + #36, #127
  static INICIO_ + #37, #127
  static INICIO_ + #38, #127
  static INICIO_ + #39, #127

  ;Linha 1
  static INICIO_ + #40, #127
  static INICIO_ + #41, #127
  static INICIO_ + #42, #127
  static INICIO_ + #43, #3967
  static INICIO_ + #44, #3967
  static INICIO_ + #45, #3967
  static INICIO_ + #46, #127
  static INICIO_ + #47, #127
  static INICIO_ + #48, #127
  static INICIO_ + #49, #127
  static INICIO_ + #50, #127
  static INICIO_ + #51, #127
  static INICIO_ + #52, #127
  static INICIO_ + #53, #127
  static INICIO_ + #54, #127
  static INICIO_ + #55, #127
  static INICIO_ + #56, #127
  static INICIO_ + #57, #127
  static INICIO_ + #58, #127
  static INICIO_ + #59, #127
  static INICIO_ + #60, #127
  static INICIO_ + #61, #127
  static INICIO_ + #62, #127
  static INICIO_ + #63, #127
  static INICIO_ + #64, #127
  static INICIO_ + #65, #127
  static INICIO_ + #66, #127
  static INICIO_ + #67, #127
  static INICIO_ + #68, #127
  static INICIO_ + #69, #127
  static INICIO_ + #70, #127
  static INICIO_ + #71, #127
  static INICIO_ + #72, #127
  static INICIO_ + #73, #127
  static INICIO_ + #74, #127
  static INICIO_ + #75, #127
  static INICIO_ + #76, #127
  static INICIO_ + #77, #127
  static INICIO_ + #78, #127
  static INICIO_ + #79, #127

  ;Linha 2
  static INICIO_ + #80, #127
  static INICIO_ + #81, #127
  static INICIO_ + #82, #127
  static INICIO_ + #83, #127
  static INICIO_ + #84, #3967
  static INICIO_ + #85, #3967
  static INICIO_ + #86, #95
  static INICIO_ + #87, #95
  static INICIO_ + #88, #127
  static INICIO_ + #89, #127
  static INICIO_ + #90, #127
  static INICIO_ + #91, #127
  static INICIO_ + #92, #127
  static INICIO_ + #93, #127
  static INICIO_ + #94, #127
  static INICIO_ + #95, #127
  static INICIO_ + #96, #127
  static INICIO_ + #97, #3967
  static INICIO_ + #98, #95
  static INICIO_ + #99, #95
  static INICIO_ + #100, #127
  static INICIO_ + #101, #127
  static INICIO_ + #102, #127
  static INICIO_ + #103, #127
  static INICIO_ + #104, #127
  static INICIO_ + #105, #127
  static INICIO_ + #106, #127
  static INICIO_ + #107, #127
  static INICIO_ + #108, #127
  static INICIO_ + #109, #127
  static INICIO_ + #110, #127
  static INICIO_ + #111, #127
  static INICIO_ + #112, #127
  static INICIO_ + #113, #127
  static INICIO_ + #114, #127
  static INICIO_ + #115, #127
  static INICIO_ + #116, #127
  static INICIO_ + #117, #127
  static INICIO_ + #118, #127
  static INICIO_ + #119, #127

  ;Linha 3
  static INICIO_ + #120, #127
  static INICIO_ + #121, #127
  static INICIO_ + #122, #127
  static INICIO_ + #123, #127
  static INICIO_ + #124, #3967
  static INICIO_ + #125, #47
  static INICIO_ + #126, #3967
  static INICIO_ + #127, #47
  static INICIO_ + #128, #92
  static INICIO_ + #129, #127
  static INICIO_ + #130, #127
  static INICIO_ + #131, #127
  static INICIO_ + #132, #127
  static INICIO_ + #133, #127
  static INICIO_ + #134, #127
  static INICIO_ + #135, #127
  static INICIO_ + #136, #3967
  static INICIO_ + #137, #47
  static INICIO_ + #138, #95
  static INICIO_ + #139, #47
  static INICIO_ + #140, #92
  static INICIO_ + #141, #127
  static INICIO_ + #142, #127
  static INICIO_ + #143, #127
  static INICIO_ + #144, #127
  static INICIO_ + #145, #127
  static INICIO_ + #146, #127
  static INICIO_ + #147, #127
  static INICIO_ + #148, #127
  static INICIO_ + #149, #127
  static INICIO_ + #150, #95
  static INICIO_ + #151, #95
  static INICIO_ + #152, #3967
  static INICIO_ + #153, #3967
  static INICIO_ + #154, #127
  static INICIO_ + #155, #127
  static INICIO_ + #156, #127
  static INICIO_ + #157, #127
  static INICIO_ + #158, #127
  static INICIO_ + #159, #127

  ;Linha 4
  static INICIO_ + #160, #3967
  static INICIO_ + #161, #3967
  static INICIO_ + #162, #3967
  static INICIO_ + #163, #3967
  static INICIO_ + #164, #47
  static INICIO_ + #165, #3967
  static INICIO_ + #166, #47
  static INICIO_ + #167, #58
  static INICIO_ + #168, #58
  static INICIO_ + #169, #92
  static INICIO_ + #170, #127
  static INICIO_ + #171, #127
  static INICIO_ + #172, #127
  static INICIO_ + #173, #127
  static INICIO_ + #174, #127
  static INICIO_ + #175, #127
  static INICIO_ + #176, #127
  static INICIO_ + #177, #92
  static INICIO_ + #178, #127
  static INICIO_ + #179, #92
  static INICIO_ + #180, #58
  static INICIO_ + #181, #92
  static INICIO_ + #182, #127
  static INICIO_ + #183, #127
  static INICIO_ + #184, #127
  static INICIO_ + #185, #127
  static INICIO_ + #186, #127
  static INICIO_ + #187, #127
  static INICIO_ + #188, #127
  static INICIO_ + #189, #47
  static INICIO_ + #190, #3967
  static INICIO_ + #191, #47
  static INICIO_ + #192, #92
  static INICIO_ + #193, #3967
  static INICIO_ + #194, #3967
  static INICIO_ + #195, #127
  static INICIO_ + #196, #127
  static INICIO_ + #197, #127
  static INICIO_ + #198, #127
  static INICIO_ + #199, #127

  ;Linha 5
  static INICIO_ + #200, #127
  static INICIO_ + #201, #3967
  static INICIO_ + #202, #3967
  static INICIO_ + #203, #47
  static INICIO_ + #204, #3967
  static INICIO_ + #205, #47
  static INICIO_ + #206, #58
  static INICIO_ + #207, #47
  static INICIO_ + #208, #92
  static INICIO_ + #209, #58
  static INICIO_ + #210, #92
  static INICIO_ + #211, #3967
  static INICIO_ + #212, #127
  static INICIO_ + #213, #127
  static INICIO_ + #214, #127
  static INICIO_ + #215, #127
  static INICIO_ + #216, #127
  static INICIO_ + #217, #127
  static INICIO_ + #218, #92
  static INICIO_ + #219, #3967
  static INICIO_ + #220, #92
  static INICIO_ + #221, #58
  static INICIO_ + #222, #92
  static INICIO_ + #223, #127
  static INICIO_ + #224, #127
  static INICIO_ + #225, #127
  static INICIO_ + #226, #127
  static INICIO_ + #227, #127
  static INICIO_ + #228, #47
  static INICIO_ + #229, #3967
  static INICIO_ + #230, #47
  static INICIO_ + #231, #58
  static INICIO_ + #232, #47
  static INICIO_ + #233, #3967
  static INICIO_ + #234, #3967
  static INICIO_ + #235, #3967
  static INICIO_ + #236, #127
  static INICIO_ + #237, #127
  static INICIO_ + #238, #127
  static INICIO_ + #239, #127

  ;Linha 6
  static INICIO_ + #240, #3967
  static INICIO_ + #241, #3967
  static INICIO_ + #242, #47
  static INICIO_ + #243, #3967
  static INICIO_ + #244, #47
  static INICIO_ + #245, #58
  static INICIO_ + #246, #47
  static INICIO_ + #247, #126
  static INICIO_ + #248, #47
  static INICIO_ + #249, #58
  static INICIO_ + #250, #58
  static INICIO_ + #251, #92
  static INICIO_ + #252, #3967
  static INICIO_ + #253, #3967
  static INICIO_ + #254, #95
  static INICIO_ + #255, #95
  static INICIO_ + #256, #95
  static INICIO_ + #257, #95
  static INICIO_ + #258, #95
  static INICIO_ + #259, #92
  static INICIO_ + #260, #95
  static INICIO_ + #261, #92
  static INICIO_ + #262, #58
  static INICIO_ + #263, #92
  static INICIO_ + #264, #127
  static INICIO_ + #265, #127
  static INICIO_ + #266, #127
  static INICIO_ + #267, #47
  static INICIO_ + #268, #3967
  static INICIO_ + #269, #47
  static INICIO_ + #270, #58
  static INICIO_ + #271, #47
  static INICIO_ + #272, #3967
  static INICIO_ + #273, #3967
  static INICIO_ + #274, #127
  static INICIO_ + #275, #3967
  static INICIO_ + #276, #127
  static INICIO_ + #277, #127
  static INICIO_ + #278, #127
  static INICIO_ + #279, #127

  ;Linha 7
  static INICIO_ + #280, #3967
  static INICIO_ + #281, #47
  static INICIO_ + #282, #3967
  static INICIO_ + #283, #47
  static INICIO_ + #284, #58
  static INICIO_ + #285, #47
  static INICIO_ + #286, #3967
  static INICIO_ + #287, #47
  static INICIO_ + #288, #58
  static INICIO_ + #289, #47
  static INICIO_ + #290, #92
  static INICIO_ + #291, #58
  static INICIO_ + #292, #92
  static INICIO_ + #293, #47
  static INICIO_ + #294, #95
  static INICIO_ + #295, #47
  static INICIO_ + #296, #58
  static INICIO_ + #297, #58
  static INICIO_ + #298, #58
  static INICIO_ + #299, #58
  static INICIO_ + #300, #58
  static INICIO_ + #301, #58
  static INICIO_ + #302, #58
  static INICIO_ + #303, #58
  static INICIO_ + #304, #92
  static INICIO_ + #305, #127
  static INICIO_ + #306, #47
  static INICIO_ + #307, #3967
  static INICIO_ + #308, #47
  static INICIO_ + #309, #58
  static INICIO_ + #310, #58
  static INICIO_ + #311, #92
  static INICIO_ + #312, #3967
  static INICIO_ + #313, #3967
  static INICIO_ + #314, #127
  static INICIO_ + #315, #127
  static INICIO_ + #316, #127
  static INICIO_ + #317, #127
  static INICIO_ + #318, #127
  static INICIO_ + #319, #127

  ;Linha 8
  static INICIO_ + #320, #3967
  static INICIO_ + #321, #92
  static INICIO_ + #322, #19
  static INICIO_ + #323, #92
  static INICIO_ + #324, #58
  static INICIO_ + #325, #92
  static INICIO_ + #326, #47
  static INICIO_ + #327, #58
  static INICIO_ + #328, #47
  static INICIO_ + #329, #92
  static INICIO_ + #330, #126
  static INICIO_ + #331, #92
  static INICIO_ + #332, #47
  static INICIO_ + #333, #92
  static INICIO_ + #334, #127
  static INICIO_ + #335, #92
  static INICIO_ + #336, #58
  static INICIO_ + #337, #92
  static INICIO_ + #338, #126
  static INICIO_ + #339, #126
  static INICIO_ + #340, #92
  static INICIO_ + #341, #126
  static INICIO_ + #342, #126
  static INICIO_ + #343, #92
  static INICIO_ + #344, #47
  static INICIO_ + #345, #47
  static INICIO_ + #346, #20
  static INICIO_ + #347, #47
  static INICIO_ + #348, #58
  static INICIO_ + #349, #47
  static INICIO_ + #350, #92
  static INICIO_ + #351, #58
  static INICIO_ + #352, #92
  static INICIO_ + #353, #3967
  static INICIO_ + #354, #3967
  static INICIO_ + #355, #127
  static INICIO_ + #356, #127
  static INICIO_ + #357, #127
  static INICIO_ + #358, #127
  static INICIO_ + #359, #127

  ;Linha 9
  static INICIO_ + #360, #3967
  static INICIO_ + #361, #3967
  static INICIO_ + #362, #92
  static INICIO_ + #363, #3967
  static INICIO_ + #364, #92
  static INICIO_ + #365, #58
  static INICIO_ + #366, #58
  static INICIO_ + #367, #47
  static INICIO_ + #368, #3967
  static INICIO_ + #369, #3967
  static INICIO_ + #370, #19
  static INICIO_ + #371, #19
  static INICIO_ + #372, #3967
  static INICIO_ + #373, #3967
  static INICIO_ + #374, #92
  static INICIO_ + #375, #3967
  static INICIO_ + #376, #92
  static INICIO_ + #377, #58
  static INICIO_ + #378, #92
  static INICIO_ + #379, #127
  static INICIO_ + #380, #127
  static INICIO_ + #381, #126
  static INICIO_ + #382, #126
  static INICIO_ + #383, #126
  static INICIO_ + #384, #127
  static INICIO_ + #385, #92
  static INICIO_ + #386, #3967
  static INICIO_ + #387, #92
  static INICIO_ + #388, #47
  static INICIO_ + #389, #92
  static INICIO_ + #390, #3967
  static INICIO_ + #391, #92
  static INICIO_ + #392, #58
  static INICIO_ + #393, #92
  static INICIO_ + #394, #3967
  static INICIO_ + #395, #3967
  static INICIO_ + #396, #3967
  static INICIO_ + #397, #127
  static INICIO_ + #398, #127
  static INICIO_ + #399, #127

  ;Linha 10
  static INICIO_ + #400, #127
  static INICIO_ + #401, #3967
  static INICIO_ + #402, #3967
  static INICIO_ + #403, #92
  static INICIO_ + #404, #3967
  static INICIO_ + #405, #92
  static INICIO_ + #406, #58
  static INICIO_ + #407, #92
  static INICIO_ + #408, #3967
  static INICIO_ + #409, #127
  static INICIO_ + #410, #3967
  static INICIO_ + #411, #3967
  static INICIO_ + #412, #127
  static INICIO_ + #413, #3967
  static INICIO_ + #414, #3967
  static INICIO_ + #415, #92
  static INICIO_ + #416, #127
  static INICIO_ + #417, #92
  static INICIO_ + #418, #58
  static INICIO_ + #419, #92
  static INICIO_ + #420, #127
  static INICIO_ + #421, #127
  static INICIO_ + #422, #127
  static INICIO_ + #423, #127
  static INICIO_ + #424, #127
  static INICIO_ + #425, #127
  static INICIO_ + #426, #19
  static INICIO_ + #427, #19
  static INICIO_ + #428, #3967
  static INICIO_ + #429, #3967
  static INICIO_ + #430, #92
  static INICIO_ + #431, #3967
  static INICIO_ + #432, #92
  static INICIO_ + #433, #58
  static INICIO_ + #434, #92
  static INICIO_ + #435, #3967
  static INICIO_ + #436, #3967
  static INICIO_ + #437, #127
  static INICIO_ + #438, #127
  static INICIO_ + #439, #127

  ;Linha 11
  static INICIO_ + #440, #127
  static INICIO_ + #441, #3967
  static INICIO_ + #442, #3967
  static INICIO_ + #443, #127
  static INICIO_ + #444, #92
  static INICIO_ + #445, #3967
  static INICIO_ + #446, #92
  static INICIO_ + #447, #58
  static INICIO_ + #448, #92
  static INICIO_ + #449, #127
  static INICIO_ + #450, #127
  static INICIO_ + #451, #127
  static INICIO_ + #452, #127
  static INICIO_ + #453, #127
  static INICIO_ + #454, #3967
  static INICIO_ + #455, #3967
  static INICIO_ + #456, #92
  static INICIO_ + #457, #127
  static INICIO_ + #458, #92
  static INICIO_ + #459, #58
  static INICIO_ + #460, #92
  static INICIO_ + #461, #127
  static INICIO_ + #462, #127
  static INICIO_ + #463, #127
  static INICIO_ + #464, #127
  static INICIO_ + #465, #127
  static INICIO_ + #466, #127
  static INICIO_ + #467, #127
  static INICIO_ + #468, #127
  static INICIO_ + #469, #127
  static INICIO_ + #470, #127
  static INICIO_ + #471, #92
  static INICIO_ + #472, #3967
  static INICIO_ + #473, #92
  static INICIO_ + #474, #47
  static INICIO_ + #475, #3967
  static INICIO_ + #476, #3967
  static INICIO_ + #477, #127
  static INICIO_ + #478, #127
  static INICIO_ + #479, #127

  ;Linha 12
  static INICIO_ + #480, #127
  static INICIO_ + #481, #127
  static INICIO_ + #482, #3967
  static INICIO_ + #483, #3967
  static INICIO_ + #484, #3967
  static INICIO_ + #485, #92
  static INICIO_ + #486, #20
  static INICIO_ + #487, #92
  static INICIO_ + #488, #47
  static INICIO_ + #489, #127
  static INICIO_ + #490, #127
  static INICIO_ + #491, #127
  static INICIO_ + #492, #127
  static INICIO_ + #493, #127
  static INICIO_ + #494, #127
  static INICIO_ + #495, #3967
  static INICIO_ + #496, #3967
  static INICIO_ + #497, #92
  static INICIO_ + #498, #20
  static INICIO_ + #499, #92
  static INICIO_ + #500, #47
  static INICIO_ + #501, #127
  static INICIO_ + #502, #127
  static INICIO_ + #503, #127
  static INICIO_ + #504, #127
  static INICIO_ + #505, #127
  static INICIO_ + #506, #3967
  static INICIO_ + #507, #3967
  static INICIO_ + #508, #3967
  static INICIO_ + #509, #3967
  static INICIO_ + #510, #3967
  static INICIO_ + #511, #127
  static INICIO_ + #512, #19
  static INICIO_ + #513, #19
  static INICIO_ + #514, #3967
  static INICIO_ + #515, #3967
  static INICIO_ + #516, #3967
  static INICIO_ + #517, #127
  static INICIO_ + #518, #127
  static INICIO_ + #519, #127

  ;Linha 13
  static INICIO_ + #520, #2836
  static INICIO_ + #521, #2836
  static INICIO_ + #522, #2836
  static INICIO_ + #523, #2836
  static INICIO_ + #524, #3967
  static INICIO_ + #525, #3967
  static INICIO_ + #526, #2836
  static INICIO_ + #527, #2836
  static INICIO_ + #528, #2836
  static INICIO_ + #529, #2836
  static INICIO_ + #530, #2836
  static INICIO_ + #531, #3967
  static INICIO_ + #532, #3967
  static INICIO_ + #533, #2836
  static INICIO_ + #534, #2836
  static INICIO_ + #535, #2836
  static INICIO_ + #536, #2836
  static INICIO_ + #537, #2836
  static INICIO_ + #538, #3967
  static INICIO_ + #539, #3967
  static INICIO_ + #540, #2836
  static INICIO_ + #541, #2836
  static INICIO_ + #542, #2836
  static INICIO_ + #543, #2836
  static INICIO_ + #544, #2836
  static INICIO_ + #545, #3967
  static INICIO_ + #546, #3967
  static INICIO_ + #547, #2836
  static INICIO_ + #548, #2836
  static INICIO_ + #549, #2836
  static INICIO_ + #550, #2836
  static INICIO_ + #551, #2836
  static INICIO_ + #552, #3967
  static INICIO_ + #553, #3967
  static INICIO_ + #554, #2836
  static INICIO_ + #555, #2836
  static INICIO_ + #556, #2836
  static INICIO_ + #557, #2836
  static INICIO_ + #558, #2836
  static INICIO_ + #559, #3967

  ;Linha 14
  static INICIO_ + #560, #2835
  static INICIO_ + #561, #2835
  static INICIO_ + #562, #2835
  static INICIO_ + #563, #2835
  static INICIO_ + #564, #3967
  static INICIO_ + #565, #3967
  static INICIO_ + #566, #2835
  static INICIO_ + #567, #2835
  static INICIO_ + #568, #2835
  static INICIO_ + #569, #2835
  static INICIO_ + #570, #2835
  static INICIO_ + #571, #3967
  static INICIO_ + #572, #3967
  static INICIO_ + #573, #2835
  static INICIO_ + #574, #2835
  static INICIO_ + #575, #2835
  static INICIO_ + #576, #2835
  static INICIO_ + #577, #2835
  static INICIO_ + #578, #3967
  static INICIO_ + #579, #3967
  static INICIO_ + #580, #2835
  static INICIO_ + #581, #2835
  static INICIO_ + #582, #2835
  static INICIO_ + #583, #2835
  static INICIO_ + #584, #2835
  static INICIO_ + #585, #3967
  static INICIO_ + #586, #3967
  static INICIO_ + #587, #2835
  static INICIO_ + #588, #2835
  static INICIO_ + #589, #2835
  static INICIO_ + #590, #2835
  static INICIO_ + #591, #2835
  static INICIO_ + #592, #20
  static INICIO_ + #593, #20
  static INICIO_ + #594, #2835
  static INICIO_ + #595, #2835
  static INICIO_ + #596, #2835
  static INICIO_ + #597, #2835
  static INICIO_ + #598, #2835
  static INICIO_ + #599, #127

  ;Linha 15
  static INICIO_ + #600, #3967
  static INICIO_ + #601, #3967
  static INICIO_ + #602, #3967
  static INICIO_ + #603, #3967
  static INICIO_ + #604, #3967
  static INICIO_ + #605, #3967
  static INICIO_ + #606, #3967
  static INICIO_ + #607, #3967
  static INICIO_ + #608, #20
  static INICIO_ + #609, #20
  static INICIO_ + #610, #3967
  static INICIO_ + #611, #3967
  static INICIO_ + #612, #3967
  static INICIO_ + #613, #3967
  static INICIO_ + #614, #3967
  static INICIO_ + #615, #3967
  static INICIO_ + #616, #3967
  static INICIO_ + #617, #3967
  static INICIO_ + #618, #3967
  static INICIO_ + #619, #47
  static INICIO_ + #620, #92
  static INICIO_ + #621, #19
  static INICIO_ + #622, #92
  static INICIO_ + #623, #3967
  static INICIO_ + #624, #3967
  static INICIO_ + #625, #3967
  static INICIO_ + #626, #3967
  static INICIO_ + #627, #3967
  static INICIO_ + #628, #3967
  static INICIO_ + #629, #3967
  static INICIO_ + #630, #3967
  static INICIO_ + #631, #47
  static INICIO_ + #632, #92
  static INICIO_ + #633, #3967
  static INICIO_ + #634, #92
  static INICIO_ + #635, #127
  static INICIO_ + #636, #127
  static INICIO_ + #637, #127
  static INICIO_ + #638, #127
  static INICIO_ + #639, #127

  ;Linha 16
  static INICIO_ + #640, #127
  static INICIO_ + #641, #127
  static INICIO_ + #642, #127
  static INICIO_ + #643, #127
  static INICIO_ + #644, #3967
  static INICIO_ + #645, #3967
  static INICIO_ + #646, #3967
  static INICIO_ + #647, #47
  static INICIO_ + #648, #92
  static INICIO_ + #649, #3967
  static INICIO_ + #650, #92
  static INICIO_ + #651, #3967
  static INICIO_ + #652, #3967
  static INICIO_ + #653, #3967
  static INICIO_ + #654, #3967
  static INICIO_ + #655, #3967
  static INICIO_ + #656, #3967
  static INICIO_ + #657, #3967
  static INICIO_ + #658, #20
  static INICIO_ + #659, #92
  static INICIO_ + #660, #58
  static INICIO_ + #661, #92
  static INICIO_ + #662, #3967
  static INICIO_ + #663, #92
  static INICIO_ + #664, #3967
  static INICIO_ + #665, #3967
  static INICIO_ + #666, #3967
  static INICIO_ + #667, #3967
  static INICIO_ + #668, #3967
  static INICIO_ + #669, #3967
  static INICIO_ + #670, #47
  static INICIO_ + #671, #58
  static INICIO_ + #672, #58
  static INICIO_ + #673, #92
  static INICIO_ + #674, #3967
  static INICIO_ + #675, #92
  static INICIO_ + #676, #127
  static INICIO_ + #677, #127
  static INICIO_ + #678, #127
  static INICIO_ + #679, #127

  ;Linha 17
  static INICIO_ + #680, #127
  static INICIO_ + #681, #127
  static INICIO_ + #682, #127
  static INICIO_ + #683, #3967
  static INICIO_ + #684, #3967
  static INICIO_ + #685, #3967
  static INICIO_ + #686, #3967
  static INICIO_ + #687, #92
  static INICIO_ + #688, #58
  static INICIO_ + #689, #92
  static INICIO_ + #690, #3967
  static INICIO_ + #691, #92
  static INICIO_ + #692, #3967
  static INICIO_ + #693, #3967
  static INICIO_ + #694, #3967
  static INICIO_ + #695, #3967
  static INICIO_ + #696, #3967
  static INICIO_ + #697, #47
  static INICIO_ + #698, #92
  static INICIO_ + #699, #3967
  static INICIO_ + #700, #92
  static INICIO_ + #701, #58
  static INICIO_ + #702, #92
  static INICIO_ + #703, #3967
  static INICIO_ + #704, #92
  static INICIO_ + #705, #3967
  static INICIO_ + #706, #3967
  static INICIO_ + #707, #3967
  static INICIO_ + #708, #3967
  static INICIO_ + #709, #47
  static INICIO_ + #710, #58
  static INICIO_ + #711, #47
  static INICIO_ + #712, #92
  static INICIO_ + #713, #58
  static INICIO_ + #714, #92
  static INICIO_ + #715, #3967
  static INICIO_ + #716, #92
  static INICIO_ + #717, #127
  static INICIO_ + #718, #127
  static INICIO_ + #719, #127

  ;Linha 18
  static INICIO_ + #720, #127
  static INICIO_ + #721, #3967
  static INICIO_ + #722, #3967
  static INICIO_ + #723, #3967
  static INICIO_ + #724, #3967
  static INICIO_ + #725, #3967
  static INICIO_ + #726, #3967
  static INICIO_ + #727, #3967
  static INICIO_ + #728, #92
  static INICIO_ + #729, #58
  static INICIO_ + #730, #92
  static INICIO_ + #731, #3967
  static INICIO_ + #732, #92
  static INICIO_ + #733, #3967
  static INICIO_ + #734, #3967
  static INICIO_ + #735, #3967
  static INICIO_ + #736, #20
  static INICIO_ + #737, #92
  static INICIO_ + #738, #58
  static INICIO_ + #739, #92
  static INICIO_ + #740, #3967
  static INICIO_ + #741, #92
  static INICIO_ + #742, #58
  static INICIO_ + #743, #92
  static INICIO_ + #744, #3967
  static INICIO_ + #745, #92
  static INICIO_ + #746, #3967
  static INICIO_ + #747, #3967
  static INICIO_ + #748, #3967
  static INICIO_ + #749, #92
  static INICIO_ + #750, #58
  static INICIO_ + #751, #92
  static INICIO_ + #752, #3967
  static INICIO_ + #753, #92
  static INICIO_ + #754, #58
  static INICIO_ + #755, #92
  static INICIO_ + #756, #3967
  static INICIO_ + #757, #92
  static INICIO_ + #758, #127
  static INICIO_ + #759, #127

  ;Linha 19
  static INICIO_ + #760, #3967
  static INICIO_ + #761, #3967
  static INICIO_ + #762, #3967
  static INICIO_ + #763, #3967
  static INICIO_ + #764, #3967
  static INICIO_ + #765, #3967
  static INICIO_ + #766, #3967
  static INICIO_ + #767, #3967
  static INICIO_ + #768, #47
  static INICIO_ + #769, #58
  static INICIO_ + #770, #58
  static INICIO_ + #771, #92
  static INICIO_ + #772, #3967
  static INICIO_ + #773, #92
  static INICIO_ + #774, #3967
  static INICIO_ + #775, #47
  static INICIO_ + #776, #92
  static INICIO_ + #777, #3967
  static INICIO_ + #778, #92
  static INICIO_ + #779, #58
  static INICIO_ + #780, #92
  static INICIO_ + #781, #3967
  static INICIO_ + #782, #92
  static INICIO_ + #783, #58
  static INICIO_ + #784, #92
  static INICIO_ + #785, #20
  static INICIO_ + #786, #92
  static INICIO_ + #787, #20
  static INICIO_ + #788, #20
  static INICIO_ + #789, #20
  static INICIO_ + #790, #92
  static INICIO_ + #791, #58
  static INICIO_ + #792, #92
  static INICIO_ + #793, #3967
  static INICIO_ + #794, #92
  static INICIO_ + #795, #58
  static INICIO_ + #796, #92
  static INICIO_ + #797, #20
  static INICIO_ + #798, #92
  static INICIO_ + #799, #3967

  ;Linha 20
  static INICIO_ + #800, #3967
  static INICIO_ + #801, #3967
  static INICIO_ + #802, #3967
  static INICIO_ + #803, #3967
  static INICIO_ + #804, #3967
  static INICIO_ + #805, #3967
  static INICIO_ + #806, #3967
  static INICIO_ + #807, #47
  static INICIO_ + #808, #58
  static INICIO_ + #809, #47
  static INICIO_ + #810, #92
  static INICIO_ + #811, #58
  static INICIO_ + #812, #92
  static INICIO_ + #813, #20
  static INICIO_ + #814, #92
  static INICIO_ + #815, #92
  static INICIO_ + #816, #58
  static INICIO_ + #817, #92
  static INICIO_ + #818, #3967
  static INICIO_ + #819, #92
  static INICIO_ + #820, #58
  static INICIO_ + #821, #92
  static INICIO_ + #822, #47
  static INICIO_ + #823, #58
  static INICIO_ + #824, #47
  static INICIO_ + #825, #3967
  static INICIO_ + #826, #47
  static INICIO_ + #827, #92
  static INICIO_ + #828, #58
  static INICIO_ + #829, #58
  static INICIO_ + #830, #58
  static INICIO_ + #831, #58
  static INICIO_ + #832, #58
  static INICIO_ + #833, #92
  static INICIO_ + #834, #47
  static INICIO_ + #835, #58
  static INICIO_ + #836, #47
  static INICIO_ + #837, #3967
  static INICIO_ + #838, #47
  static INICIO_ + #839, #127

  ;Linha 21
  static INICIO_ + #840, #3967
  static INICIO_ + #841, #3967
  static INICIO_ + #842, #3967
  static INICIO_ + #843, #3967
  static INICIO_ + #844, #3967
  static INICIO_ + #845, #3967
  static INICIO_ + #846, #47
  static INICIO_ + #847, #58
  static INICIO_ + #848, #47
  static INICIO_ + #849, #3967
  static INICIO_ + #850, #47
  static INICIO_ + #851, #92
  static INICIO_ + #852, #47
  static INICIO_ + #853, #3967
  static INICIO_ + #854, #47
  static INICIO_ + #855, #3967
  static INICIO_ + #856, #92
  static INICIO_ + #857, #58
  static INICIO_ + #858, #92
  static INICIO_ + #859, #3967
  static INICIO_ + #860, #92
  static INICIO_ + #861, #58
  static INICIO_ + #862, #58
  static INICIO_ + #863, #47
  static INICIO_ + #864, #3967
  static INICIO_ + #865, #47
  static INICIO_ + #866, #3967
  static INICIO_ + #867, #3967
  static INICIO_ + #868, #126
  static INICIO_ + #869, #126
  static INICIO_ + #870, #126
  static INICIO_ + #871, #126
  static INICIO_ + #872, #92
  static INICIO_ + #873, #58
  static INICIO_ + #874, #58
  static INICIO_ + #875, #47
  static INICIO_ + #876, #3967
  static INICIO_ + #877, #47
  static INICIO_ + #878, #127
  static INICIO_ + #879, #127

  ;Linha 22
  static INICIO_ + #880, #127
  static INICIO_ + #881, #3967
  static INICIO_ + #882, #3967
  static INICIO_ + #883, #127
  static INICIO_ + #884, #3967
  static INICIO_ + #885, #47
  static INICIO_ + #886, #58
  static INICIO_ + #887, #47
  static INICIO_ + #888, #3967
  static INICIO_ + #889, #47
  static INICIO_ + #890, #3967
  static INICIO_ + #891, #3967
  static INICIO_ + #892, #19
  static INICIO_ + #893, #19
  static INICIO_ + #894, #3967
  static INICIO_ + #895, #3967
  static INICIO_ + #896, #3967
  static INICIO_ + #897, #92
  static INICIO_ + #898, #58
  static INICIO_ + #899, #92
  static INICIO_ + #900, #47
  static INICIO_ + #901, #58
  static INICIO_ + #902, #47
  static INICIO_ + #903, #3967
  static INICIO_ + #904, #47
  static INICIO_ + #905, #127
  static INICIO_ + #906, #127
  static INICIO_ + #907, #3967
  static INICIO_ + #908, #3967
  static INICIO_ + #909, #3967
  static INICIO_ + #910, #3967
  static INICIO_ + #911, #3967
  static INICIO_ + #912, #47
  static INICIO_ + #913, #58
  static INICIO_ + #914, #47
  static INICIO_ + #915, #3967
  static INICIO_ + #916, #47
  static INICIO_ + #917, #127
  static INICIO_ + #918, #127
  static INICIO_ + #919, #127

  ;Linha 23
  static INICIO_ + #920, #127
  static INICIO_ + #921, #127
  static INICIO_ + #922, #127
  static INICIO_ + #923, #127
  static INICIO_ + #924, #127
  static INICIO_ + #925, #92
  static INICIO_ + #926, #47
  static INICIO_ + #927, #3967
  static INICIO_ + #928, #47
  static INICIO_ + #929, #3967
  static INICIO_ + #930, #3967
  static INICIO_ + #931, #3967
  static INICIO_ + #932, #3967
  static INICIO_ + #933, #3967
  static INICIO_ + #934, #3967
  static INICIO_ + #935, #3967
  static INICIO_ + #936, #3967
  static INICIO_ + #937, #3967
  static INICIO_ + #938, #92
  static INICIO_ + #939, #58
  static INICIO_ + #940, #58
  static INICIO_ + #941, #47
  static INICIO_ + #942, #3967
  static INICIO_ + #943, #47
  static INICIO_ + #944, #3967
  static INICIO_ + #945, #127
  static INICIO_ + #946, #127
  static INICIO_ + #947, #127
  static INICIO_ + #948, #127
  static INICIO_ + #949, #3967
  static INICIO_ + #950, #3967
  static INICIO_ + #951, #47
  static INICIO_ + #952, #58
  static INICIO_ + #953, #47
  static INICIO_ + #954, #3967
  static INICIO_ + #955, #47
  static INICIO_ + #956, #3967
  static INICIO_ + #957, #127
  static INICIO_ + #958, #127
  static INICIO_ + #959, #127

  ;Linha 24
  static INICIO_ + #960, #127
  static INICIO_ + #961, #127
  static INICIO_ + #962, #127
  static INICIO_ + #963, #127
  static INICIO_ + #964, #127
  static INICIO_ + #965, #127
  static INICIO_ + #966, #19
  static INICIO_ + #967, #19
  static INICIO_ + #968, #3967
  static INICIO_ + #969, #3967
  static INICIO_ + #970, #3967
  static INICIO_ + #971, #3967
  static INICIO_ + #972, #3967
  static INICIO_ + #973, #3967
  static INICIO_ + #974, #3967
  static INICIO_ + #975, #3967
  static INICIO_ + #976, #3967
  static INICIO_ + #977, #3967
  static INICIO_ + #978, #3967
  static INICIO_ + #979, #92
  static INICIO_ + #980, #47
  static INICIO_ + #981, #3967
  static INICIO_ + #982, #47
  static INICIO_ + #983, #3967
  static INICIO_ + #984, #3967
  static INICIO_ + #985, #3967
  static INICIO_ + #986, #127
  static INICIO_ + #987, #127
  static INICIO_ + #988, #127
  static INICIO_ + #989, #127
  static INICIO_ + #990, #3967
  static INICIO_ + #991, #92
  static INICIO_ + #992, #47
  static INICIO_ + #993, #3967
  static INICIO_ + #994, #47
  static INICIO_ + #995, #3967
  static INICIO_ + #996, #127
  static INICIO_ + #997, #127
  static INICIO_ + #998, #127
  static INICIO_ + #999, #127

  ;Linha 25
  static INICIO_ + #1000, #127
  static INICIO_ + #1001, #127
  static INICIO_ + #1002, #127
  static INICIO_ + #1003, #127
  static INICIO_ + #1004, #127
  static INICIO_ + #1005, #127
  static INICIO_ + #1006, #127
  static INICIO_ + #1007, #127
  static INICIO_ + #1008, #127
  static INICIO_ + #1009, #127
  static INICIO_ + #1010, #127
  static INICIO_ + #1011, #3967
  static INICIO_ + #1012, #3967
  static INICIO_ + #1013, #3967
  static INICIO_ + #1014, #3967
  static INICIO_ + #1015, #3967
  static INICIO_ + #1016, #3967
  static INICIO_ + #1017, #3967
  static INICIO_ + #1018, #3967
  static INICIO_ + #1019, #3967
  static INICIO_ + #1020, #19
  static INICIO_ + #1021, #19
  static INICIO_ + #1022, #3967
  static INICIO_ + #1023, #127
  static INICIO_ + #1024, #127
  static INICIO_ + #1025, #127
  static INICIO_ + #1026, #127
  static INICIO_ + #1027, #127
  static INICIO_ + #1028, #127
  static INICIO_ + #1029, #127
  static INICIO_ + #1030, #127
  static INICIO_ + #1031, #3967
  static INICIO_ + #1032, #19
  static INICIO_ + #1033, #19
  static INICIO_ + #1034, #127
  static INICIO_ + #1035, #127
  static INICIO_ + #1036, #127
  static INICIO_ + #1037, #127
  static INICIO_ + #1038, #127
  static INICIO_ + #1039, #127

  ;Linha 26
  static INICIO_ + #1040, #127
  static INICIO_ + #1041, #127
  static INICIO_ + #1042, #127
  static INICIO_ + #1043, #127
  static INICIO_ + #1044, #127
  static INICIO_ + #1045, #127
  static INICIO_ + #1046, #127
  static INICIO_ + #1047, #127
  static INICIO_ + #1048, #127
  static INICIO_ + #1049, #127
  static INICIO_ + #1050, #127
  static INICIO_ + #1051, #127
  static INICIO_ + #1052, #127
  static INICIO_ + #1053, #3967
  static INICIO_ + #1054, #3967
  static INICIO_ + #1055, #3967
  static INICIO_ + #1056, #3967
  static INICIO_ + #1057, #127
  static INICIO_ + #1058, #3967
  static INICIO_ + #1059, #127
  static INICIO_ + #1060, #127
  static INICIO_ + #1061, #127
  static INICIO_ + #1062, #127
  static INICIO_ + #1063, #127
  static INICIO_ + #1064, #127
  static INICIO_ + #1065, #127
  static INICIO_ + #1066, #127
  static INICIO_ + #1067, #127
  static INICIO_ + #1068, #127
  static INICIO_ + #1069, #127
  static INICIO_ + #1070, #127
  static INICIO_ + #1071, #127
  static INICIO_ + #1072, #127
  static INICIO_ + #1073, #127
  static INICIO_ + #1074, #127
  static INICIO_ + #1075, #127
  static INICIO_ + #1076, #127
  static INICIO_ + #1077, #127
  static INICIO_ + #1078, #127
  static INICIO_ + #1079, #127

  ;Linha 27
  static INICIO_ + #1080, #127
  static INICIO_ + #1081, #127
  static INICIO_ + #1082, #127
  static INICIO_ + #1083, #127
  static INICIO_ + #1084, #127
  static INICIO_ + #1085, #127
  static INICIO_ + #1086, #40
  static INICIO_ + #1087, #65
  static INICIO_ + #1088, #112
  static INICIO_ + #1089, #101
  static INICIO_ + #1090, #114
  static INICIO_ + #1091, #116
  static INICIO_ + #1092, #101
  static INICIO_ + #1093, #127
  static INICIO_ + #1094, #2885
  static INICIO_ + #1095, #2899
  static INICIO_ + #1096, #2896
  static INICIO_ + #1097, #2881
  static INICIO_ + #1098, #2847
  static INICIO_ + #1099, #2895
  static INICIO_ + #1100, #127
  static INICIO_ + #1101, #112
  static INICIO_ + #1102, #97
  static INICIO_ + #1103, #114
  static INICIO_ + #1104, #97
  static INICIO_ + #1105, #127
  static INICIO_ + #1106, #105
  static INICIO_ + #1107, #110
  static INICIO_ + #1108, #105
  static INICIO_ + #1109, #99
  static INICIO_ + #1110, #105
  static INICIO_ + #1111, #97
  static INICIO_ + #1112, #114
  static INICIO_ + #1113, #41
  static INICIO_ + #1114, #127
  static INICIO_ + #1115, #127
  static INICIO_ + #1116, #127
  static INICIO_ + #1117, #127
  static INICIO_ + #1118, #127
  static INICIO_ + #1119, #127

  ;Linha 28
  static INICIO_ + #1120, #127
  static INICIO_ + #1121, #127
  static INICIO_ + #1122, #127
  static INICIO_ + #1123, #127
  static INICIO_ + #1124, #127
  static INICIO_ + #1125, #127
  static INICIO_ + #1126, #127
  static INICIO_ + #1127, #127
  static INICIO_ + #1128, #127
  static INICIO_ + #1129, #127
  static INICIO_ + #1130, #127
  static INICIO_ + #1131, #127
  static INICIO_ + #1132, #127
  static INICIO_ + #1133, #127
  static INICIO_ + #1134, #127
  static INICIO_ + #1135, #127
  static INICIO_ + #1136, #127
  static INICIO_ + #1137, #127
  static INICIO_ + #1138, #127
  static INICIO_ + #1139, #127
  static INICIO_ + #1140, #127
  static INICIO_ + #1141, #127
  static INICIO_ + #1142, #127
  static INICIO_ + #1143, #127
  static INICIO_ + #1144, #127
  static INICIO_ + #1145, #127
  static INICIO_ + #1146, #127
  static INICIO_ + #1147, #127
  static INICIO_ + #1148, #127
  static INICIO_ + #1149, #127
  static INICIO_ + #1150, #127
  static INICIO_ + #1151, #127
  static INICIO_ + #1152, #127
  static INICIO_ + #1153, #127
  static INICIO_ + #1154, #127
  static INICIO_ + #1155, #127
  static INICIO_ + #1156, #127
  static INICIO_ + #1157, #127
  static INICIO_ + #1158, #127
  static INICIO_ + #1159, #127

  ;Linha 29
  static INICIO_ + #1160, #127
  static INICIO_ + #1161, #127
  static INICIO_ + #1162, #127
  static INICIO_ + #1163, #127
  static INICIO_ + #1164, #127
  static INICIO_ + #1165, #127
  static INICIO_ + #1166, #127
  static INICIO_ + #1167, #127
  static INICIO_ + #1168, #127
  static INICIO_ + #1169, #127
  static INICIO_ + #1170, #127
  static INICIO_ + #1171, #127
  static INICIO_ + #1172, #127
  static INICIO_ + #1173, #127
  static INICIO_ + #1174, #127
  static INICIO_ + #1175, #127
  static INICIO_ + #1176, #127
  static INICIO_ + #1177, #127
  static INICIO_ + #1178, #127
  static INICIO_ + #1179, #127
  static INICIO_ + #1180, #127
  static INICIO_ + #1181, #127
  static INICIO_ + #1182, #127
  static INICIO_ + #1183, #127
  static INICIO_ + #1184, #127
  static INICIO_ + #1185, #127
  static INICIO_ + #1186, #127
  static INICIO_ + #1187, #127
  static INICIO_ + #1188, #127
  static INICIO_ + #1189, #127
  static INICIO_ + #1190, #127
  static INICIO_ + #1191, #127
  static INICIO_ + #1192, #127
  static INICIO_ + #1193, #127
  static INICIO_ + #1194, #127
  static INICIO_ + #1195, #127
  static INICIO_ + #1196, #127
  static INICIO_ + #1197, #127
  static INICIO_ + #1198, #127
  static INICIO_ + #1199, #127

printINICIO_Screen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #INICIO_
  loadn R1, #0
  loadn R2, #1200

  printINICIO_ScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printINICIO_ScreenLoop

  call AperteEspaco

  pop R3
  pop R2
  pop R1
  pop R0
  rts


  GAMEOVER : var #1200
  ;Linha 0
  static GAMEOVER + #0, #127
  static GAMEOVER + #1, #127
  static GAMEOVER + #2, #127
  static GAMEOVER + #3, #127
  static GAMEOVER + #4, #127
  static GAMEOVER + #5, #127
  static GAMEOVER + #6, #3967
  static GAMEOVER + #7, #127
  static GAMEOVER + #8, #127
  static GAMEOVER + #9, #127
  static GAMEOVER + #10, #127
  static GAMEOVER + #11, #127
  static GAMEOVER + #12, #127
  static GAMEOVER + #13, #127
  static GAMEOVER + #14, #127
  static GAMEOVER + #15, #127
  static GAMEOVER + #16, #127
  static GAMEOVER + #17, #127
  static GAMEOVER + #18, #127
  static GAMEOVER + #19, #3967
  static GAMEOVER + #20, #127
  static GAMEOVER + #21, #127
  static GAMEOVER + #22, #127
  static GAMEOVER + #23, #127
  static GAMEOVER + #24, #127
  static GAMEOVER + #25, #127
  static GAMEOVER + #26, #127
  static GAMEOVER + #27, #127
  static GAMEOVER + #28, #127
  static GAMEOVER + #29, #127
  static GAMEOVER + #30, #127
  static GAMEOVER + #31, #127
  static GAMEOVER + #32, #127
  static GAMEOVER + #33, #127
  static GAMEOVER + #34, #127
  static GAMEOVER + #35, #127
  static GAMEOVER + #36, #127
  static GAMEOVER + #37, #127
  static GAMEOVER + #38, #127
  static GAMEOVER + #39, #127

  ;Linha 1
  static GAMEOVER + #40, #127
  static GAMEOVER + #41, #127
  static GAMEOVER + #42, #127
  static GAMEOVER + #43, #127
  static GAMEOVER + #44, #127
  static GAMEOVER + #45, #127
  static GAMEOVER + #46, #3967
  static GAMEOVER + #47, #127
  static GAMEOVER + #48, #127
  static GAMEOVER + #49, #277
  static GAMEOVER + #50, #277
  static GAMEOVER + #51, #127
  static GAMEOVER + #52, #127
  static GAMEOVER + #53, #3967
  static GAMEOVER + #54, #127
  static GAMEOVER + #55, #127
  static GAMEOVER + #56, #127
  static GAMEOVER + #57, #127
  static GAMEOVER + #58, #127
  static GAMEOVER + #59, #3967
  static GAMEOVER + #60, #127
  static GAMEOVER + #61, #127
  static GAMEOVER + #62, #127
  static GAMEOVER + #63, #127
  static GAMEOVER + #64, #127
  static GAMEOVER + #65, #127
  static GAMEOVER + #66, #127
  static GAMEOVER + #67, #127
  static GAMEOVER + #68, #127
  static GAMEOVER + #69, #127
  static GAMEOVER + #70, #127
  static GAMEOVER + #71, #127
  static GAMEOVER + #72, #127
  static GAMEOVER + #73, #127
  static GAMEOVER + #74, #127
  static GAMEOVER + #75, #127
  static GAMEOVER + #76, #3967
  static GAMEOVER + #77, #127
  static GAMEOVER + #78, #127
  static GAMEOVER + #79, #127

  ;Linha 2
  static GAMEOVER + #80, #127
  static GAMEOVER + #81, #127
  static GAMEOVER + #82, #127
  static GAMEOVER + #83, #127
  static GAMEOVER + #84, #127
  static GAMEOVER + #85, #127
  static GAMEOVER + #86, #3967
  static GAMEOVER + #87, #127
  static GAMEOVER + #88, #127
  static GAMEOVER + #89, #127
  static GAMEOVER + #90, #277
  static GAMEOVER + #91, #127
  static GAMEOVER + #92, #127
  static GAMEOVER + #93, #277
  static GAMEOVER + #94, #277
  static GAMEOVER + #95, #277
  static GAMEOVER + #96, #277
  static GAMEOVER + #97, #3967
  static GAMEOVER + #98, #3967
  static GAMEOVER + #99, #3967
  static GAMEOVER + #100, #127
  static GAMEOVER + #101, #127
  static GAMEOVER + #102, #127
  static GAMEOVER + #103, #127
  static GAMEOVER + #104, #127
  static GAMEOVER + #105, #127
  static GAMEOVER + #106, #127
  static GAMEOVER + #107, #127
  static GAMEOVER + #108, #127
  static GAMEOVER + #109, #127
  static GAMEOVER + #110, #127
  static GAMEOVER + #111, #127
  static GAMEOVER + #112, #127
  static GAMEOVER + #113, #127
  static GAMEOVER + #114, #127
  static GAMEOVER + #115, #3967
  static GAMEOVER + #116, #3967
  static GAMEOVER + #117, #3967
  static GAMEOVER + #118, #127
  static GAMEOVER + #119, #127

  ;Linha 3
  static GAMEOVER + #120, #127
  static GAMEOVER + #121, #127
  static GAMEOVER + #122, #127
  static GAMEOVER + #122, #127
  static GAMEOVER + #124, #127
  static GAMEOVER + #125, #277
  static GAMEOVER + #126, #127
  static GAMEOVER + #127, #127
  static GAMEOVER + #128, #127
  static GAMEOVER + #129, #127
  static GAMEOVER + #130, #3967
  static GAMEOVER + #131, #277
  static GAMEOVER + #132, #277
  static GAMEOVER + #133, #3967
  static GAMEOVER + #134, #127
  static GAMEOVER + #135, #127
  static GAMEOVER + #136, #3967
  static GAMEOVER + #137, #277
  static GAMEOVER + #138, #277
  static GAMEOVER + #139, #277
  static GAMEOVER + #140, #277
  static GAMEOVER + #141, #127
  static GAMEOVER + #142, #127
  static GAMEOVER + #143, #127
  static GAMEOVER + #144, #127
  static GAMEOVER + #145, #127
  static GAMEOVER + #146, #127
  static GAMEOVER + #147, #127
  static GAMEOVER + #148, #127
  static GAMEOVER + #149, #127
  static GAMEOVER + #150, #127
  static GAMEOVER + #151, #127
  static GAMEOVER + #152, #127
  static GAMEOVER + #153, #127
  static GAMEOVER + #154, #127
  static GAMEOVER + #155, #3967
  static GAMEOVER + #156, #127
  static GAMEOVER + #157, #3967
  static GAMEOVER + #158, #3967
  static GAMEOVER + #159, #127

  ;Linha 4
  static GAMEOVER + #160, #127
  static GAMEOVER + #161, #127
  static GAMEOVER + #162, #127
  static GAMEOVER + #163, #127
  static GAMEOVER + #164, #127
  static GAMEOVER + #165, #3967
  static GAMEOVER + #166, #277
  static GAMEOVER + #167, #127
  static GAMEOVER + #168, #127
  static GAMEOVER + #169, #127
  static GAMEOVER + #170, #127
  static GAMEOVER + #171, #127
  static GAMEOVER + #172, #127
  static GAMEOVER + #173, #127
  static GAMEOVER + #174, #127
  static GAMEOVER + #175, #3967
  static GAMEOVER + #176, #3967
  static GAMEOVER + #177, #127
  static GAMEOVER + #178, #127
  static GAMEOVER + #179, #127
  static GAMEOVER + #180, #277
  static GAMEOVER + #181, #277
  static GAMEOVER + #182, #127
  static GAMEOVER + #183, #127
  static GAMEOVER + #184, #127
  static GAMEOVER + #185, #127
  static GAMEOVER + #186, #127
  static GAMEOVER + #187, #127
  static GAMEOVER + #188, #127
  static GAMEOVER + #189, #127
  static GAMEOVER + #190, #3967
  static GAMEOVER + #191, #127
  static GAMEOVER + #192, #3967
  static GAMEOVER + #193, #127
  static GAMEOVER + #194, #127
  static GAMEOVER + #195, #2837
  static GAMEOVER + #196, #3967
  static GAMEOVER + #197, #2837
  static GAMEOVER + #198, #127
  static GAMEOVER + #199, #127

  ;Linha 5
  static GAMEOVER + #200, #127
  static GAMEOVER + #201, #127
  static GAMEOVER + #202, #127
  static GAMEOVER + #203, #127
  static GAMEOVER + #204, #127
  static GAMEOVER + #205, #127
  static GAMEOVER + #206, #277
  static GAMEOVER + #207, #277
  static GAMEOVER + #208, #277
  static GAMEOVER + #209, #127
  static GAMEOVER + #210, #127
  static GAMEOVER + #211, #127
  static GAMEOVER + #212, #127
  static GAMEOVER + #213, #127
  static GAMEOVER + #214, #3967
  static GAMEOVER + #215, #127
  static GAMEOVER + #216, #127
  static GAMEOVER + #217, #127
  static GAMEOVER + #218, #127
  static GAMEOVER + #219, #127
  static GAMEOVER + #220, #127
  static GAMEOVER + #221, #277
  static GAMEOVER + #222, #127
  static GAMEOVER + #223, #127
  static GAMEOVER + #224, #127
  static GAMEOVER + #225, #127
  static GAMEOVER + #226, #127
  static GAMEOVER + #227, #127
  static GAMEOVER + #228, #127
  static GAMEOVER + #229, #127
  static GAMEOVER + #230, #3967
  static GAMEOVER + #231, #2837
  static GAMEOVER + #232, #2837
  static GAMEOVER + #233, #3967
  static GAMEOVER + #234, #3967
  static GAMEOVER + #235, #3967
  static GAMEOVER + #236, #2837
  static GAMEOVER + #237, #3967
  static GAMEOVER + #238, #3967
  static GAMEOVER + #239, #127

  ;Linha 6
  static GAMEOVER + #240, #127
  static GAMEOVER + #241, #127
  static GAMEOVER + #242, #127
  static GAMEOVER + #243, #127
  static GAMEOVER + #244, #127
  static GAMEOVER + #245, #127
  static GAMEOVER + #246, #127
  static GAMEOVER + #247, #127
  static GAMEOVER + #248, #277
  static GAMEOVER + #249, #277
  static GAMEOVER + #250, #127
  static GAMEOVER + #251, #127
  static GAMEOVER + #252, #127
  static GAMEOVER + #253, #3967
  static GAMEOVER + #254, #3967
  static GAMEOVER + #255, #127
  static GAMEOVER + #256, #127
  static GAMEOVER + #257, #127
  static GAMEOVER + #258, #127
  static GAMEOVER + #259, #127
  static GAMEOVER + #260, #127
  static GAMEOVER + #261, #277
  static GAMEOVER + #262, #277
  static GAMEOVER + #263, #127
  static GAMEOVER + #264, #127
  static GAMEOVER + #265, #127
  static GAMEOVER + #266, #127
  static GAMEOVER + #267, #127
  static GAMEOVER + #268, #127
  static GAMEOVER + #269, #127
  static GAMEOVER + #270, #3967
  static GAMEOVER + #271, #2837
  static GAMEOVER + #272, #2325
  static GAMEOVER + #273, #2837
  static GAMEOVER + #274, #2837
  static GAMEOVER + #275, #2837
  static GAMEOVER + #276, #3967
  static GAMEOVER + #277, #2837
  static GAMEOVER + #278, #3967
  static GAMEOVER + #279, #127

  ;Linha 7
  static GAMEOVER + #280, #127
  static GAMEOVER + #281, #127
  static GAMEOVER + #282, #127
  static GAMEOVER + #283, #127
  static GAMEOVER + #284, #127
  static GAMEOVER + #285, #127
  static GAMEOVER + #286, #127
  static GAMEOVER + #287, #127
  static GAMEOVER + #288, #127
  static GAMEOVER + #289, #127
  static GAMEOVER + #290, #277
  static GAMEOVER + #291, #3967
  static GAMEOVER + #292, #3967
  static GAMEOVER + #293, #3967
  static GAMEOVER + #294, #127
  static GAMEOVER + #295, #127
  static GAMEOVER + #296, #127
  static GAMEOVER + #297, #127
  static GAMEOVER + #298, #127
  static GAMEOVER + #299, #127
  static GAMEOVER + #300, #127
  static GAMEOVER + #301, #127
  static GAMEOVER + #302, #277
  static GAMEOVER + #303, #127
  static GAMEOVER + #304, #127
  static GAMEOVER + #305, #127
  static GAMEOVER + #306, #127
  static GAMEOVER + #307, #127
  static GAMEOVER + #308, #127
  static GAMEOVER + #309, #127
  static GAMEOVER + #310, #3967
  static GAMEOVER + #311, #2325
  static GAMEOVER + #312, #2837
  static GAMEOVER + #313, #2325
  static GAMEOVER + #314, #2325
  static GAMEOVER + #315, #2837
  static GAMEOVER + #316, #3967
  static GAMEOVER + #317, #127
  static GAMEOVER + #318, #127
  static GAMEOVER + #319, #127

  ;Linha 8
  static GAMEOVER + #320, #127
  static GAMEOVER + #321, #127
  static GAMEOVER + #322, #127
  static GAMEOVER + #323, #127
  static GAMEOVER + #324, #127
  static GAMEOVER + #325, #127
  static GAMEOVER + #326, #127
  static GAMEOVER + #327, #127
  static GAMEOVER + #328, #127
  static GAMEOVER + #329, #127
  static GAMEOVER + #330, #277
  static GAMEOVER + #331, #277
  static GAMEOVER + #332, #3967
  static GAMEOVER + #333, #3967
  static GAMEOVER + #334, #127
  static GAMEOVER + #335, #127
  static GAMEOVER + #336, #127
  static GAMEOVER + #337, #127
  static GAMEOVER + #338, #127
  static GAMEOVER + #339, #127
  static GAMEOVER + #340, #127
  static GAMEOVER + #341, #127
  static GAMEOVER + #342, #127
  static GAMEOVER + #343, #277
  static GAMEOVER + #344, #277
  static GAMEOVER + #345, #127
  static GAMEOVER + #346, #127
  static GAMEOVER + #347, #127
  static GAMEOVER + #348, #127
  static GAMEOVER + #349, #3967
  static GAMEOVER + #350, #2837
  static GAMEOVER + #351, #2837
  static GAMEOVER + #352, #2325
  static GAMEOVER + #353, #3093
  static GAMEOVER + #354, #2325
  static GAMEOVER + #355, #2837
  static GAMEOVER + #356, #3967
  static GAMEOVER + #357, #3967
  static GAMEOVER + #358, #3967
  static GAMEOVER + #359, #127

  ;Linha 9
  static GAMEOVER + #360, #127
  static GAMEOVER + #361, #127
  static GAMEOVER + #362, #127
  static GAMEOVER + #363, #127
  static GAMEOVER + #364, #127
  static GAMEOVER + #365, #3967
  static GAMEOVER + #366, #127
  static GAMEOVER + #367, #127
  static GAMEOVER + #368, #127
  static GAMEOVER + #369, #127
  static GAMEOVER + #370, #127
  static GAMEOVER + #371, #3967
  static GAMEOVER + #372, #277
  static GAMEOVER + #373, #277
  static GAMEOVER + #374, #277
  static GAMEOVER + #375, #127
  static GAMEOVER + #376, #127
  static GAMEOVER + #377, #127
  static GAMEOVER + #378, #127
  static GAMEOVER + #379, #127
  static GAMEOVER + #380, #127
  static GAMEOVER + #381, #127
  static GAMEOVER + #382, #127
  static GAMEOVER + #383, #127
  static GAMEOVER + #384, #127
  static GAMEOVER + #385, #277
  static GAMEOVER + #386, #277
  static GAMEOVER + #387, #127
  static GAMEOVER + #388, #127
  static GAMEOVER + #389, #127
  static GAMEOVER + #390, #3967
  static GAMEOVER + #391, #2837
  static GAMEOVER + #392, #2837
  static GAMEOVER + #393, #2325
  static GAMEOVER + #394, #2837
  static GAMEOVER + #395, #2325
  static GAMEOVER + #396, #2837
  static GAMEOVER + #397, #127
  static GAMEOVER + #398, #3967
  static GAMEOVER + #399, #3967

  ;Linha 10
  static GAMEOVER + #400, #127
  static GAMEOVER + #401, #127
  static GAMEOVER + #402, #127
  static GAMEOVER + #403, #127
  static GAMEOVER + #404, #127
  static GAMEOVER + #405, #3967
  static GAMEOVER + #406, #3967
  static GAMEOVER + #407, #127
  static GAMEOVER + #408, #127
  static GAMEOVER + #409, #127
  static GAMEOVER + #410, #127
  static GAMEOVER + #411, #3967
  static GAMEOVER + #412, #3967
  static GAMEOVER + #413, #127
  static GAMEOVER + #414, #127
  static GAMEOVER + #415, #277
  static GAMEOVER + #416, #277
  static GAMEOVER + #417, #277
  static GAMEOVER + #418, #127
  static GAMEOVER + #419, #127
  static GAMEOVER + #420, #127
  static GAMEOVER + #421, #127
  static GAMEOVER + #422, #127
  static GAMEOVER + #423, #127
  static GAMEOVER + #424, #277
  static GAMEOVER + #425, #277
  static GAMEOVER + #426, #277
  static GAMEOVER + #427, #277
  static GAMEOVER + #428, #127
  static GAMEOVER + #429, #127
  static GAMEOVER + #430, #127
  static GAMEOVER + #431, #3967
  static GAMEOVER + #432, #2837
  static GAMEOVER + #433, #2837
  static GAMEOVER + #434, #2325
  static GAMEOVER + #435, #2837
  static GAMEOVER + #436, #2837
  static GAMEOVER + #437, #127
  static GAMEOVER + #438, #127
  static GAMEOVER + #439, #127

  ;Linha 11
  static GAMEOVER + #440, #127
  static GAMEOVER + #441, #127
  static GAMEOVER + #442, #127
  static GAMEOVER + #443, #127
  static GAMEOVER + #444, #127
  static GAMEOVER + #445, #3967
  static GAMEOVER + #446, #3967
  static GAMEOVER + #447, #127
  static GAMEOVER + #448, #127
  static GAMEOVER + #449, #127
  static GAMEOVER + #450, #3967
  static GAMEOVER + #451, #3967
  static GAMEOVER + #452, #127
  static GAMEOVER + #453, #127
  static GAMEOVER + #454, #127
  static GAMEOVER + #455, #127
  static GAMEOVER + #456, #127
  static GAMEOVER + #457, #277
  static GAMEOVER + #458, #277
  static GAMEOVER + #459, #3967
  static GAMEOVER + #460, #127
  static GAMEOVER + #461, #127
  static GAMEOVER + #462, #277
  static GAMEOVER + #463, #277
  static GAMEOVER + #464, #277
  static GAMEOVER + #465, #277
  static GAMEOVER + #466, #277
  static GAMEOVER + #467, #277
  static GAMEOVER + #468, #277
  static GAMEOVER + #469, #277
  static GAMEOVER + #470, #277
  static GAMEOVER + #471, #127
  static GAMEOVER + #472, #127
  static GAMEOVER + #473, #2837
  static GAMEOVER + #474, #3967
  static GAMEOVER + #475, #127
  static GAMEOVER + #476, #127
  static GAMEOVER + #477, #127
  static GAMEOVER + #478, #127
  static GAMEOVER + #479, #127

  ;Linha 12
  static GAMEOVER + #480, #127
  static GAMEOVER + #481, #127
  static GAMEOVER + #482, #127
  static GAMEOVER + #483, #127
  static GAMEOVER + #484, #3967
  static GAMEOVER + #485, #3967
  static GAMEOVER + #486, #127
  static GAMEOVER + #487, #127
  static GAMEOVER + #488, #127
  static GAMEOVER + #489, #127
  static GAMEOVER + #490, #3967
  static GAMEOVER + #491, #3967
  static GAMEOVER + #492, #127
  static GAMEOVER + #493, #127
  static GAMEOVER + #494, #127
  static GAMEOVER + #495, #127
  static GAMEOVER + #496, #127
  static GAMEOVER + #497, #127
  static GAMEOVER + #498, #277
  static GAMEOVER + #499, #277
  static GAMEOVER + #500, #277
  static GAMEOVER + #501, #277
  static GAMEOVER + #502, #277
  static GAMEOVER + #503, #277
  static GAMEOVER + #504, #277
  static GAMEOVER + #505, #277
  static GAMEOVER + #506, #277
  static GAMEOVER + #507, #277
  static GAMEOVER + #508, #277
  static GAMEOVER + #509, #277
  static GAMEOVER + #510, #277
  static GAMEOVER + #511, #277
  static GAMEOVER + #512, #127
  static GAMEOVER + #513, #127
  static GAMEOVER + #514, #127
  static GAMEOVER + #515, #127
  static GAMEOVER + #516, #127
  static GAMEOVER + #517, #127
  static GAMEOVER + #518, #127
  static GAMEOVER + #519, #127

  ;Linha 13
  static GAMEOVER + #520, #127
  static GAMEOVER + #521, #127
  static GAMEOVER + #522, #127
  static GAMEOVER + #523, #127
  static GAMEOVER + #524, #3967
  static GAMEOVER + #525, #3967
  static GAMEOVER + #526, #127
  static GAMEOVER + #527, #127
  static GAMEOVER + #528, #127
  static GAMEOVER + #529, #127
  static GAMEOVER + #530, #3967
  static GAMEOVER + #531, #127
  static GAMEOVER + #532, #127
  static GAMEOVER + #533, #127
  static GAMEOVER + #534, #127
  static GAMEOVER + #535, #127
  static GAMEOVER + #536, #277
  static GAMEOVER + #537, #277
  static GAMEOVER + #538, #277
  static GAMEOVER + #539, #277
  static GAMEOVER + #540, #277
  static GAMEOVER + #541, #277
  static GAMEOVER + #542, #277
  static GAMEOVER + #543, #277
  static GAMEOVER + #544, #277
  static GAMEOVER + #545, #277
  static GAMEOVER + #546, #277
  static GAMEOVER + #547, #277
  static GAMEOVER + #548, #277
  static GAMEOVER + #549, #277
  static GAMEOVER + #550, #277
  static GAMEOVER + #551, #277
  static GAMEOVER + #552, #277
  static GAMEOVER + #553, #127
  static GAMEOVER + #554, #127
  static GAMEOVER + #555, #127
  static GAMEOVER + #556, #127
  static GAMEOVER + #557, #127
  static GAMEOVER + #558, #127
  static GAMEOVER + #559, #127

  ;Linha 14
  static GAMEOVER + #560, #127
  static GAMEOVER + #561, #127
  static GAMEOVER + #562, #127
  static GAMEOVER + #563, #127
  static GAMEOVER + #564, #3967
  static GAMEOVER + #565, #3967
  static GAMEOVER + #566, #127
  static GAMEOVER + #567, #127
  static GAMEOVER + #568, #127
  static GAMEOVER + #569, #127
  static GAMEOVER + #570, #3967
  static GAMEOVER + #571, #127
  static GAMEOVER + #572, #127
  static GAMEOVER + #573, #127
  static GAMEOVER + #574, #277
  static GAMEOVER + #575, #277
  static GAMEOVER + #576, #277
  static GAMEOVER + #577, #277
  static GAMEOVER + #578, #277
  static GAMEOVER + #579, #277
  static GAMEOVER + #580, #277
  static GAMEOVER + #581, #277
  static GAMEOVER + #582, #277
  static GAMEOVER + #583, #277
  static GAMEOVER + #584, #277
  static GAMEOVER + #585, #277
  static GAMEOVER + #586, #277
  static GAMEOVER + #587, #277
  static GAMEOVER + #588, #277
  static GAMEOVER + #589, #277
  static GAMEOVER + #590, #277
  static GAMEOVER + #591, #277
  static GAMEOVER + #592, #277
  static GAMEOVER + #593, #127
  static GAMEOVER + #594, #127
  static GAMEOVER + #595, #127
  static GAMEOVER + #596, #127
  static GAMEOVER + #597, #127
  static GAMEOVER + #598, #127
  static GAMEOVER + #599, #127

  ;Linha 15
  static GAMEOVER + #600, #127
  static GAMEOVER + #601, #127
  static GAMEOVER + #602, #127
  static GAMEOVER + #603, #127
  static GAMEOVER + #604, #127
  static GAMEOVER + #605, #3967
  static GAMEOVER + #606, #127
  static GAMEOVER + #607, #127
  static GAMEOVER + #608, #3967
  static GAMEOVER + #609, #3967
  static GAMEOVER + #610, #3967
  static GAMEOVER + #611, #277
  static GAMEOVER + #612, #277
  static GAMEOVER + #613, #3967
  static GAMEOVER + #614, #277
  static GAMEOVER + #615, #277
  static GAMEOVER + #616, #277
  static GAMEOVER + #617, #277
  static GAMEOVER + #618, #277
  static GAMEOVER + #619, #277
  static GAMEOVER + #620, #277
  static GAMEOVER + #621, #277
  static GAMEOVER + #622, #277
  static GAMEOVER + #623, #277
  static GAMEOVER + #624, #277
  static GAMEOVER + #625, #277
  static GAMEOVER + #626, #3967
  static GAMEOVER + #627, #3967
  static GAMEOVER + #628, #12
  static GAMEOVER + #629, #277
  static GAMEOVER + #630, #277
  static GAMEOVER + #631, #277
  static GAMEOVER + #632, #277
  static GAMEOVER + #633, #127
  static GAMEOVER + #634, #127
  static GAMEOVER + #635, #127
  static GAMEOVER + #636, #127
  static GAMEOVER + #637, #127
  static GAMEOVER + #638, #277
  static GAMEOVER + #639, #277

  ;Linha 16
  static GAMEOVER + #640, #127
  static GAMEOVER + #641, #127
  static GAMEOVER + #642, #127
  static GAMEOVER + #643, #127
  static GAMEOVER + #644, #127
  static GAMEOVER + #645, #3967
  static GAMEOVER + #646, #127
  static GAMEOVER + #647, #3967
  static GAMEOVER + #648, #3967
  static GAMEOVER + #649, #127
  static GAMEOVER + #650, #277
  static GAMEOVER + #651, #277
  static GAMEOVER + #652, #277
  static GAMEOVER + #653, #277
  static GAMEOVER + #654, #277
  static GAMEOVER + #655, #277
  static GAMEOVER + #656, #277
  static GAMEOVER + #657, #277
  static GAMEOVER + #658, #277
  static GAMEOVER + #659, #277
  static GAMEOVER + #660, #277
  static GAMEOVER + #661, #277
  static GAMEOVER + #662, #277
  static GAMEOVER + #663, #277
  static GAMEOVER + #664, #277
  static GAMEOVER + #665, #3967
  static GAMEOVER + #666, #3967
  static GAMEOVER + #667, #3967
  static GAMEOVER + #668, #3967
  static GAMEOVER + #669, #277
  static GAMEOVER + #670, #277
  static GAMEOVER + #671, #277
  static GAMEOVER + #672, #277
  static GAMEOVER + #673, #127
  static GAMEOVER + #674, #127
  static GAMEOVER + #675, #127
  static GAMEOVER + #676, #277
  static GAMEOVER + #677, #277
  static GAMEOVER + #678, #277
  static GAMEOVER + #679, #277

  ;Linha 17
  static GAMEOVER + #680, #127
  static GAMEOVER + #681, #127
  static GAMEOVER + #682, #127
  static GAMEOVER + #683, #127
  static GAMEOVER + #684, #127
  static GAMEOVER + #685, #3967
  static GAMEOVER + #686, #127
  static GAMEOVER + #687, #3967
  static GAMEOVER + #688, #3967
  static GAMEOVER + #689, #127
  static GAMEOVER + #690, #277
  static GAMEOVER + #691, #3967
  static GAMEOVER + #692, #127
  static GAMEOVER + #693, #277
  static GAMEOVER + #694, #277
  static GAMEOVER + #695, #277
  static GAMEOVER + #696, #277
  static GAMEOVER + #697, #277
  static GAMEOVER + #698, #277
  static GAMEOVER + #699, #277
  static GAMEOVER + #700, #277
  static GAMEOVER + #701, #277
  static GAMEOVER + #702, #277
  static GAMEOVER + #703, #277
  static GAMEOVER + #704, #277
  static GAMEOVER + #705, #3967
  static GAMEOVER + #706, #3967
  static GAMEOVER + #707, #3967
  static GAMEOVER + #708, #277
  static GAMEOVER + #709, #277
  static GAMEOVER + #710, #277
  static GAMEOVER + #711, #277
  static GAMEOVER + #712, #277
  static GAMEOVER + #713, #127
  static GAMEOVER + #714, #127
  static GAMEOVER + #715, #277
  static GAMEOVER + #716, #277
  static GAMEOVER + #717, #277
  static GAMEOVER + #718, #277
  static GAMEOVER + #719, #277

  ;Linha 18
  static GAMEOVER + #720, #127
  static GAMEOVER + #721, #127
  static GAMEOVER + #722, #127
  static GAMEOVER + #723, #127
  static GAMEOVER + #724, #127
  static GAMEOVER + #725, #3967
  static GAMEOVER + #726, #127
  static GAMEOVER + #727, #3967
  static GAMEOVER + #728, #3967
  static GAMEOVER + #729, #3967
  static GAMEOVER + #730, #277
  static GAMEOVER + #731, #3967
  static GAMEOVER + #732, #127
  static GAMEOVER + #733, #277
  static GAMEOVER + #734, #277
  static GAMEOVER + #735, #277
  static GAMEOVER + #736, #277
  static GAMEOVER + #737, #277
  static GAMEOVER + #738, #277
  static GAMEOVER + #739, #277
  static GAMEOVER + #740, #277
  static GAMEOVER + #741, #277
  static GAMEOVER + #742, #277
  static GAMEOVER + #743, #277
  static GAMEOVER + #744, #277
  static GAMEOVER + #745, #277
  static GAMEOVER + #746, #277
  static GAMEOVER + #747, #277
  static GAMEOVER + #748, #277
  static GAMEOVER + #749, #277
  static GAMEOVER + #750, #277
  static GAMEOVER + #751, #277
  static GAMEOVER + #752, #277
  static GAMEOVER + #753, #127
  static GAMEOVER + #754, #127
  static GAMEOVER + #755, #277
  static GAMEOVER + #756, #277
  static GAMEOVER + #757, #277
  static GAMEOVER + #758, #277
  static GAMEOVER + #759, #277

  ;Linha 19
  static GAMEOVER + #760, #127
  static GAMEOVER + #761, #127
  static GAMEOVER + #762, #127
  static GAMEOVER + #763, #127
  static GAMEOVER + #764, #127
  static GAMEOVER + #765, #3967
  static GAMEOVER + #766, #127
  static GAMEOVER + #767, #3967
  static GAMEOVER + #768, #3967
  static GAMEOVER + #769, #3967
  static GAMEOVER + #770, #127
  static GAMEOVER + #771, #277
  static GAMEOVER + #772, #127
  static GAMEOVER + #773, #127
  static GAMEOVER + #774, #277
  static GAMEOVER + #775, #277
  static GAMEOVER + #776, #277
  static GAMEOVER + #777, #277
  static GAMEOVER + #778, #277
  static GAMEOVER + #779, #277
  static GAMEOVER + #780, #277
  static GAMEOVER + #781, #277
  static GAMEOVER + #782, #277
  static GAMEOVER + #783, #277
  static GAMEOVER + #784, #277
  static GAMEOVER + #785, #277
  static GAMEOVER + #786, #277
  static GAMEOVER + #787, #277
  static GAMEOVER + #788, #277
  static GAMEOVER + #789, #277
  static GAMEOVER + #790, #277
  static GAMEOVER + #791, #277
  static GAMEOVER + #792, #277
  static GAMEOVER + #793, #277
  static GAMEOVER + #794, #277
  static GAMEOVER + #795, #277
  static GAMEOVER + #796, #277
  static GAMEOVER + #797, #277
  static GAMEOVER + #798, #277
  static GAMEOVER + #799, #277

  ;Linha 20
  static GAMEOVER + #800, #127
  static GAMEOVER + #801, #127
  static GAMEOVER + #802, #127
  static GAMEOVER + #803, #127
  static GAMEOVER + #804, #127
  static GAMEOVER + #805, #3967
  static GAMEOVER + #806, #127
  static GAMEOVER + #807, #3967
  static GAMEOVER + #808, #3967
  static GAMEOVER + #809, #3967
  static GAMEOVER + #810, #3967
  static GAMEOVER + #811, #3967
  static GAMEOVER + #812, #127
  static GAMEOVER + #813, #127
  static GAMEOVER + #814, #127
  static GAMEOVER + #815, #127
  static GAMEOVER + #816, #127
  static GAMEOVER + #817, #277
  static GAMEOVER + #818, #277
  static GAMEOVER + #819, #277
  static GAMEOVER + #820, #277
  static GAMEOVER + #821, #277
  static GAMEOVER + #822, #277
  static GAMEOVER + #823, #277
  static GAMEOVER + #824, #277
  static GAMEOVER + #825, #277
  static GAMEOVER + #826, #277
  static GAMEOVER + #827, #277
  static GAMEOVER + #828, #277
  static GAMEOVER + #829, #277
  static GAMEOVER + #830, #277
  static GAMEOVER + #831, #277
  static GAMEOVER + #832, #277
  static GAMEOVER + #833, #277
  static GAMEOVER + #834, #277
  static GAMEOVER + #835, #277
  static GAMEOVER + #836, #277
  static GAMEOVER + #837, #277
  static GAMEOVER + #838, #277
  static GAMEOVER + #839, #277

  ;Linha 21
  static GAMEOVER + #840, #127
  static GAMEOVER + #841, #127
  static GAMEOVER + #842, #127
  static GAMEOVER + #843, #127
  static GAMEOVER + #844, #127
  static GAMEOVER + #845, #3967
  static GAMEOVER + #846, #3967
  static GAMEOVER + #847, #127
  static GAMEOVER + #848, #127
  static GAMEOVER + #849, #127
  static GAMEOVER + #850, #127
  static GAMEOVER + #851, #3967
  static GAMEOVER + #852, #127
  static GAMEOVER + #853, #127
  static GAMEOVER + #854, #127
  static GAMEOVER + #855, #127
  static GAMEOVER + #856, #127
  static GAMEOVER + #857, #127
  static GAMEOVER + #858, #127
  static GAMEOVER + #859, #277
  static GAMEOVER + #860, #277
  static GAMEOVER + #861, #277
  static GAMEOVER + #862, #277
  static GAMEOVER + #863, #277
  static GAMEOVER + #864, #277
  static GAMEOVER + #865, #277
  static GAMEOVER + #866, #277
  static GAMEOVER + #867, #277
  static GAMEOVER + #868, #277
  static GAMEOVER + #869, #127
  static GAMEOVER + #870, #127
  static GAMEOVER + #871, #127
  static GAMEOVER + #872, #277
  static GAMEOVER + #873, #277
  static GAMEOVER + #874, #277
  static GAMEOVER + #875, #277
  static GAMEOVER + #876, #277
  static GAMEOVER + #877, #277
  static GAMEOVER + #878, #277
  static GAMEOVER + #879, #277

  ;Linha 22
  static GAMEOVER + #880, #127
  static GAMEOVER + #881, #127
  static GAMEOVER + #882, #127
  static GAMEOVER + #883, #127
  static GAMEOVER + #884, #127
  static GAMEOVER + #885, #127
  static GAMEOVER + #886, #127
  static GAMEOVER + #887, #3967
  static GAMEOVER + #888, #127
  static GAMEOVER + #889, #127
  static GAMEOVER + #890, #127
  static GAMEOVER + #891, #127
  static GAMEOVER + #892, #127
  static GAMEOVER + #893, #127
  static GAMEOVER + #894, #127
  static GAMEOVER + #895, #127
  static GAMEOVER + #896, #127
  static GAMEOVER + #897, #127
  static GAMEOVER + #898, #127
  static GAMEOVER + #899, #127
  static GAMEOVER + #900, #127
  static GAMEOVER + #901, #277
  static GAMEOVER + #902, #277
  static GAMEOVER + #903, #277
  static GAMEOVER + #904, #277
  static GAMEOVER + #905, #277
  static GAMEOVER + #906, #127
  static GAMEOVER + #907, #127
  static GAMEOVER + #908, #127
  static GAMEOVER + #909, #127
  static GAMEOVER + #910, #277
  static GAMEOVER + #911, #277
  static GAMEOVER + #912, #277
  static GAMEOVER + #913, #277
  static GAMEOVER + #914, #127
  static GAMEOVER + #915, #277
  static GAMEOVER + #916, #277
  static GAMEOVER + #917, #277
  static GAMEOVER + #918, #277
  static GAMEOVER + #919, #277

  ;Linha 23
  static GAMEOVER + #920, #127
  static GAMEOVER + #921, #127
  static GAMEOVER + #922, #70
  static GAMEOVER + #923, #73
  static GAMEOVER + #924, #77
  static GAMEOVER + #925, #127
  static GAMEOVER + #926, #68
  static GAMEOVER + #927, #69
  static GAMEOVER + #928, #127
  static GAMEOVER + #929, #74
  static GAMEOVER + #930, #79
  static GAMEOVER + #931, #71
  static GAMEOVER + #932, #79
  static GAMEOVER + #933, #44
  static GAMEOVER + #934, #127
  static GAMEOVER + #935, #127
  static GAMEOVER + #936, #127
  static GAMEOVER + #937, #127
  static GAMEOVER + #938, #127
  static GAMEOVER + #939, #127
  static GAMEOVER + #940, #127
  static GAMEOVER + #941, #127
  static GAMEOVER + #942, #127
  static GAMEOVER + #943, #127
  static GAMEOVER + #944, #127
  static GAMEOVER + #945, #127
  static GAMEOVER + #946, #127
  static GAMEOVER + #947, #127
  static GAMEOVER + #948, #127
  static GAMEOVER + #949, #277
  static GAMEOVER + #950, #277
  static GAMEOVER + #951, #127
  static GAMEOVER + #952, #127
  static GAMEOVER + #953, #127
  static GAMEOVER + #954, #127
  static GAMEOVER + #955, #127
  static GAMEOVER + #956, #277
  static GAMEOVER + #957, #277
  static GAMEOVER + #958, #277
  static GAMEOVER + #959, #277

  ;Linha 24
  static GAMEOVER + #960, #127
  static GAMEOVER + #961, #127
  static GAMEOVER + #962, #127
  static GAMEOVER + #963, #127
  static GAMEOVER + #964, #127
  static GAMEOVER + #965, #127
  static GAMEOVER + #966, #127
  static GAMEOVER + #967, #127
  static GAMEOVER + #968, #127
  static GAMEOVER + #969, #127
  static GAMEOVER + #970, #127
  static GAMEOVER + #971, #30
  static GAMEOVER + #972, #127
  static GAMEOVER + #973, #127
  static GAMEOVER + #974, #127
  static GAMEOVER + #975, #127
  static GAMEOVER + #976, #127
  static GAMEOVER + #977, #127
  static GAMEOVER + #978, #127
  static GAMEOVER + #979, #127
  static GAMEOVER + #980, #127
  static GAMEOVER + #981, #127
  static GAMEOVER + #982, #127
  static GAMEOVER + #983, #127
  static GAMEOVER + #984, #127
  static GAMEOVER + #985, #127
  static GAMEOVER + #986, #127
  static GAMEOVER + #987, #127
  static GAMEOVER + #988, #277
  static GAMEOVER + #989, #277
  static GAMEOVER + #990, #127
  static GAMEOVER + #991, #127
  static GAMEOVER + #992, #127
  static GAMEOVER + #993, #127
  static GAMEOVER + #994, #277
  static GAMEOVER + #995, #277
  static GAMEOVER + #996, #277
  static GAMEOVER + #997, #277
  static GAMEOVER + #998, #277
  static GAMEOVER + #999, #277

  ;Linha 25
  static GAMEOVER + #1000, #127
  static GAMEOVER + #1001, #127
  static GAMEOVER + #1002, #127
  static GAMEOVER + #1003, #86
  static GAMEOVER + #1004, #69
  static GAMEOVER + #1005, #82
  static GAMEOVER + #1006, #77
  static GAMEOVER + #1007, #69
  static GAMEOVER + #1008, #127
  static GAMEOVER + #1009, #73
  static GAMEOVER + #1010, #78
  static GAMEOVER + #1011, #85
  static GAMEOVER + #1012, #84
  static GAMEOVER + #1013, #73
  static GAMEOVER + #1014, #76
  static GAMEOVER + #1015, #33
  static GAMEOVER + #1016, #127
  static GAMEOVER + #1017, #127
  static GAMEOVER + #1018, #127
  static GAMEOVER + #1019, #127
  static GAMEOVER + #1020, #127
  static GAMEOVER + #1021, #127
  static GAMEOVER + #1022, #127
  static GAMEOVER + #1023, #127
  static GAMEOVER + #1024, #127
  static GAMEOVER + #1025, #127
  static GAMEOVER + #1026, #127
  static GAMEOVER + #1027, #127
  static GAMEOVER + #1028, #277
  static GAMEOVER + #1029, #127
  static GAMEOVER + #1030, #127
  static GAMEOVER + #1031, #127
  static GAMEOVER + #1032, #127
  static GAMEOVER + #1033, #277
  static GAMEOVER + #1034, #277
  static GAMEOVER + #1035, #277
  static GAMEOVER + #1036, #277
  static GAMEOVER + #1037, #127
  static GAMEOVER + #1038, #127
  static GAMEOVER + #1039, #127

  ;Linha 26
  static GAMEOVER + #1040, #127
  static GAMEOVER + #1041, #127
  static GAMEOVER + #1042, #127
  static GAMEOVER + #1043, #127
  static GAMEOVER + #1044, #127
  static GAMEOVER + #1045, #127
  static GAMEOVER + #1046, #127
  static GAMEOVER + #1047, #127
  static GAMEOVER + #1048, #127
  static GAMEOVER + #1049, #127
  static GAMEOVER + #1050, #127
  static GAMEOVER + #1051, #127
  static GAMEOVER + #1052, #127
  static GAMEOVER + #1053, #127
  static GAMEOVER + #1054, #127
  static GAMEOVER + #1055, #127
  static GAMEOVER + #1056, #127
  static GAMEOVER + #1057, #127
  static GAMEOVER + #1058, #127
  static GAMEOVER + #1059, #127
  static GAMEOVER + #1060, #127
  static GAMEOVER + #1061, #127
  static GAMEOVER + #1062, #127
  static GAMEOVER + #1063, #127
  static GAMEOVER + #1064, #127
  static GAMEOVER + #1065, #127
  static GAMEOVER + #1066, #127
  static GAMEOVER + #1067, #127
  static GAMEOVER + #1068, #277
  static GAMEOVER + #1069, #127
  static GAMEOVER + #1070, #127
  static GAMEOVER + #1071, #127
  static GAMEOVER + #1072, #127
  static GAMEOVER + #1073, #277
  static GAMEOVER + #1074, #277
  static GAMEOVER + #1075, #277
  static GAMEOVER + #1076, #127
  static GAMEOVER + #1077, #127
  static GAMEOVER + #1078, #127
  static GAMEOVER + #1079, #127

  ;Linha 27
  static GAMEOVER + #1080, #127
  static GAMEOVER + #1081, #127
  static GAMEOVER + #1082, #127
  static GAMEOVER + #1083, #40
  static GAMEOVER + #1084, #65
  static GAMEOVER + #1085, #112
  static GAMEOVER + #1086, #101
  static GAMEOVER + #1087, #114
  static GAMEOVER + #1088, #116
  static GAMEOVER + #1089, #101
  static GAMEOVER + #1090, #127
  static GAMEOVER + #1091, #2885
  static GAMEOVER + #1092, #2899
  static GAMEOVER + #1093, #2896
  static GAMEOVER + #1094, #2881
  static GAMEOVER + #1095, #2847
  static GAMEOVER + #1096, #2895
  static GAMEOVER + #1097, #127
  static GAMEOVER + #1098, #112
  static GAMEOVER + #1099, #97
  static GAMEOVER + #1100, #114
  static GAMEOVER + #1101, #97
  static GAMEOVER + #1102, #127
  static GAMEOVER + #1103, #127
  static GAMEOVER + #1104, #127
  static GAMEOVER + #1105, #127
  static GAMEOVER + #1106, #127
  static GAMEOVER + #1107, #277
  static GAMEOVER + #1108, #277
  static GAMEOVER + #1109, #127
  static GAMEOVER + #1110, #127
  static GAMEOVER + #1111, #127
  static GAMEOVER + #1112, #127
  static GAMEOVER + #1113, #277
  static GAMEOVER + #1114, #277
  static GAMEOVER + #1115, #127
  static GAMEOVER + #1116, #127
  static GAMEOVER + #1117, #127
  static GAMEOVER + #1118, #127
  static GAMEOVER + #1119, #127

  ;Linha 28
  static GAMEOVER + #1120, #127
  static GAMEOVER + #1121, #127
  static GAMEOVER + #1122, #127
  static GAMEOVER + #1123, #127
  static GAMEOVER + #1124, #127
  static GAMEOVER + #1125, #106
  static GAMEOVER + #1126, #111
  static GAMEOVER + #1127, #103
  static GAMEOVER + #1128, #97
  static GAMEOVER + #1129, #114
  static GAMEOVER + #1130, #127
  static GAMEOVER + #1131, #110
  static GAMEOVER + #1132, #111
  static GAMEOVER + #1133, #118
  static GAMEOVER + #1134, #97
  static GAMEOVER + #1135, #109
  static GAMEOVER + #1136, #101
  static GAMEOVER + #1137, #110
  static GAMEOVER + #1138, #116
  static GAMEOVER + #1139, #101
  static GAMEOVER + #1140, #41
  static GAMEOVER + #1141, #127
  static GAMEOVER + #1142, #127
  static GAMEOVER + #1143, #127
  static GAMEOVER + #1144, #127
  static GAMEOVER + #1145, #127
  static GAMEOVER + #1146, #127
  static GAMEOVER + #1147, #277
  static GAMEOVER + #1148, #127
  static GAMEOVER + #1149, #127
  static GAMEOVER + #1150, #127
  static GAMEOVER + #1151, #127
  static GAMEOVER + #1152, #277
  static GAMEOVER + #1153, #277
  static GAMEOVER + #1154, #277
  static GAMEOVER + #1155, #127
  static GAMEOVER + #1156, #127
  static GAMEOVER + #1157, #127
  static GAMEOVER + #1158, #127
  static GAMEOVER + #1159, #127

  ;Linha 29
  static GAMEOVER + #1160, #127
  static GAMEOVER + #1161, #127
  static GAMEOVER + #1162, #127
  static GAMEOVER + #1163, #127
  static GAMEOVER + #1164, #127
  static GAMEOVER + #1165, #127
  static GAMEOVER + #1166, #127
  static GAMEOVER + #1167, #127
  static GAMEOVER + #1168, #127
  static GAMEOVER + #1169, #127
  static GAMEOVER + #1170, #127
  static GAMEOVER + #1171, #127
  static GAMEOVER + #1172, #127
  static GAMEOVER + #1173, #127
  static GAMEOVER + #1174, #127
  static GAMEOVER + #1175, #127
  static GAMEOVER + #1176, #127
  static GAMEOVER + #1177, #127
  static GAMEOVER + #1178, #127
  static GAMEOVER + #1179, #127
  static GAMEOVER + #1180, #127
  static GAMEOVER + #1181, #127
  static GAMEOVER + #1182, #127
  static GAMEOVER + #1183, #127
  static GAMEOVER + #1184, #127
  static GAMEOVER + #1185, #127
  static GAMEOVER + #1186, #127
  static GAMEOVER + #1187, #277
  static GAMEOVER + #1188, #127
  static GAMEOVER + #1189, #127
  static GAMEOVER + #1190, #127
  static GAMEOVER + #1191, #127
  static GAMEOVER + #1192, #277
  static GAMEOVER + #1193, #277
  static GAMEOVER + #1194, #277
  static GAMEOVER + #1195, #127
  static GAMEOVER + #1196, #127
  static GAMEOVER + #1197, #127
  static GAMEOVER + #1198, #127
  static GAMEOVER + #1199, #127

printGAMEOVERScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #GAMEOVER
  loadn R1, #0
  loadn R2, #1200

  printGAMEOVERScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printGAMEOVERScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts


Final_letrs : var #1200
  ;Linha 0
  static Final_letrs + #0, #3093
  static Final_letrs + #1, #3093
  static Final_letrs + #2, #3093
  static Final_letrs + #3, #3093
  static Final_letrs + #4, #3093
  static Final_letrs + #5, #21
  static Final_letrs + #6, #21
  static Final_letrs + #7, #21
  static Final_letrs + #8, #3093
  static Final_letrs + #9, #3093
  static Final_letrs + #10, #3093
  static Final_letrs + #11, #3093
  static Final_letrs + #12, #3093
  static Final_letrs + #13, #3093
  static Final_letrs + #14, #3093
  static Final_letrs + #15, #3093
  static Final_letrs + #16, #3093
  static Final_letrs + #17, #3093
  static Final_letrs + #18, #3093
  static Final_letrs + #19, #3093
  static Final_letrs + #20, #3093
  static Final_letrs + #21, #3093
  static Final_letrs + #22, #3093
  static Final_letrs + #23, #3093
  static Final_letrs + #24, #3093
  static Final_letrs + #25, #3093
  static Final_letrs + #26, #3093
  static Final_letrs + #27, #3093
  static Final_letrs + #28, #3093
  static Final_letrs + #29, #3093
  static Final_letrs + #30, #3093
  static Final_letrs + #31, #3093
  static Final_letrs + #32, #3093
  static Final_letrs + #33, #3093
  static Final_letrs + #34, #3093
  static Final_letrs + #35, #3093
  static Final_letrs + #36, #3093
  static Final_letrs + #37, #3093
  static Final_letrs + #38, #3093
  static Final_letrs + #39, #3093

  ;Linha 1
  static Final_letrs + #40, #3093
  static Final_letrs + #41, #3093
  static Final_letrs + #42, #3093
  static Final_letrs + #43, #3093
  static Final_letrs + #44, #3093
  static Final_letrs + #45, #3093
  static Final_letrs + #46, #21
  static Final_letrs + #47, #21
  static Final_letrs + #48, #21
  static Final_letrs + #49, #3093
  static Final_letrs + #50, #3093
  static Final_letrs + #51, #3093
  static Final_letrs + #52, #3093
  static Final_letrs + #53, #3093
  static Final_letrs + #54, #3093
  static Final_letrs + #55, #3093
  static Final_letrs + #56, #3093
  static Final_letrs + #57, #3093
  static Final_letrs + #58, #3093
  static Final_letrs + #59, #3093
  static Final_letrs + #60, #3093
  static Final_letrs + #61, #3093
  static Final_letrs + #62, #3093
  static Final_letrs + #63, #3093
  static Final_letrs + #64, #3093
  static Final_letrs + #65, #3093
  static Final_letrs + #66, #3093
  static Final_letrs + #67, #3093
  static Final_letrs + #68, #3093
  static Final_letrs + #69, #3093
  static Final_letrs + #70, #3093
  static Final_letrs + #71, #3093
  static Final_letrs + #72, #3093
  static Final_letrs + #73, #3093
  static Final_letrs + #74, #21
  static Final_letrs + #75, #21
  static Final_letrs + #76, #21
  static Final_letrs + #77, #21
  static Final_letrs + #78, #21
  static Final_letrs + #79, #21

  ;Linha 2
  static Final_letrs + #80, #3093
  static Final_letrs + #81, #3093
  static Final_letrs + #82, #3093
  static Final_letrs + #83, #3093
  static Final_letrs + #84, #3093
  static Final_letrs + #85, #3093
  static Final_letrs + #86, #3093
  static Final_letrs + #87, #3093
  static Final_letrs + #88, #3093
  static Final_letrs + #89, #3093
  static Final_letrs + #90, #3093
  static Final_letrs + #91, #3093
  static Final_letrs + #92, #3093
  static Final_letrs + #93, #3093
  static Final_letrs + #94, #3093
  static Final_letrs + #95, #3093
  static Final_letrs + #96, #3093
  static Final_letrs + #97, #3093
  static Final_letrs + #98, #3093
  static Final_letrs + #99, #3093
  static Final_letrs + #100, #3093
  static Final_letrs + #101, #3093
  static Final_letrs + #102, #3093
  static Final_letrs + #103, #3093
  static Final_letrs + #104, #3093
  static Final_letrs + #105, #3093
  static Final_letrs + #106, #3093
  static Final_letrs + #107, #3093
  static Final_letrs + #108, #3093
  static Final_letrs + #109, #3093
  static Final_letrs + #110, #3093
  static Final_letrs + #111, #3093
  static Final_letrs + #112, #21
  static Final_letrs + #113, #21
  static Final_letrs + #114, #21
  static Final_letrs + #115, #21
  static Final_letrs + #116, #21
  static Final_letrs + #117, #21
  static Final_letrs + #118, #21
  static Final_letrs + #119, #21

  ;Linha 3
  static Final_letrs + #120, #3093
  static Final_letrs + #121, #3093
  static Final_letrs + #122, #3093
  static Final_letrs + #123, #3093
  static Final_letrs + #124, #3093
  static Final_letrs + #125, #3093
  static Final_letrs + #126, #3093
  static Final_letrs + #127, #3093
  static Final_letrs + #128, #3093
  static Final_letrs + #129, #3093
  static Final_letrs + #130, #3093
  static Final_letrs + #131, #3093
  static Final_letrs + #132, #3093
  static Final_letrs + #133, #3093
  static Final_letrs + #134, #3093
  static Final_letrs + #135, #3093
  static Final_letrs + #136, #3093
  static Final_letrs + #137, #3093
  static Final_letrs + #138, #3093
  static Final_letrs + #139, #3093
  static Final_letrs + #140, #3093
  static Final_letrs + #141, #3093
  static Final_letrs + #142, #3093
  static Final_letrs + #143, #3093
  static Final_letrs + #144, #3093
  static Final_letrs + #145, #3093
  static Final_letrs + #146, #3093
  static Final_letrs + #147, #3093
  static Final_letrs + #148, #3093
  static Final_letrs + #149, #3093
  static Final_letrs + #150, #3093
  static Final_letrs + #151, #3093
  static Final_letrs + #152, #3093
  static Final_letrs + #153, #3093
  static Final_letrs + #154, #3093
  static Final_letrs + #155, #3093
  static Final_letrs + #156, #3093
  static Final_letrs + #157, #3093
  static Final_letrs + #158, #3093
  static Final_letrs + #159, #3093

  ;Linha 4
  static Final_letrs + #160, #3093
  static Final_letrs + #161, #3093
  static Final_letrs + #162, #3093
  static Final_letrs + #163, #3093
  static Final_letrs + #164, #3093
  static Final_letrs + #165, #3093
  static Final_letrs + #166, #3093
  static Final_letrs + #167, #3093
  static Final_letrs + #168, #3093
  static Final_letrs + #169, #3093
  static Final_letrs + #170, #3093
  static Final_letrs + #171, #3093
  static Final_letrs + #172, #3093
  static Final_letrs + #173, #3093
  static Final_letrs + #174, #3093
  static Final_letrs + #175, #3093
  static Final_letrs + #176, #3093
  static Final_letrs + #177, #3093
  static Final_letrs + #178, #3093
  static Final_letrs + #179, #3093
  static Final_letrs + #180, #3093
  static Final_letrs + #181, #3093
  static Final_letrs + #182, #3093
  static Final_letrs + #183, #3093
  static Final_letrs + #184, #3093
  static Final_letrs + #185, #3093
  static Final_letrs + #186, #3093
  static Final_letrs + #187, #3093
  static Final_letrs + #188, #3093
  static Final_letrs + #189, #3093
  static Final_letrs + #190, #3093
  static Final_letrs + #191, #3093
  static Final_letrs + #192, #3093
  static Final_letrs + #193, #3093
  static Final_letrs + #194, #3093
  static Final_letrs + #195, #3093
  static Final_letrs + #196, #3093
  static Final_letrs + #197, #3093
  static Final_letrs + #198, #3093
  static Final_letrs + #199, #3093

  ;Linha 5
  static Final_letrs + #200, #3093
  static Final_letrs + #201, #3093
  static Final_letrs + #202, #3093
  static Final_letrs + #203, #3093
  static Final_letrs + #204, #21
  static Final_letrs + #205, #21
  static Final_letrs + #206, #21
  static Final_letrs + #207, #21
  static Final_letrs + #208, #21
  static Final_letrs + #209, #21
  static Final_letrs + #210, #21
  static Final_letrs + #211, #21
  static Final_letrs + #212, #21
  static Final_letrs + #213, #21
  static Final_letrs + #214, #21
  static Final_letrs + #215, #21
  static Final_letrs + #216, #21
  static Final_letrs + #217, #21
  static Final_letrs + #218, #21
  static Final_letrs + #219, #21
  static Final_letrs + #220, #21
  static Final_letrs + #221, #3093
  static Final_letrs + #222, #3093
  static Final_letrs + #223, #3093
  static Final_letrs + #224, #3093
  static Final_letrs + #225, #3093
  static Final_letrs + #226, #3093
  static Final_letrs + #227, #3093
  static Final_letrs + #228, #3093
  static Final_letrs + #229, #3093
  static Final_letrs + #230, #21
  static Final_letrs + #231, #21
  static Final_letrs + #232, #3093
  static Final_letrs + #233, #3093
  static Final_letrs + #234, #3093
  static Final_letrs + #235, #3093
  static Final_letrs + #236, #3093
  static Final_letrs + #237, #3093
  static Final_letrs + #238, #3093
  static Final_letrs + #239, #3093

  ;Linha 6
  static Final_letrs + #240, #3093
  static Final_letrs + #241, #3093
  static Final_letrs + #242, #3093
  static Final_letrs + #243, #21
  static Final_letrs + #244, #21
  static Final_letrs + #245, #21
  static Final_letrs + #246, #21
  static Final_letrs + #247, #21
  static Final_letrs + #248, #21
  static Final_letrs + #249, #21
  static Final_letrs + #250, #21
  static Final_letrs + #251, #21
  static Final_letrs + #252, #21
  static Final_letrs + #253, #21
  static Final_letrs + #254, #21
  static Final_letrs + #255, #21
  static Final_letrs + #256, #21
  static Final_letrs + #257, #21
  static Final_letrs + #258, #21
  static Final_letrs + #259, #3093
  static Final_letrs + #260, #3093
  static Final_letrs + #261, #3093
  static Final_letrs + #262, #3093
  static Final_letrs + #263, #3093
  static Final_letrs + #264, #3093
  static Final_letrs + #265, #3093
  static Final_letrs + #266, #3093
  static Final_letrs + #267, #3093
  static Final_letrs + #268, #3093
  static Final_letrs + #269, #3093
  static Final_letrs + #270, #21
  static Final_letrs + #271, #21
  static Final_letrs + #272, #21
  static Final_letrs + #273, #3093
  static Final_letrs + #274, #3093
  static Final_letrs + #275, #3093
  static Final_letrs + #276, #3093
  static Final_letrs + #277, #3093
  static Final_letrs + #278, #3093
  static Final_letrs + #279, #3093

  ;Linha 7
  static Final_letrs + #280, #3093
  static Final_letrs + #281, #3093
  static Final_letrs + #282, #21
  static Final_letrs + #283, #21
  static Final_letrs + #284, #21
  static Final_letrs + #285, #21
  static Final_letrs + #286, #21
  static Final_letrs + #287, #21
  static Final_letrs + #288, #21
  static Final_letrs + #289, #21
  static Final_letrs + #290, #21
  static Final_letrs + #291, #21
  static Final_letrs + #292, #21
  static Final_letrs + #293, #21
  static Final_letrs + #294, #21
  static Final_letrs + #295, #21
  static Final_letrs + #296, #21
  static Final_letrs + #297, #3093
  static Final_letrs + #298, #3093
  static Final_letrs + #299, #3093
  static Final_letrs + #300, #3093
  static Final_letrs + #301, #3093
  static Final_letrs + #302, #3093
  static Final_letrs + #303, #3093
  static Final_letrs + #304, #3093
  static Final_letrs + #305, #3093
  static Final_letrs + #306, #3093
  static Final_letrs + #307, #3093
  static Final_letrs + #308, #3093
  static Final_letrs + #309, #3093
  static Final_letrs + #310, #3093
  static Final_letrs + #311, #3093
  static Final_letrs + #312, #3093
  static Final_letrs + #313, #3093
  static Final_letrs + #314, #3093
  static Final_letrs + #315, #3093
  static Final_letrs + #316, #3093
  static Final_letrs + #317, #3093
  static Final_letrs + #318, #3093
  static Final_letrs + #319, #3093

  ;Linha 8
  static Final_letrs + #320, #3093
  static Final_letrs + #321, #3093
  static Final_letrs + #322, #3093
  static Final_letrs + #323, #3093
  static Final_letrs + #324, #3093
  static Final_letrs + #325, #3093
  static Final_letrs + #326, #3093
  static Final_letrs + #327, #3093
  static Final_letrs + #328, #3093
  static Final_letrs + #329, #3093
  static Final_letrs + #330, #3093
  static Final_letrs + #331, #3093
  static Final_letrs + #332, #3093
  static Final_letrs + #333, #3093
  static Final_letrs + #334, #3093
  static Final_letrs + #335, #3093
  static Final_letrs + #336, #3093
  static Final_letrs + #337, #3093
  static Final_letrs + #338, #3093
  static Final_letrs + #339, #3093
  static Final_letrs + #340, #3093
  static Final_letrs + #341, #3093
  static Final_letrs + #342, #3093
  static Final_letrs + #343, #3093
  static Final_letrs + #344, #3093
  static Final_letrs + #345, #3093
  static Final_letrs + #346, #3093
  static Final_letrs + #347, #3093
  static Final_letrs + #348, #3093
  static Final_letrs + #349, #3093
  static Final_letrs + #350, #3093
  static Final_letrs + #351, #3093
  static Final_letrs + #352, #3093
  static Final_letrs + #353, #3093
  static Final_letrs + #354, #3093
  static Final_letrs + #355, #3093
  static Final_letrs + #356, #3093
  static Final_letrs + #357, #3093
  static Final_letrs + #358, #3093
  static Final_letrs + #359, #3093

  ;Linha 9
  static Final_letrs + #360, #3093
  static Final_letrs + #361, #3093
  static Final_letrs + #362, #3093
  static Final_letrs + #363, #3093
  static Final_letrs + #364, #3093
  static Final_letrs + #365, #3093
  static Final_letrs + #366, #3093
  static Final_letrs + #367, #3093
  static Final_letrs + #368, #3093
  static Final_letrs + #369, #3093
  static Final_letrs + #370, #3093
  static Final_letrs + #371, #3093
  static Final_letrs + #372, #3093
  static Final_letrs + #373, #3093
  static Final_letrs + #374, #3093
  static Final_letrs + #375, #3093
  static Final_letrs + #376, #3093
  static Final_letrs + #377, #3093
  static Final_letrs + #378, #3093
  static Final_letrs + #379, #3093
  static Final_letrs + #380, #3093
  static Final_letrs + #381, #3093
  static Final_letrs + #382, #3093
  static Final_letrs + #383, #3093
  static Final_letrs + #384, #3093
  static Final_letrs + #385, #3093
  static Final_letrs + #386, #3093
  static Final_letrs + #387, #3093
  static Final_letrs + #388, #3093
  static Final_letrs + #389, #3093
  static Final_letrs + #390, #3093
  static Final_letrs + #391, #3093
  static Final_letrs + #392, #3093
  static Final_letrs + #393, #3093
  static Final_letrs + #394, #3093
  static Final_letrs + #395, #3093
  static Final_letrs + #396, #3093
  static Final_letrs + #397, #3093
  static Final_letrs + #398, #3093
  static Final_letrs + #399, #3093

  ;Linha 10
  static Final_letrs + #400, #3093
  static Final_letrs + #401, #3093
  static Final_letrs + #402, #3093
  static Final_letrs + #403, #3093
  static Final_letrs + #404, #3093
  static Final_letrs + #405, #3093
  static Final_letrs + #406, #3093
  static Final_letrs + #407, #3093
  static Final_letrs + #408, #3093
  static Final_letrs + #409, #3093
  static Final_letrs + #410, #3093
  static Final_letrs + #411, #3093
  static Final_letrs + #412, #3093
  static Final_letrs + #413, #3093
  static Final_letrs + #414, #3093
  static Final_letrs + #415, #3967
  static Final_letrs + #416, #3967
  static Final_letrs + #417, #3967
  static Final_letrs + #418, #3967
  static Final_letrs + #419, #542
  static Final_letrs + #420, #3967
  static Final_letrs + #421, #3967
  static Final_letrs + #422, #3967
  static Final_letrs + #423, #3967
  static Final_letrs + #424, #3967
  static Final_letrs + #425, #3093
  static Final_letrs + #426, #3093
  static Final_letrs + #427, #3093
  static Final_letrs + #428, #3093
  static Final_letrs + #429, #3093
  static Final_letrs + #430, #3093
  static Final_letrs + #431, #3093
  static Final_letrs + #432, #3093
  static Final_letrs + #433, #3093
  static Final_letrs + #434, #3093
  static Final_letrs + #435, #3093
  static Final_letrs + #436, #3093
  static Final_letrs + #437, #3093
  static Final_letrs + #438, #3093
  static Final_letrs + #439, #3093

  ;Linha 11
  static Final_letrs + #440, #3093
  static Final_letrs + #441, #3093
  static Final_letrs + #442, #3093
  static Final_letrs + #443, #3093
  static Final_letrs + #444, #3093
  static Final_letrs + #445, #3093
  static Final_letrs + #446, #3093
  static Final_letrs + #447, #3093
  static Final_letrs + #448, #3093
  static Final_letrs + #449, #3093
  static Final_letrs + #450, #3093
  static Final_letrs + #451, #3093
  static Final_letrs + #452, #3093
  static Final_letrs + #453, #3093
  static Final_letrs + #454, #3093
  static Final_letrs + #455, #3967
  static Final_letrs + #456, #2390
  static Final_letrs + #457, #329
  static Final_letrs + #458, #2900
  static Final_letrs + #459, #591
  static Final_letrs + #460, #3154
  static Final_letrs + #461, #1097
  static Final_letrs + #462, #1345
  static Final_letrs + #463, #33
  static Final_letrs + #464, #3967
  static Final_letrs + #465, #3093
  static Final_letrs + #466, #3093
  static Final_letrs + #467, #3093
  static Final_letrs + #468, #3093
  static Final_letrs + #469, #3093
  static Final_letrs + #470, #3093
  static Final_letrs + #471, #3093
  static Final_letrs + #472, #3093
  static Final_letrs + #473, #3093
  static Final_letrs + #474, #3093
  static Final_letrs + #475, #3093
  static Final_letrs + #476, #3093
  static Final_letrs + #477, #3093
  static Final_letrs + #478, #3093
  static Final_letrs + #479, #3093

  ;Linha 12
  static Final_letrs + #480, #3093
  static Final_letrs + #481, #3093
  static Final_letrs + #482, #3093
  static Final_letrs + #483, #3093
  static Final_letrs + #484, #3093
  static Final_letrs + #485, #3093
  static Final_letrs + #486, #3093
  static Final_letrs + #487, #3967
  static Final_letrs + #488, #3967
  static Final_letrs + #489, #3967
  static Final_letrs + #490, #3967
  static Final_letrs + #491, #3967
  static Final_letrs + #492, #3967
  static Final_letrs + #493, #3967
  static Final_letrs + #494, #3967
  static Final_letrs + #495, #3967
  static Final_letrs + #496, #3967
  static Final_letrs + #497, #3967
  static Final_letrs + #498, #3967
  static Final_letrs + #499, #3967
  static Final_letrs + #500, #3967
  static Final_letrs + #501, #3967
  static Final_letrs + #502, #3967
  static Final_letrs + #503, #3967
  static Final_letrs + #504, #3967
  static Final_letrs + #505, #3967
  static Final_letrs + #506, #3967
  static Final_letrs + #507, #3967
  static Final_letrs + #508, #3967
  static Final_letrs + #509, #3967
  static Final_letrs + #510, #3967
  static Final_letrs + #511, #3967
  static Final_letrs + #512, #3967
  static Final_letrs + #513, #3093
  static Final_letrs + #514, #3093
  static Final_letrs + #515, #3093
  static Final_letrs + #516, #3093
  static Final_letrs + #517, #3093
  static Final_letrs + #518, #3093
  static Final_letrs + #519, #3093

  ;Linha 13
  static Final_letrs + #520, #3093
  static Final_letrs + #521, #3093
  static Final_letrs + #522, #3093
  static Final_letrs + #523, #3093
  static Final_letrs + #524, #3093
  static Final_letrs + #525, #3093
  static Final_letrs + #526, #3093
  static Final_letrs + #527, #3967
  static Final_letrs + #528, #79
  static Final_letrs + #529, #3967
  static Final_letrs + #530, #102
  static Final_letrs + #531, #111
  static Final_letrs + #532, #114
  static Final_letrs + #533, #109
  static Final_letrs + #534, #105
  static Final_letrs + #535, #103
  static Final_letrs + #536, #117
  static Final_letrs + #537, #101
  static Final_letrs + #538, #105
  static Final_letrs + #539, #114
  static Final_letrs + #540, #111
  static Final_letrs + #541, #3967
  static Final_letrs + #542, #112
  static Final_letrs + #543, #114
  static Final_letrs + #544, #111
  static Final_letrs + #545, #115
  static Final_letrs + #546, #112
  static Final_letrs + #547, #101
  static Final_letrs + #548, #114
  static Final_letrs + #549, #111
  static Final_letrs + #550, #117
  static Final_letrs + #551, #33
  static Final_letrs + #552, #3967
  static Final_letrs + #553, #3093
  static Final_letrs + #554, #3093
  static Final_letrs + #555, #3093
  static Final_letrs + #556, #3093
  static Final_letrs + #557, #3093
  static Final_letrs + #558, #3093
  static Final_letrs + #559, #3093

  ;Linha 14
  static Final_letrs + #560, #3093
  static Final_letrs + #561, #3093
  static Final_letrs + #562, #3093
  static Final_letrs + #563, #3093
  static Final_letrs + #564, #3093
  static Final_letrs + #565, #3093
  static Final_letrs + #566, #3093
  static Final_letrs + #567, #3967
  static Final_letrs + #568, #3967
  static Final_letrs + #569, #3967
  static Final_letrs + #570, #3967
  static Final_letrs + #571, #3967
  static Final_letrs + #572, #3967
  static Final_letrs + #573, #3967
  static Final_letrs + #574, #3967
  static Final_letrs + #575, #3967
  static Final_letrs + #576, #3967
  static Final_letrs + #577, #3967
  static Final_letrs + #578, #3967
  static Final_letrs + #579, #3967
  static Final_letrs + #580, #3967
  static Final_letrs + #581, #3967
  static Final_letrs + #582, #3967
  static Final_letrs + #583, #3967
  static Final_letrs + #584, #3967
  static Final_letrs + #585, #3967
  static Final_letrs + #586, #3967
  static Final_letrs + #587, #3967
  static Final_letrs + #588, #3967
  static Final_letrs + #589, #3967
  static Final_letrs + #590, #3967
  static Final_letrs + #591, #3967
  static Final_letrs + #592, #3967
  static Final_letrs + #593, #3093
  static Final_letrs + #594, #3093
  static Final_letrs + #595, #3093
  static Final_letrs + #596, #3093
  static Final_letrs + #597, #3093
  static Final_letrs + #598, #3093
  static Final_letrs + #599, #3093

  ;Linha 15
  static Final_letrs + #600, #3093
  static Final_letrs + #601, #3093
  static Final_letrs + #602, #3093
  static Final_letrs + #603, #3093
  static Final_letrs + #604, #3093
  static Final_letrs + #605, #3093
  static Final_letrs + #606, #3093
  static Final_letrs + #607, #3093
  static Final_letrs + #608, #3093
  static Final_letrs + #609, #3093
  static Final_letrs + #610, #3093
  static Final_letrs + #611, #3093
  static Final_letrs + #612, #3093
  static Final_letrs + #613, #3093
  static Final_letrs + #614, #3093
  static Final_letrs + #615, #3093
  static Final_letrs + #616, #3093
  static Final_letrs + #617, #3093
  static Final_letrs + #618, #3093
  static Final_letrs + #619, #3093
  static Final_letrs + #620, #3093
  static Final_letrs + #621, #3093
  static Final_letrs + #622, #3093
  static Final_letrs + #623, #3093
  static Final_letrs + #624, #3093
  static Final_letrs + #625, #3093
  static Final_letrs + #626, #3093
  static Final_letrs + #627, #3093
  static Final_letrs + #628, #3093
  static Final_letrs + #629, #3093
  static Final_letrs + #630, #3093
  static Final_letrs + #631, #3093
  static Final_letrs + #632, #3093
  static Final_letrs + #633, #3093
  static Final_letrs + #634, #3093
  static Final_letrs + #635, #3093
  static Final_letrs + #636, #3093
  static Final_letrs + #637, #3093
  static Final_letrs + #638, #3093
  static Final_letrs + #639, #3093

  ;Linha 16
  static Final_letrs + #640, #3093
  static Final_letrs + #641, #3093
  static Final_letrs + #642, #3093
  static Final_letrs + #643, #3093
  static Final_letrs + #644, #3093
  static Final_letrs + #645, #3093
  static Final_letrs + #646, #3093
  static Final_letrs + #647, #3093
  static Final_letrs + #648, #3093
  static Final_letrs + #649, #3093
  static Final_letrs + #650, #3093
  static Final_letrs + #651, #3093
  static Final_letrs + #652, #3093
  static Final_letrs + #653, #3093
  static Final_letrs + #654, #3093
  static Final_letrs + #655, #3093
  static Final_letrs + #656, #3093
  static Final_letrs + #657, #3093
  static Final_letrs + #658, #3093
  static Final_letrs + #659, #3093
  static Final_letrs + #660, #3093
  static Final_letrs + #661, #3093
  static Final_letrs + #662, #3093
  static Final_letrs + #663, #3093
  static Final_letrs + #664, #3093
  static Final_letrs + #665, #3093
  static Final_letrs + #666, #3093
  static Final_letrs + #667, #3093
  static Final_letrs + #668, #3093
  static Final_letrs + #669, #3093
  static Final_letrs + #670, #3093
  static Final_letrs + #671, #3093
  static Final_letrs + #672, #3093
  static Final_letrs + #673, #3093
  static Final_letrs + #674, #3093
  static Final_letrs + #675, #3093
  static Final_letrs + #676, #3093
  static Final_letrs + #677, #3093
  static Final_letrs + #678, #3093
  static Final_letrs + #679, #3093

  ;Linha 17
  static Final_letrs + #680, #3093
  static Final_letrs + #681, #3093
  static Final_letrs + #682, #3093
  static Final_letrs + #683, #3093
  static Final_letrs + #684, #3093
  static Final_letrs + #685, #3093
  static Final_letrs + #686, #3093
  static Final_letrs + #687, #3093
  static Final_letrs + #688, #3093
  static Final_letrs + #689, #3093
  static Final_letrs + #690, #3093
  static Final_letrs + #691, #3093
  static Final_letrs + #692, #3093
  static Final_letrs + #693, #3093
  static Final_letrs + #694, #3093
  static Final_letrs + #695, #3093
  static Final_letrs + #696, #3093
  static Final_letrs + #697, #3093
  static Final_letrs + #698, #3093
  static Final_letrs + #699, #3093
  static Final_letrs + #700, #3093
  static Final_letrs + #701, #3093
  static Final_letrs + #702, #3093
  static Final_letrs + #703, #3093
  static Final_letrs + #704, #3093
  static Final_letrs + #705, #3093
  static Final_letrs + #706, #3093
  static Final_letrs + #707, #3093
  static Final_letrs + #708, #3093
  static Final_letrs + #709, #3093
  static Final_letrs + #710, #3093
  static Final_letrs + #711, #3093
  static Final_letrs + #712, #3093
  static Final_letrs + #713, #3093
  static Final_letrs + #714, #3093
  static Final_letrs + #715, #3093
  static Final_letrs + #716, #3093
  static Final_letrs + #717, #3093
  static Final_letrs + #718, #3093
  static Final_letrs + #719, #3093

  ;Linha 18
  static Final_letrs + #720, #3093
  static Final_letrs + #721, #3093
  static Final_letrs + #722, #3093
  static Final_letrs + #723, #3093
  static Final_letrs + #724, #3093
  static Final_letrs + #725, #3093
  static Final_letrs + #726, #3093
  static Final_letrs + #727, #3093
  static Final_letrs + #728, #3093
  static Final_letrs + #729, #3093
  static Final_letrs + #730, #3093
  static Final_letrs + #731, #3093
  static Final_letrs + #732, #3093
  static Final_letrs + #733, #3093
  static Final_letrs + #734, #3093
  static Final_letrs + #735, #3093
  static Final_letrs + #736, #3093
  static Final_letrs + #737, #3093
  static Final_letrs + #738, #3093
  static Final_letrs + #739, #3093
  static Final_letrs + #740, #3093
  static Final_letrs + #741, #3093
  static Final_letrs + #742, #3093
  static Final_letrs + #743, #3093
  static Final_letrs + #744, #3093
  static Final_letrs + #745, #3093
  static Final_letrs + #746, #3093
  static Final_letrs + #747, #3093
  static Final_letrs + #748, #3093
  static Final_letrs + #749, #3093
  static Final_letrs + #750, #3093
  static Final_letrs + #751, #3093
  static Final_letrs + #752, #3093
  static Final_letrs + #753, #3093
  static Final_letrs + #754, #3093
  static Final_letrs + #755, #3093
  static Final_letrs + #756, #3093
  static Final_letrs + #757, #3093
  static Final_letrs + #758, #3093
  static Final_letrs + #759, #3093

  ;Linha 19
  static Final_letrs + #760, #3093
  static Final_letrs + #761, #3093
  static Final_letrs + #762, #3093
  static Final_letrs + #763, #533
  static Final_letrs + #764, #3093
  static Final_letrs + #765, #3093
  static Final_letrs + #766, #3093
  static Final_letrs + #767, #3093
  static Final_letrs + #768, #3093
  static Final_letrs + #769, #3093
  static Final_letrs + #770, #3093
  static Final_letrs + #771, #3093
  static Final_letrs + #772, #3093
  static Final_letrs + #773, #3093
  static Final_letrs + #774, #3093
  static Final_letrs + #775, #3093
  static Final_letrs + #776, #3093
  static Final_letrs + #777, #3093
  static Final_letrs + #778, #277
  static Final_letrs + #779, #3967
  static Final_letrs + #780, #3967
  static Final_letrs + #781, #3967
  static Final_letrs + #782, #277
  static Final_letrs + #783, #3093
  static Final_letrs + #784, #3093
  static Final_letrs + #785, #3093
  static Final_letrs + #786, #3093
  static Final_letrs + #787, #3093
  static Final_letrs + #788, #3093
  static Final_letrs + #789, #3093
  static Final_letrs + #790, #3093
  static Final_letrs + #791, #3093
  static Final_letrs + #792, #3093
  static Final_letrs + #793, #3093
  static Final_letrs + #794, #3093
  static Final_letrs + #795, #3093
  static Final_letrs + #796, #3093
  static Final_letrs + #797, #3093
  static Final_letrs + #798, #3093
  static Final_letrs + #799, #3093

  ;Linha 20
  static Final_letrs + #800, #3093
  static Final_letrs + #801, #3093
  static Final_letrs + #802, #3093
  static Final_letrs + #803, #533
  static Final_letrs + #804, #3093
  static Final_letrs + #805, #3093
  static Final_letrs + #806, #3093
  static Final_letrs + #807, #3093
  static Final_letrs + #808, #3093
  static Final_letrs + #809, #3093
  static Final_letrs + #810, #3093
  static Final_letrs + #811, #3093
  static Final_letrs + #812, #533
  static Final_letrs + #813, #3093
  static Final_letrs + #814, #3093
  static Final_letrs + #815, #3093
  static Final_letrs + #816, #3093
  static Final_letrs + #817, #277
  static Final_letrs + #818, #277
  static Final_letrs + #819, #277
  static Final_letrs + #820, #3967
  static Final_letrs + #821, #3967
  static Final_letrs + #822, #277
  static Final_letrs + #823, #3093
  static Final_letrs + #824, #3093
  static Final_letrs + #825, #3093
  static Final_letrs + #826, #3093
  static Final_letrs + #827, #3093
  static Final_letrs + #828, #3093
  static Final_letrs + #829, #3093
  static Final_letrs + #830, #3093
  static Final_letrs + #831, #3093
  static Final_letrs + #832, #3093
  static Final_letrs + #833, #3093
  static Final_letrs + #834, #3093
  static Final_letrs + #835, #3093
  static Final_letrs + #836, #3093
  static Final_letrs + #837, #3093
  static Final_letrs + #838, #3093
  static Final_letrs + #839, #3093

  ;Linha 21
  static Final_letrs + #840, #3093
  static Final_letrs + #841, #3093
  static Final_letrs + #842, #533
  static Final_letrs + #843, #3093
  static Final_letrs + #844, #533
  static Final_letrs + #845, #3093
  static Final_letrs + #846, #3093
  static Final_letrs + #847, #533
  static Final_letrs + #848, #3093
  static Final_letrs + #849, #533
  static Final_letrs + #850, #3093
  static Final_letrs + #851, #3093
  static Final_letrs + #852, #533
  static Final_letrs + #853, #3093
  static Final_letrs + #854, #3093
  static Final_letrs + #855, #3093
  static Final_letrs + #856, #277
  static Final_letrs + #857, #277
  static Final_letrs + #858, #277
  static Final_letrs + #859, #277
  static Final_letrs + #860, #277
  static Final_letrs + #861, #277
  static Final_letrs + #862, #277
  static Final_letrs + #863, #277
  static Final_letrs + #864, #3093
  static Final_letrs + #865, #3093
  static Final_letrs + #866, #3093
  static Final_letrs + #867, #3093
  static Final_letrs + #868, #533
  static Final_letrs + #869, #3093
  static Final_letrs + #870, #3093
  static Final_letrs + #871, #3093
  static Final_letrs + #872, #533
  static Final_letrs + #873, #3093
  static Final_letrs + #874, #3093
  static Final_letrs + #875, #533
  static Final_letrs + #876, #3093
  static Final_letrs + #877, #3093
  static Final_letrs + #878, #3093
  static Final_letrs + #879, #3093

  ;Linha 22
  static Final_letrs + #880, #3093
  static Final_letrs + #881, #3093
  static Final_letrs + #882, #533
  static Final_letrs + #883, #3093
  static Final_letrs + #884, #533
  static Final_letrs + #885, #533
  static Final_letrs + #886, #3093
  static Final_letrs + #887, #533
  static Final_letrs + #888, #3093
  static Final_letrs + #889, #533
  static Final_letrs + #890, #3093
  static Final_letrs + #891, #3093
  static Final_letrs + #892, #533
  static Final_letrs + #893, #3093
  static Final_letrs + #894, #3093
  static Final_letrs + #895, #3093
  static Final_letrs + #896, #277
  static Final_letrs + #897, #277
  static Final_letrs + #898, #277
  static Final_letrs + #899, #277
  static Final_letrs + #900, #277
  static Final_letrs + #901, #277
  static Final_letrs + #902, #277
  static Final_letrs + #903, #277
  static Final_letrs + #904, #3093
  static Final_letrs + #905, #533
  static Final_letrs + #906, #3093
  static Final_letrs + #907, #3093
  static Final_letrs + #908, #533
  static Final_letrs + #909, #533
  static Final_letrs + #910, #3093
  static Final_letrs + #911, #3093
  static Final_letrs + #912, #533
  static Final_letrs + #913, #3093
  static Final_letrs + #914, #3093
  static Final_letrs + #915, #533
  static Final_letrs + #916, #3093
  static Final_letrs + #917, #3093
  static Final_letrs + #918, #3093
  static Final_letrs + #919, #3093

  ;Linha 23
  static Final_letrs + #920, #2581
  static Final_letrs + #921, #533
  static Final_letrs + #922, #2581
  static Final_letrs + #923, #2581
  static Final_letrs + #924, #533
  static Final_letrs + #925, #2581
  static Final_letrs + #926, #2581
  static Final_letrs + #927, #533
  static Final_letrs + #928, #2581
  static Final_letrs + #929, #533
  static Final_letrs + #930, #2581
  static Final_letrs + #931, #2581
  static Final_letrs + #932, #533
  static Final_letrs + #933, #2581
  static Final_letrs + #934, #533
  static Final_letrs + #935, #2581
  static Final_letrs + #936, #277
  static Final_letrs + #937, #277
  static Final_letrs + #938, #277
  static Final_letrs + #939, #277
  static Final_letrs + #940, #277
  static Final_letrs + #941, #277
  static Final_letrs + #942, #277
  static Final_letrs + #943, #277
  static Final_letrs + #944, #2581
  static Final_letrs + #945, #533
  static Final_letrs + #946, #2581
  static Final_letrs + #947, #533
  static Final_letrs + #948, #533
  static Final_letrs + #949, #533
  static Final_letrs + #950, #2581
  static Final_letrs + #951, #2581
  static Final_letrs + #952, #533
  static Final_letrs + #953, #2581
  static Final_letrs + #954, #2581
  static Final_letrs + #955, #533
  static Final_letrs + #956, #2581
  static Final_letrs + #957, #3967
  static Final_letrs + #958, #2069
  static Final_letrs + #959, #2069

  ;Linha 24
  static Final_letrs + #960, #2581
  static Final_letrs + #961, #2581
  static Final_letrs + #962, #2581
  static Final_letrs + #963, #2581
  static Final_letrs + #964, #533
  static Final_letrs + #965, #2581
  static Final_letrs + #966, #2581
  static Final_letrs + #967, #533
  static Final_letrs + #968, #2581
  static Final_letrs + #969, #533
  static Final_letrs + #970, #533
  static Final_letrs + #971, #533
  static Final_letrs + #972, #2581
  static Final_letrs + #973, #2581
  static Final_letrs + #974, #533
  static Final_letrs + #975, #277
  static Final_letrs + #976, #277
  static Final_letrs + #977, #277
  static Final_letrs + #978, #277
  static Final_letrs + #979, #277
  static Final_letrs + #980, #277
  static Final_letrs + #981, #277
  static Final_letrs + #982, #277
  static Final_letrs + #983, #277
  static Final_letrs + #984, #277
  static Final_letrs + #985, #533
  static Final_letrs + #986, #2581
  static Final_letrs + #987, #533
  static Final_letrs + #988, #2581
  static Final_letrs + #989, #533
  static Final_letrs + #990, #2581
  static Final_letrs + #991, #533
  static Final_letrs + #992, #533
  static Final_letrs + #993, #2581
  static Final_letrs + #994, #2581
  static Final_letrs + #995, #533
  static Final_letrs + #996, #2581
  static Final_letrs + #997, #3967
  static Final_letrs + #998, #2069
  static Final_letrs + #999, #2069

  ;Linha 25
  static Final_letrs + #1000, #2581
  static Final_letrs + #1001, #533
  static Final_letrs + #1002, #2581
  static Final_letrs + #1003, #2581
  static Final_letrs + #1004, #533
  static Final_letrs + #1005, #2581
  static Final_letrs + #1006, #533
  static Final_letrs + #1007, #2581
  static Final_letrs + #1008, #2581
  static Final_letrs + #1009, #533
  static Final_letrs + #1010, #533
  static Final_letrs + #1011, #2581
  static Final_letrs + #1012, #2581
  static Final_letrs + #1013, #2581
  static Final_letrs + #1014, #533
  static Final_letrs + #1015, #277
  static Final_letrs + #1016, #277
  static Final_letrs + #1017, #277
  static Final_letrs + #1018, #277
  static Final_letrs + #1019, #277
  static Final_letrs + #1020, #277
  static Final_letrs + #1021, #277
  static Final_letrs + #1022, #277
  static Final_letrs + #1023, #277
  static Final_letrs + #1024, #533
  static Final_letrs + #1025, #2581
  static Final_letrs + #1026, #2581
  static Final_letrs + #1027, #2581
  static Final_letrs + #1028, #533
  static Final_letrs + #1029, #2581
  static Final_letrs + #1030, #2581
  static Final_letrs + #1031, #2581
  static Final_letrs + #1032, #2581
  static Final_letrs + #1033, #2581
  static Final_letrs + #1034, #533
  static Final_letrs + #1035, #533
  static Final_letrs + #1036, #2581
  static Final_letrs + #1037, #3967
  static Final_letrs + #1038, #3967
  static Final_letrs + #1039, #3967

  ;Linha 26
  static Final_letrs + #1040, #2581
  static Final_letrs + #1041, #533
  static Final_letrs + #1042, #2581
  static Final_letrs + #1043, #2581
  static Final_letrs + #1044, #533
  static Final_letrs + #1045, #2581
  static Final_letrs + #1046, #533
  static Final_letrs + #1047, #2581
  static Final_letrs + #1048, #2581
  static Final_letrs + #1049, #533
  static Final_letrs + #1050, #533
  static Final_letrs + #1051, #2581
  static Final_letrs + #1052, #2581
  static Final_letrs + #1053, #533
  static Final_letrs + #1054, #533
  static Final_letrs + #1055, #277
  static Final_letrs + #1056, #277
  static Final_letrs + #1057, #277
  static Final_letrs + #1058, #277
  static Final_letrs + #1059, #277
  static Final_letrs + #1060, #277
  static Final_letrs + #1061, #277
  static Final_letrs + #1062, #277
  static Final_letrs + #1063, #277
  static Final_letrs + #1064, #277
  static Final_letrs + #1065, #2581
  static Final_letrs + #1066, #2581
  static Final_letrs + #1067, #2581
  static Final_letrs + #1068, #533
  static Final_letrs + #1069, #2581
  static Final_letrs + #1070, #2581
  static Final_letrs + #1071, #2581
  static Final_letrs + #1072, #2581
  static Final_letrs + #1073, #533
  static Final_letrs + #1074, #533
  static Final_letrs + #1075, #2581
  static Final_letrs + #1076, #3967
  static Final_letrs + #1077, #2069
  static Final_letrs + #1078, #2069
  static Final_letrs + #1079, #2069

  ;Linha 27
  static Final_letrs + #1080, #2581
  static Final_letrs + #1081, #533
  static Final_letrs + #1082, #2581
  static Final_letrs + #1083, #533
  static Final_letrs + #1084, #2581
  static Final_letrs + #1085, #2581
  static Final_letrs + #1086, #2581
  static Final_letrs + #1087, #2581
  static Final_letrs + #1088, #2581
  static Final_letrs + #1089, #533
  static Final_letrs + #1090, #2581
  static Final_letrs + #1091, #2581
  static Final_letrs + #1092, #2581
  static Final_letrs + #1093, #2581
  static Final_letrs + #1094, #277
  static Final_letrs + #1095, #277
  static Final_letrs + #1096, #277
  static Final_letrs + #1097, #277
  static Final_letrs + #1098, #277
  static Final_letrs + #1099, #277
  static Final_letrs + #1100, #277
  static Final_letrs + #1101, #277
  static Final_letrs + #1102, #277
  static Final_letrs + #1103, #277
  static Final_letrs + #1104, #277
  static Final_letrs + #1105, #533
  static Final_letrs + #1106, #2581
  static Final_letrs + #1107, #533
  static Final_letrs + #1108, #2581
  static Final_letrs + #1109, #2581
  static Final_letrs + #1110, #2581
  static Final_letrs + #1111, #2581
  static Final_letrs + #1112, #2581
  static Final_letrs + #1113, #533
  static Final_letrs + #1114, #2581
  static Final_letrs + #1115, #2581
  static Final_letrs + #1116, #3967
  static Final_letrs + #1117, #2069
  static Final_letrs + #1118, #2069
  static Final_letrs + #1119, #2069

  ;Linha 28
  static Final_letrs + #1120, #2581
  static Final_letrs + #1121, #533
  static Final_letrs + #1122, #2581
  static Final_letrs + #1123, #533
  static Final_letrs + #1124, #2581
  static Final_letrs + #1125, #2581
  static Final_letrs + #1126, #2581
  static Final_letrs + #1127, #2581
  static Final_letrs + #1128, #2581
  static Final_letrs + #1129, #533
  static Final_letrs + #1130, #2581
  static Final_letrs + #1131, #2581
  static Final_letrs + #1132, #2581
  static Final_letrs + #1133, #277
  static Final_letrs + #1134, #277
  static Final_letrs + #1135, #277
  static Final_letrs + #1136, #277
  static Final_letrs + #1137, #277
  static Final_letrs + #1138, #533
  static Final_letrs + #1139, #277
  static Final_letrs + #1140, #277
  static Final_letrs + #1141, #277
  static Final_letrs + #1142, #277
  static Final_letrs + #1143, #277
  static Final_letrs + #1144, #533
  static Final_letrs + #1145, #277
  static Final_letrs + #1146, #277
  static Final_letrs + #1147, #533
  static Final_letrs + #1148, #2581
  static Final_letrs + #1149, #2581
  static Final_letrs + #1150, #2581
  static Final_letrs + #1151, #2581
  static Final_letrs + #1152, #533
  static Final_letrs + #1153, #2581
  static Final_letrs + #1154, #2581
  static Final_letrs + #1155, #3967
  static Final_letrs + #1156, #3967
  static Final_letrs + #1157, #3967
  static Final_letrs + #1158, #3967
  static Final_letrs + #1159, #3967

  ;Linha 29
  static Final_letrs + #1160, #2581
  static Final_letrs + #1161, #533
  static Final_letrs + #1162, #2581
  static Final_letrs + #1163, #2581
  static Final_letrs + #1164, #2581
  static Final_letrs + #1165, #2581
  static Final_letrs + #1166, #2581
  static Final_letrs + #1167, #2581
  static Final_letrs + #1168, #533
  static Final_letrs + #1169, #2581
  static Final_letrs + #1170, #2581
  static Final_letrs + #1171, #2581
  static Final_letrs + #1172, #277
  static Final_letrs + #1173, #277
  static Final_letrs + #1174, #277
  static Final_letrs + #1175, #277
  static Final_letrs + #1176, #277
  static Final_letrs + #1177, #277
  static Final_letrs + #1178, #533
  static Final_letrs + #1179, #277
  static Final_letrs + #1180, #277
  static Final_letrs + #1181, #277
  static Final_letrs + #1182, #277
  static Final_letrs + #1183, #533
  static Final_letrs + #1184, #277
  static Final_letrs + #1185, #277
  static Final_letrs + #1186, #277
  static Final_letrs + #1187, #2581
  static Final_letrs + #1188, #2581
  static Final_letrs + #1189, #2581
  static Final_letrs + #1190, #2581
  static Final_letrs + #1191, #2581
  static Final_letrs + #1192, #2581
  static Final_letrs + #1193, #2581
  static Final_letrs + #1194, #3967
  static Final_letrs + #1195, #2069
  static Final_letrs + #1196, #2069
  static Final_letrs + #1197, #2069
  static Final_letrs + #1198, #2069
  static Final_letrs + #1199, #2069

printFinal_letrsScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #Final_letrs
  loadn R1, #0
  loadn R2, #1200

  printFinal_letrsScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printFinal_letrsScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts