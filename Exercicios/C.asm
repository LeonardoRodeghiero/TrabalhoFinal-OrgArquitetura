; Exercício C

;definições das variáveis
varA: DB 4
varB: DB 2
varC: DB 0

.start:
	MOV A, [varA] ; move o valor de varA para o reg. A
	ADD A, [varB] ; adiciona o valor de varB no reg. A
	MUL 2 ; multiplica por 2
	MOV [varC], A ; move o valor do reg. A para varC
	MOV A, 0 ; limpa o reg. A
	HLT ; encerra