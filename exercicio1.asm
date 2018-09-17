org 0x7c00
jmp main
msgMenu3: db 'Interrupcao em IHS',10,13,0




;printa a string aponda por si
;nao printa acentos
printString:
	push ax;
	push ds
	mov ax, 0
	mov ds,ax

	mov cl,0
	loop:

	lodsb

	cmp cl,al
	je exit

	mov ah, 0xE
	mov bh,0
	int 0x10
	jmp loop
	exit:
	pop ds
	pop ax
	ret




ISR: 
push ax
push bx
push cx
mov si ,msgMenu3
call printString
pop ax
pop bx
pop cx

iret



main:

push ds; salvando DS na pilha
mov ax, 0
mov ds, ax; novo end de DS é 0
mov di,0100H; offset de INT 40
mov word[di], ISR; colocando IP
mov word[di + 2], 0; colocando CS
pop ds; carregando valor antigo de DS


;mov si, msgMenu3
;call printString

int 40h



times 510-($-$$) db 0

dw 0AA55h ; some BIOSes require this signature