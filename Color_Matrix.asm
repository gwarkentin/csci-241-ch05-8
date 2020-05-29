; Program:     Chapter 5, Pr 8
; Description: Displays a single character in all possible combinations of foreground and background colors
; Student:     Gabriel Warkentin
; Date:        02/26/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

.data
chara = 'X'							; static time constant faster than memory variable

.code
main1 proc
	
	mov ebx, 0						; initialize
	mov ecx, 16

L1:
	mov edx, ecx					; save outer loop counter, register faster than pop since we have extra to spare
	mov ecx, 16						; set inner loop counter
L2:
	mov eax, ebx					; move stored color to eax
	call SetTextColor
	mov al, chara					; move chara constant to al to write. Could just use 'X' directly
	call WriteChar
	add bl,	1						; increase foreground by 1 step
	loop L2							; at 16 this will roll into the background colors bit
							
	call CrLf
	mov eax, 500
	call Delay
	mov ecx, edx					; restore outer loop counter
	loop L1

	mov eax,lightGray+(black*16)	; restore terminal default color
	call SetTextColor
	call WaitMsg
	exit

main1 endp

end ;main1