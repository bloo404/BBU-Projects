;  programul calculeaza factorialul unui numar si afiseaza in consola rezultatul
;  procedura factorial este definita in fisierul MMCfactorial.asm
bits  32
global  start

extern  printf, exit
import  printf msvcrt.dll
import  exit msvcrt.dll

extern MMCfactorial
;MMCfactorial(int):int
;                - 1 parameter N:integer (specify order if more parameters)
;                - calculates factorial of N
;                - return value in EAX: integer
;                - procedure will free stack parameters 
;                - uses/modifies eax, ecx, edx 
segment  data use32 class=data
	format_string db  "factorial=%d", 10, 13, 0
    
segment  code use32 class=code
start:
	push dword 6
	call MMCfactorial
    
	push eax
	push format_string
	call [printf]
	add esp, 2*4
    
	push 0
	call [exit]