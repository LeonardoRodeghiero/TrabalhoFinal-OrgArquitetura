; Exercício G


.start:
	; Definição das variáveis
	MOV A, 0
	MOV B, 0
	MOV C, 0
	MOV D, 0

.while_cond:
	CMP D, 10 ; compara D com 10
	JZ .fim ; se a flag Z virar TRUE, pula para o fim
	JMP .if_cond ; se a flag Z for FALSE, pula para o if_cond

.loop:
	ADD C, A; faz C + A
	ADD C, B ; faz C + B

	INC D ; faz D++
	JMP .while_cond ; pula para verificar a condição
	


.if_cond:
	CMP D, 5 ; compara D com 5

	JZ .else ; se for igual a 5, pula pro else
	JA .else ; se for maior que 5, pula pro else

	; se nao for nenhum dos dois acima, logo é menor que 5, e 	; pula pro entao
	JMP .entao 
  	
 

.entao:
	INC A ; faz A++
	JMP .loop ; e pula para concluir o loop, apos o if else



.else:
	INC B ; faz B++
	JMP .loop ; e pula para concluir o loop, apos o if else


.fim:
	; Limpa todas as variáveis, exceto C(resultado) 
	; e D(condição)
	MOV A, 0
	MOV B, 0
	HLT ; encerra

	


