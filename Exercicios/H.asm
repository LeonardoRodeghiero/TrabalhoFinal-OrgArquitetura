; Exercício H

; OBSERVAÇÃO
; os valores dos vetores estão nos endereços de memória.
; Endereços do VetorA: 80(pos 0), 81(pos 1), 82(pos 2)
; Endereços do VetorB: 90(pos 0), 91(pos 1), 92(pos 2)
; Endereços do VetorC: 100(pos 0), 101(pos 1), 102(pos 2)

.start:
	; Definição dos elementos dos vetores nos endereços de    
	; memória
	MOV [80], 1
	MOV [81], 2
	MOV [82], 3

	MOV [90], 3
	MOV [91], 2
	MOV [92], 1

	MOV [100], 0
	MOV [101], 0
	MOV [102], 0

	MOV D, 0


.for_cond:
	CMP D, 3 ; compara D com 3
	JZ .fim ; se a flag Z virar TRUE, pula para o fim


	MOV A, 80 ; move o endereço pro reg A
	ADD A, D ; soma com o contador para ter a posição certa

	MOV B, 90 ; move o endereço pro reg B
	ADD B, D ; soma com o contador para ter a posição certa

	MOV C, 100 ; move o endereço pro reg C
	ADD C, D ; soma com o contador para ter a posição certa

	JMP .loop ; se a flag Z continuar FALSE, pula para o loop


.loop:
	; move para o reg A o valor que ta no endereco do reg A
	MOV A, [A] 


	; soma o valor que estava no endereco de A com o valor que 
	; está no endereço de B
	ADD A, [B]


	; Move o resultado da soma para o endereço de C
	MOV [C], A


	INC D ; faz D++
	JMP .for_cond ; pula para verificar a condição
	

.fim:
	MOV A, 0 ; Limpa A
	MOV B, 0 ; Limpa B
	MOV C, 0 ; Limpa C

	HLT ; encerra
