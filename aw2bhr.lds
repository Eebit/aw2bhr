OUTPUT_ARCH(arm)
ENTRY(Init)

gNumMusicPlayers = 9;
gMaxLines = 0;

SECTIONS
{
	. = 0x02000000;
	EWRAM (NOLOAD) :
	ALIGN(4)
	{
	}

	. = 0x03000000;
	IWRAM (NOLOAD) :
	ALIGN(4)
	{
	}

	. = 0x08000000;
	ROM :
	ALIGN(4)
	{
		/* .text */
		src/rom-header.o(.text);
		src/crt0.o(.text);

		asm/code.o(.text);

		/* .data & .rodata */
		. = ALIGN(4); data/data.o(.data)
	}
}
