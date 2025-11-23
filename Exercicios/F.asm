; Exercício F




.start:
	; Definição das variáveis
	MOV A, 4
	MOV B, 2
	MOV C, 0
	MOV D, 0

.for_cond:
	CMP D, 5 ; compara D com 5
	JZ .fim ; se a flag Z virar TRUE, pula para o fim
	INC D ; faz D++
	JMP .loop ; se a flag Z continuar FALSE, pula para o loop

.loop:
	; reinicia os valores A e B
	MOV A, 4
	MOV B, 2

	
	ADD A, B ; faz A + B
	ADD C, A ; guarda o resultado da soma em C

	JMP .for_cond ; pula para verificar a condição
	

.fim:
	; Limpa todas as variáveis, exceto C(resultado) 
	; e D(condição)
	MOV A, 0
	MOV B, 0
	HLT ; encerra

	


