TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data
myMessage BYTE "Hello, Dylan M.",0dh,0ah,0
userInput1 BYTE "Enter first number: ",0
userInput2 BYTE "Enter second number: ",0
userInput3 BYTE "Enter third number to subtract: ",0

.code
main PROC
	call Clrscr

	mov	 edx,OFFSET myMessage
	call WriteString

	call DumpRegs

	mov eax,400
	add eax,200
	sub eax,100

	call DumpRegs

	; Prompt the user to input the first number
	mov edx, OFFSET userInput1
	call WriteString
	call ReadInt
	mov ebx, eax

	; Prompt the user to input the second number
	mov edx, OFFSET userInput2
	call WriteString
	call ReadInt
	mov ecx, eax

	; Prompt the user to input the third number
	mov edx, OFFSET userInput3
	call WriteString
	call ReadInt
	mov edx, eax

	; Perform the calculation: (first + second) - third
	mov eax, ebx
	add eax, ecx
	sub eax, edx

	; Display the result
	call DumpRegs


	
	

	exit
main ENDP

END main