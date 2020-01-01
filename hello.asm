!src "zeropage.inc"
!src "vera.inc"

*=$1000

main:
	jsr init
	lda #$00
	sta zpchar
	ldx #0
	ldy #0
-	sty zpcolor
	jsr write_char
	cpx #9
	beq +
	inx
	iny
	jmp -
+	rts

init:
	lda #0
	sta	veractl
	sta veralo
	sta veramid
	lda #$10
	sta verahi
	rts

write_char:
	lda zpchar
	sta veradat
	lda zpcolor
	sta veradat
	rts

hello:
	ldx #0	
-	lda .string,x
	beq +
	sta veradat
	inx
	jmp -
+	rts

.string !scr "hello, world!",0
