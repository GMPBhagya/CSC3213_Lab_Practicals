;Write the assembly program to input two single digit numbers and compare which number is greater.
.model small
.stack 100h

.data
m1 db "Enter the first number $"
m2 db "Enter the second number $"
m3 db "The greatesr number is $"
n1 db 0
n2 db 0

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset m1
mov ah,09h
int 21h

mov ah,01h ;3+48=51
int 21h

mov dl,al ;dl=51
sub dl,48 ;dl=51-48
mov n1,dl ;n=3

mov dl,10
mov ah,02h
int 21h

mov dx,offset m2
mov ah,09h
int 21h

mov ah,01h 
int 21h

mov dl,al 
sub dl,48 
mov n2,dl 

mov dl,10
mov ah,02h
int 21h

mov bl,n1
cmp bl,n2
jg msg1

msg2:
mov dx,offset m2
mov ah,09h
int 21h

mov dl,n2
add dl,48
mov ah,02h
int 21h
jmp endd

msg1:
mov dx,offset m3
mov ah,09h
int 21h

mov dl,bl
add dl,48
mov ah,02h
int 21h

endd:
mov ax,4c00h
int 21h

end start

