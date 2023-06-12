[bits 16]	; using 16-bits mode

; code segment
section .text

;;
 ; clear - clears the screen
;;

clear:
	pusha	; push all registers

	; clear the screen
	mov ah, 0x00
	mov al, 0x03
	int 0x10	; interrupt

	popa	; restore all pushed registers

	ret
