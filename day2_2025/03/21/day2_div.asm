;Write an assembly program to divition two numbbers and display the result
.model small
.stack 100h

.data
n db 6
m db 3
r db ?

.code 
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,n ;al=6
div m ;dl=6/3  ah=1,al=1
mov r,ah;r=2

mov dl,al ;dl=2
add dl,48 ;dl=2+48=50

mov ah,02h
int 21h

mov dl,10 ;next line
mov ah,02h
int 21h

mov dl,r;dl=2
add dl,48
mov ah,02h
int 21h

end start