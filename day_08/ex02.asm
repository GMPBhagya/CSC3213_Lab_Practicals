;Given a mark from 0-100,display a grade:
;90-100-->A
;cmp 90,mark
;jge printA

;75-89--> B
;cmp 75,mark
;jge printB

;60-74--> C
;cmp 60,mark
;jge printC

;50-59--> D
;cmp 50,mark
;jge printD
;jl printFail

;Below 50 -->Fail

.model small
.stack 100h

.data
msgA db "The grade is A $"
msgB db "The grade is B $"
msgC db "The grade is C $"
msgD db "The grade is D $"
msgF db "Fail $"

mark db 40

.code
start:
mov ax,@data
mov ds,ax

mov al,mark ;al=mark;al=65
cmp al,90
jge gradeA ;if mark >=90

cmp al,75
jge gradeB ;elseif mark >=75

cmp al,60
jge gradeC ;elseif mark >=60

cmp al,50
jge gradeD ;elseif mark >=50

;else mark < 50
mov dx ,offset msgF
mov ah,09h
int 21h
jmp endd

gradeA:
mov dx,offset msgA
mov ah,09h
int 21h
jmp endd

gradeB:
mov dx,offset msgB
mov ah,09h
int 21h
jmp endd

gradeC:
mov dx,offset msgC
mov ah,09h
int 21h
jmp endd

gradeD:
mov dx,offset msgD
mov ah,09h
int 21h
jmp endd


endd:

mov ax,4c00h
int 21h

end start