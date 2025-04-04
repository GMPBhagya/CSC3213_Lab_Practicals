;Write an assembli language progaram to read two one-digit integer from the user,and do the arithamtic operation

.model small
.stack 100h
.data
 msg1 db "Enter the first number : $"
 n1 db 0
 msg2 db "Enter the second number : $"
 n2 db 0
 msg3 db "The addition is : $"
 msg4 db "The subtraction is : $"
 msg5 db "The multiplication is : $"
 msg6 db "The division quotient is : $"
 msg7 db "The devision remainder is : $"
 r db ?
 
 .code
 start:
mov ax,@data
mov ds,ax
	
mov dx,offset msg1	
mov ah,09h
int 21h

mov ah,01h	;read input
int 21h;al=48+3=51

;only storing the data
mov dl,al ;dl=al=51
sub dl,48 ;dl=dl-48=3   
mov n1,dl

;next line	
mov dl,0ah	
mov ah,02h
int 21h

mov dx,offset msg2	;print the msg
mov ah,09h
int 21h
	
mov ah,01h	;read input
int 21h

;only storing the data	
mov dl,al
sub dl,48
mov n2,dl

;-------------------------------------------

;next line	
mov dl,0ah	
mov ah,02h
int 21h

;print the msg	
mov dx,offset msg3	
mov ah,09h
int 21h

;addition	
mov dl,n1 ;n1=3 dl=3
add dl,n2 ;dl=dl+n2 3+5=5
add dl,48

;printing total number
mov ah,02h
int 21h

;next line	
mov dl,0ah	
mov ah,02h
int 21h

mov dx,offset msg4	
mov ah,09h
int 21h

;subtraction
mov dl,n1
sub dl,n2
add dl,48

;printing total number
mov ah,02h
int 21h

;-------------------------------------------

;next line	
mov dl,0ah	
mov ah,02h
int 21h

mov dx,offset msg5	
mov ah,09h
int 21h

;multiplication
mov al,n1
mul n2
mov dl,al
add dl,48

;printing total number
mov ah,02h
int 21h
;-------------------------------------------
;next line	
mov dl,10	
mov ah,02h
int 21h

;divition quotiant
mov dx,offset msg6	
mov ah,09h
int 21h

mov ah,00
mov al,n1
div n2
mov r,ah

mov dl,al
add dl,48

;printing total number
mov ah,02h
int 21h

;-------------------------------------------
;next line	
mov dl,10	
mov ah,02h
int 21h

;devision remainder
mov dx,offset msg7	
mov ah,09h
int 21h

mov dl,r
add dl,48

mov ah,02h
int 21h
	
mov ax,4c00h
int 21h
	
end start

