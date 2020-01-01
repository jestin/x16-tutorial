*=$1000

verareg = $9f20

veralo = verareg+0
veramid = verareg+1
verahi = verareg+2
veradat = verareg+3
veradat2 = verareg+4
veractl = verareg+5
veraien = verareg+6
veraisr = verareg+7

init:
	lda #0
	sta	veractl
	sta veralo
	sta veramid
	lda #$20
	sta verahi

hello:
	ldx #0	
-	lda .string,x
	beq +
	sta veradat
	inx
	jmp -

+	rts

.string !scr "hello, world!",0
