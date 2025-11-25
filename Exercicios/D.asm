; Exercício D

.start:
	; Definição das variáveis
	MOV A, 4
	MOV B, 2
	MOV C, 2


	ADD A, B ; A + B
	MOV B, 0 ; Limpa B

	MUL C ; (Resultado de A + B) * C
	MOV C, 0 ; Limpa C


	MOV D, A ; Guarda o resultado no D
	MOV A, 0 ; Limpa A

	HLT ; encerra
