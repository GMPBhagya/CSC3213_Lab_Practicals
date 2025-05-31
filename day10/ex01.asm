;read a number without printing it
.model small
.stack 100h
.data
msg db "Enter a number : $"
a db ?
b db ?

.code
mov ax,@data
mov ds,ax

mov dx,offset msg
mov ah,09h
int 21h

call readInt

mov ax,4c00h
int 21h

proc readInt
mov ah,01h;1
int 21h;al=49
sub al,48;al=al-48
mov a,al ;al=1=a

read:
mov ah,01h 
int 21h ;al=2+48=50
cmp al,0dh
je exit

sub al,48 ;al=al-48=2
mov b,al ;b=2

mov al,a ;al=a=1
mov bl,10 ;bl=10
mul bl  ;al=al*bl=10
add al,b ;al+b=10+2=12

mov a,al ;a=12
jmp read

exit:
mov al,a 

ret
endp

end