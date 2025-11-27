; Exercício H

; OBSERVAÇÃO
; Para se situar melhor nos valores da memória
; Nesse código, as posições vão: 
; VetorA: de 2 até 4
; VetorB: de 6 até 8
; VetorC: de 10 até 12
; Lembrando que a memória começa em 0



; Definição dos vetores
	JMP inicio
vetorA: DB 1
	DB 2
	DB 3
enderA: DB 0

vetorB: DB 3
	DB 2
	DB 1
enderB: DB 0

vetorC: DB 0
	DB 0
	DB 0
enderC: DB 0


inicio:
	MOV D, 0 ; Limpa D

	MOV B, vetorA ; move para o reg B a posição 1 do vetorA na   
; 		        memória

	MOV [enderA], B ; move a posição 1 do vetor A na memória 	
; 			  para a posição da memória do enderA  		                             				  		 			 			                               	              		





	MOV B, vetorB ; move para o reg B a posição 1 do vetorB na   
; 		        memória

	MOV [enderB], B ; move a posição 1 do vetor B na memória 	
; 			  para a posição da memória do enderB  		                             				  		 			 			                               	              		





	MOV B, vetorC ; move para o reg C a posição 1 do vetorC na   
; 		        memória


	MOV [enderC], B ; move a posição 1 do vetor C na memória  					 ;  		          para a posição da memória do enderC 		                             				  		 			 			                               	              		

	
	MOV B, 0 ; Limpa B



for_cond:
	CMP D, 3 ; compara D com 3
	JZ .fim ; se a flag Z virar TRUE, pula para o fim
	INC D ; Faz D++

	JMP loop ; se a flag Z continuar FALSE, pula para o loop


loop:
	
	MOV B, [enderA] ; Move para o reg B o valor armazenado no 					;                         enderA, que é a posição atual do vetor na                        ;                         memória

	MOV A, [B] ; Move o valor armazenado na posição da memória 		
;                    do reg B, que é a posição atual do vetorA
	
	MOV B, [enderB] ; Move para o reg B o valor armazenado no 
;                         enderB, que é a posição atual do vetor na 
;                         memória

	ADD A, [B] ; Soma o valor da posição na memória, armazenado 
;                    no reg B com o reg A, que é o valor atual do 
;                    vetorA, já salvo anteriormente


	MOV B, [enderC] ; Move pro reg B, o valor salvo no enderC,  
;                         que é a posição atual do vetorC

	MOV [B], A ; Move para a posição atual do vetorC  na
;                    memória, salvo no reg B, o resultado da soma                      
;                    feita anteriormente, entre a posição atual do 
;                    vetorA e VetorB
                    


	MOV C, [enderA] ; Move o valor salvo no enderA para o reg C
	INC C ; Faz C++
	MOV [enderA], C ; Move para o valor de enderA, o resultado


	MOV C, [enderB] ; Move o valor salvo no enderB para o reg C
	INC C ; Faz C++
	MOV [enderB], C ; Move para o valor de enderB, o resultado


	MOV C, [enderC] ; Move o valor salvo no enderC para o reg C
	INC C ; Faz C++
	MOV [enderC], C ; Move para o valor de enderC, o resultado


	JMP for_cond ; Pula para verificar a condição


.fim:
	MOV A, 0 ; Limpa A
	MOV B, 0 ; Limpa B
	MOV C, 0 ; Limpa C
	HLT ; encerra
