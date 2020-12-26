org 7C00h

start:

MOV AH, 13h
MOV AL, 1
INT 10h
 MOV    CX,     28
 MOV    BL,     01001111b
 MOV    DL,     48
 MOV    DH,     1
 MOV    BP,     string
 INT    10h

 MOV    CX,  11
 MOV    BL,  00001010b
 MOV    DL,  1

  MOV    DH,  19
  MOV    BP,  a
  INT    10h

  MOV    DH,  20
  MOV    BP,  b
  INT    10h

  MOV    DH,  21
  MOV    BP,  c
  INT    10h

  MOV    DH,  22
  MOV    BP,  d
  INT    10h

  MOV    DH,  23
  MOV    BP,  e
  INT    10h

  MOV    DH,  24
  MOV    BP,  f
  INT    10h

string  DB      'Bolotov Alexander NMT-383907'
a   DB   '     @     '
b   DB   '    @@@    '
c   DB   '   @@@@@   '
d   DB   '  @@@@@@@  '
e   DB   ' @@@@@@@@@ '
f   DB   '@@@@@@@@@@@'

exit:


db 510-($-$$) dup 0
dw 0AA55h