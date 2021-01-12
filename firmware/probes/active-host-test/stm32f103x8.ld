/*
 * This comes barely modified from STM32-cpp, changes are:
 * - Changed sizes of FLASH/SRAM sections
 * - Removed peripheral location definitions
 * - Added some symbols that STM32 hal needs
 */

MEMORY
{
	FLASH(RX):	ORIGIN = 0x08000000, LENGTH = 64K
	SRAM(RW):	ORIGIN = 0x20000000, LENGTH = 1K 
}

SECTIONS
{
	/* Code comes right after the vector tables */
	.text :
	{
		*(.vector)
		*(.text.*)
		*(.rodata)
		*(.ctors)
		. = ALIGN(4);
		__ctor_start = .;
		*(.init_array)
		__ctor_end = .;
		__dtor_start = .;
		*(.fini_array)
		__dtor_end = .;
	} > FLASH

	_sidata = LOADADDR(.data);
	_estack = ORIGIN(SRAM) + LENGTH(SRAM);

	/* Initialized data needs special handling because it lives in two places */
	.data :
	{
		__data_romstart = LOADADDR(.data);
		__data_start = .;
		_sdata = __data_start;
		*(.data)
		__data_end = .;
		_edata = __data_end;
	} > SRAM AT> FLASH

	/* BSS is pretty straightforward. Use all remaining space for the stack */
	.bss :
	{
		__bss_start__ = .;
		_sbss = __bss_start__;
		*(.bss)
		__bss_end__ = .;
		_ebss = __bss_end__;
		__end = .;
		. = ORIGIN(SRAM) + LENGTH(SRAM) - 4;
		__stack = .;

	} > SRAM

}
