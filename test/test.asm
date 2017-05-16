org 07c00h
jmp BEGIN

  [BITS 16]
BEGIN:
  xor ax,ax
  mov ax,0xb800
  mov es,ax
  mov ah,0x02
  mov al,'D'
  mov word [es:0x974],ax

  inFloop:
    jmp inFloop

times 510-($-$$) db 0

dw 0xaa55
