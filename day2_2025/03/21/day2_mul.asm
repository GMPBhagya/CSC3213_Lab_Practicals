;Write an assembly program to multiplication two numbbers and display the result
.model small
.stack 100h

.data
n db 2
m db 3

.code 
start:

mov ax,@data
mov ds,ax

mov al,n ;al=2
mul m ;dl=3*2=6

mov dl,al ;dl=6
add dl,48 ;dl=6+48=54

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start