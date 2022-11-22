
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

  ;call fundo inicial
  ;Inicio_Jogo:       ; label para não mostrar tela inicial toda vez
  
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
    jeq Fim                       ;se igual, vai para a funcao Fim
    ;jeq Ganhou
    
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
    ;call fundo perde
    ;loadn r0, 'caracter'
    ;loadn r1, #poscição tela
    ;outchar r0, r1
    ;call delay
    
    ;Verificar_JogarDeNovo
    ;loadn r0, ' ' ;espaço
    ;inchar r1
    ;cmp r0,r1
    ;jeq main ou inicio
    ;jmp Verificar_JogarDeNovo

    halt
  
  ;Ganhou:
    ;call fundo ganhou
    ;call Verificar_JogarDeNovo
  
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
  static Fundo + #20, #65
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