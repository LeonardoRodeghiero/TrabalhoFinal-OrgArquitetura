; Exercício A

;definições das variáveis
varA: DB 4
varB: DB 2
varC: DB 0

.start:
	MOV D, [varA] ; move o valor de varA para o reg. D
	ADD D, [varB] ; adiciona o valor de varB no reg. D
	MOV [varC], D ; move o valor do reg. D para varC
	MOV D, 0 ; limpa o reg. D
	HLT ; encerra