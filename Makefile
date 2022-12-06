montador: Antter.mif charmap.mif
	./sim Antter.mif charmap.mif
Antter.mif: Antter.asm
	./montador Antter.asm Antter.mif
clear:
	rm Antter.mif
