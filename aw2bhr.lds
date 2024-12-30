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
		. = 0x000000; gUnknown_02000000 = .;
		. = 0x002000; gUnknown_02002000 = .;
		. = 0x002050; gUnknown_02002050 = .;
		. = 0x002052; gUnknown_02002052 = .;
		. = 0x002FEF; gUnknown_02002FEF = .;
		. = 0x002FFF; gUnknown_02002FFF = .;
		. = 0x003000; gUnknown_02003000 = .;
		. = 0x00B000; gUnknown_0200B000 = .;
		. = 0x00B0B0; gUnknown_0200B0B0 = .;
		. = 0x00B0D0; gUnknown_0200B0D0 = .;
		. = 0x00B204; gUnknown_0200B204 = .;
		. = 0x00B224; gUnknown_0200B224 = .;
		. = 0x00B274; gUnknown_0200B274 = .;
		. = 0x00B3B4; gUnknown_0200B3B4 = .;
		. = 0x00B5F4; gUnknown_0200B5F4 = .;
		. = 0x00B614; gUnknown_0200B614 = .;
		. = 0x00BC14; gUnknown_0200BC14 = .;
		. = 0x00BFFC; gUnknown_0200BFFC = .;
		. = 0x00C020; gUnknown_0200C020 = .;
		. = 0x00C078; gUnknown_0200C078 = .;
		. = 0x00C2D0; gUnknown_0200C2D0 = .;
		. = 0x00C420; gUnknown_0200C420 = .;
		. = 0x00C500; gUnknown_0200C500 = .;
		. = 0x00C508; gUnknown_0200C508 = .;
		. = 0x00C528; gUnknown_0200C528 = .;
		. = 0x00C624; gUnknown_0200C624 = .;
		. = 0x00CC24; gUnknown_0200CC24 = .;
		. = 0x00CC28; gUnknown_0200CC28 = .;
		. = 0x00CC2C; gUnknown_0200CC2C = .;
		. = 0x00CC30; gUnknown_0200CC30 = .;
		. = 0x00CC34; gUnknown_0200CC34 = .;
		. = 0x00CC38; gUnknown_0200CC38 = .;
		. = 0x00CC48; gUnknown_0200CC48 = .;
		. = 0x00CC58; gUnknown_0200CC58 = .;
		. = 0x00CC68; gUnknown_0200CC68 = .;
		. = 0x00CC78; gUnknown_0200CC78 = .;
		. = 0x00CC88; gUnknown_0200CC88 = .;
		. = 0x00CCC8; gUnknown_0200CCC8 = .;
		. = 0x00CD08; gUnknown_0200CD08 = .;
		. = 0x00CD0C; gUnknown_0200CD0C = .;
		. = 0x00CD10; gUnknown_0200CD10 = .;
		. = 0x00D510; gUnknown_0200D510 = .;
		. = 0x00D610; gUnknown_0200D610 = .;
		. = 0x00E414; gUnknown_0200E414 = .;
		. = 0x00E418; gUnknown_0200E418 = .;
		. = 0x00E438; gUnknown_0200E438 = .;
		. = 0x00E440; gUnknown_0200E440 = .;
		. = 0x00ED20; gUnknown_0200ED20 = .;
		. = 0x00F720; gUnknown_0200F720 = .;
		. = 0x00F920; gUnknown_0200F920 = .;
		. = 0x00FC50; gUnknown_0200FC50 = .;
		. = 0x00FD50; gUnknown_0200FD50 = .;
		. = 0x00FE50; gUnknown_0200FE50 = .;
		. = 0x00FED0; gUnknown_0200FED0 = .;
		. = 0x010050; gUnknown_02010050 = .;
		. = 0x010450; gUnknown_02010450 = .;
		. = 0x010C50; gUnknown_02010C50 = .;
		. = 0x012790; gUnknown_02012790 = .;
		. = 0x013750; gUnknown_02013750 = .;
		. = 0x017C50; gUnknown_02017C50 = .;
		. = 0x01E450; gUnknown_0201E450 = .;
		. = 0x022684; gUnknown_02022684 = .;
		. = 0x023284; gUnknown_02023284 = .;
		. = 0x0237B0; gUnknown_020237B0 = .;
		. = 0x023830; gUnknown_02023830 = .;
		. = 0x023894; gUnknown_02023894 = .;
		. = 0x025564; gUnknown_02025564 = .;
		. = 0x025566; gUnknown_02025566 = .;
		. = 0x025569; gUnknown_02025569 = .;
		. = 0x025586; gUnknown_02025586 = .;
		. = 0x025598; gUnknown_02025598 = .;
		. = 0x0256D4; gUnknown_020256D4 = .;
		. = 0x0256DA; gUnknown_020256DA = .;
		. = 0x02575C; gUnknown_0202575C = .;
		. = 0x025760; gUnknown_02025760 = .;
		. = 0x025764; gUnknown_02025764 = .;
		. = 0x0257E4; gUnknown_020257E4 = .;
		. = 0x025818; gUnknown_02025818 = .;
		. = 0x025C18; gUnknown_02025C18 = .;
		. = 0x027C2C; gUnknown_02027C2C = .;
		. = 0x027C68; gUnknown_02027C68 = .;
		. = 0x027DE8; gUnknown_02027DE8 = .;
		. = 0x027F68; gUnknown_02027F68 = .;
		. = 0x027F74; gUnknown_02027F74 = .;
		. = 0x027F78; gUnknown_02027F78 = .;
		. = 0x027FB0; gUnknown_02027FB0 = .;
		. = 0x028030; gUnknown_02028030 = .;
		. = 0x028038; gUnknown_02028038 = .;
		. = 0x028040; gUnknown_02028040 = .;
		. = 0x028042; gUnknown_02028042 = .;
		. = 0x02805A; gUnknown_0202805A = .;
		. = 0x028078; gUnknown_02028078 = .;
		. = 0x0280C0; gUnknown_020280C0 = .;
		. = 0x0280C2; gUnknown_020280C2 = .;
		. = 0x0280D4; gUnknown_020280D4 = .;
		. = 0x028360; gUnknown_02028360 = .;
		. = 0x0283E0; gUnknown_020283E0 = .;
		. = 0x0288A0; gUnknown_020288A0 = .;
		. = 0x0288B0; gUnknown_020288B0 = .;
		. = 0x0288B4; gUnknown_020288B4 = .;
		. = 0x028DD4; gUnknown_02028DD4 = .;
		. = 0x028DD5; gUnknown_02028DD5 = .;
		. = 0x028DD6; gUnknown_02028DD6 = .;
		. = 0x028DD7; gUnknown_02028DD7 = .;
		. = 0x028DD8; gUnknown_02028DD8 = .;
		. = 0x028E18; gUnknown_02028E18 = .;
		. = 0x028E1C; gUnknown_02028E1C = .;
		. = 0x028E3C; gUnknown_02028E3C = .;
		. = 0x028E3D; gUnknown_02028E3D = .;
		. = 0x028E40; gUnknown_02028E40 = .;
		. = 0x028E41; gUnknown_02028E41 = .;
		. = 0x028E48; gUnknown_02028E48 = .;
		. = 0x028E4C; gUnknown_02028E4C = .;
		. = 0x028E5C; gUnknown_02028E5C = .;
		. = 0x029664; gUnknown_02029664 = .;
		. = 0x029668; gUnknown_02029668 = .;
		. = 0x02967C; gUnknown_0202967C = .;
		. = 0x029690; gUnknown_02029690 = .;
		. = 0x0296B0; gUnknown_020296B0 = .;
		. = 0x0296BC; gUnknown_020296BC = .;
		. = 0x0296CE; gUnknown_020296CE = .;
		. = 0x0296E4; gUnknown_020296E4 = .;
		. = 0x029700; gUnknown_02029700 = .;
		. = 0x029704; gUnknown_02029704 = .;
		. = 0x029710; gUnknown_02029710 = .;
		. = 0x02972C; gUnknown_0202972C = .;
		. = 0x0297B6; gUnknown_020297B6 = .;
		. = 0x0297C0; gUnknown_020297C0 = .;
		. = 0x0297CC; gUnknown_020297CC = .;
		. = 0x029808; gUnknown_02029808 = .;
		. = 0x02980A; gUnknown_0202980A = .;
		. = 0x029816; gUnknown_02029816 = .;
		. = 0x029822; gUnknown_02029822 = .;
		. = 0x029838; gUnknown_02029838 = .;
		. = 0x029842; gUnknown_02029842 = .;
		. = 0x0298E0; gUnknown_020298E0 = .;
		. = 0x0298EC; gUnknown_020298EC = .;
		. = 0x0298FA; gUnknown_020298FA = .;
		. = 0x029906; gUnknown_02029906 = .;
		. = 0x029924; gUnknown_02029924 = .;
		. = 0x029A00; gUnknown_02029A00 = .;
		. = 0x029A10; gUnknown_02029A10 = .;
		. = 0x029B78; gUnknown_02029B78 = .;
		. = 0x029B7C; gUnknown_02029B7C = .;
		. = 0x029B80; gUnknown_02029B80 = .;
		. = 0x029B94; gUnknown_02029B94 = .;
		. = 0x029BA8; gUnknown_02029BA8 = .;
		. = 0x029BC4; gUnknown_02029BC4 = .;
		. = 0x029BE8; gUnknown_02029BE8 = .;
		. = 0x029BEC; gUnknown_02029BEC = .;
		. = 0x029C00; gUnknown_02029C00 = .;
		. = 0x029C04; gUnknown_02029C04 = .;
		. = 0x029C08; gUnknown_02029C08 = .;
		. = 0x029C0C; gUnknown_02029C0C = .;
		. = 0x029C10; gUnknown_02029C10 = .;
		. = 0x029C14; gUnknown_02029C14 = .;
		. = 0x029C20; gUnknown_02029C20 = .;
		. = 0x029D84; gUnknown_02029D84 = .;
		. = 0x029ED8; gUnknown_02029ED8 = .;
		. = 0x029F3C; gUnknown_02029F3C = .;
		. = 0x02DAD8; gUnknown_0202DAD8 = .;
		. = 0x02F0E8; gUnknown_0202F0E8 = .;
		. = 0x02F110; gUnknown_0202F110 = .;
		. = 0x02F140; gUnknown_0202F140 = .;
		. = 0x02F200; gUnknown_0202F200 = .;
		. = 0x02F204; gUnknown_0202F204 = .;
		. = 0x02F208; gUnknown_0202F208 = .;
		. = 0x02F20C; gUnknown_0202F20C = .;
		. = 0x02F210; gUnknown_0202F210 = .;
		. = 0x02F214; gUnknown_0202F214 = .;
		. = 0x02F2C0; gUnknown_0202F2C0 = .;
		. = 0x02F2C4; gUnknown_0202F2C4 = .;
		. = 0x02F2C8; gUnknown_0202F2C8 = .;
		. = 0x02F2CC; gUnknown_0202F2CC = .;
		. = 0x02F2D0; gUnknown_0202F2D0 = .;
		. = 0x02F2D4; gUnknown_0202F2D4 = .;
		. = 0x02F2D6; gUnknown_0202F2D6 = .;
		. = 0x02F2D8; gUnknown_0202F2D8 = .;
		. = 0x02F2DC; gUnknown_0202F2DC = .;
		. = 0x02F8DC; gUnknown_0202F8DC = .;
		. = 0x02FDDC; gUnknown_0202FDDC = .;
		. = 0x02FDE0; gUnknown_0202FDE0 = .;
		. = 0x02FDE4; gUnknown_0202FDE4 = .;
		. = 0x02FDE8; gUnknown_0202FDE8 = .;
		. = 0x02FDEA; gUnknown_0202FDEA = .;
		. = 0x02FDEC; gUnknown_0202FDEC = .;
		. = 0x02FDFC; gUnknown_0202FDFC = .;
		. = 0x02FE0E; gUnknown_0202FE0E = .;
		. = 0x02FE38; gUnknown_0202FE38 = .;
		. = 0x02FEF8; gUnknown_0202FEF8 = .;
		. = 0x02FF78; gUnknown_0202FF78 = .;
		. = 0x03BFFC; gUnknown_0203BFFC = .;
		. = 0x03C000; gUnknown_0203C000 = .;
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
