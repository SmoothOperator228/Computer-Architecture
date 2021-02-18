IDEAL
MODEL small
stack 256


DATASEG
exCode db 0
message db "Boyko Stanislav",10,13,'$'
message1 db "Karvanskyi Nestor",10,13,'$'
message2 db "Karpov Vladislav",10,13,'$'
   
   
CODESEG
Start:
	mov ax,@data
	mov ds, ax
	mov es, ax
	mov dx, offset message
	mov ah,9
	int 21h
	mov dx, offset message1
	mov ah,9
	int 21h
	mov dx, offset message2
	mov ah,9
	int 21h
	mov ah,01h
	int 21h
	mov ah,4ch
	mov al,[exCode]
	int 21h
	end Start
