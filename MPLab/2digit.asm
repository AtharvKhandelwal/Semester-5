.MODEL small

.DATA
var DB 10,"Enter a digit: $"
var1 DB 10,"Enter a another digit: $"
sum DB 10,"sum is $"
.CODE

m proc

MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET var
MOV AH,9
int 21H

MOV AH,1h
INT 21H

MOV CL,AL
SUB CL,30h

MOV AH,1h
INT 21H

MOV BL,AL
SUB BL,30h

MOV DX,OFFSET var1
MOV AH,9
int 21H

MOV AH,1h
INT 21H

SUB AL,30H
ADD CL,AL
ADD CL,30H

MOV AH,1h
INT 21H

SUB AL,30H
ADD BL,AL
ADD BL,30H

MOV DX,OFFSET sum
MOV AH,9
int 21H

MOV DL,CL
MOV AH,2h
INT 21H

MOV DL,BL
MOV AH,2h
INT 21H


m endp
end m