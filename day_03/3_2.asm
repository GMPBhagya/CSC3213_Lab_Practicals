;Enter the number 01:3
;Enter the number02: 4
;total of num1 and num2:07
.model small
.stack 100h
.data
msg1 db "Enter the number01 : $"
msg2 db "Enter the number02 : $"
msg3 db "total of num1 and num2: $"
n1 db 0
n2 db 0
n3 db 0
.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1 ;print the msg
mov ah,09h
int 21h

mov ah,01h ;3 al=48+3=51
int 21h

mov dl,al ; al=51 dl=51
sub dl,48 ;dl=51-48=3

mov n1,dl ;n1=3

mov dl,0ah ;next line
mov ah,02h
int 21h

mov dx,offset msg2
mov ah,09h
int 21h

mov ah,01h ;2 al=48+2=50
int 21h

mov dl,al ;al=50 dl=50
sub dl,48 ;dl=50-48=2

mov n2,dl ;n2=2

mov dl,0ah ;next line
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,n1
add dl,n2
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
