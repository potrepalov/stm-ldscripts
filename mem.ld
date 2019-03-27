/*
 * Memory Spaces Definitions.
 *
 * Need modifying for a specific board. 
 *   FLASH.ORIGIN: starting address of flash
 *   FLASH.LENGTH: length of flash
 *   RAM.ORIGIN: starting address of RAM bank 0, 1, 2
 *   RAM.LENGTH: length of RAM bank 0, 1, 2
 *   EXTMEMBx.ORIGIN: starting address of external memory block x
 *   EXTMEMBx.LENGTH: length of external memory block x
 *
 * The values below can be addressed in further linker scripts
 * using functions like 'ORIGIN(RAM)' or 'LENGTH(RAM)'.
 */


MEMORY
{
  CCMRAM   (xrw) : ORIGIN = 0x10000000, LENGTH = 64K

  BIT_BAND (rw)  : ORIGIN = 0x22000000, LENGTH = 0x100 * 8 * 4

  SRAM1    (xrw) : ORIGIN = 0x20000100, LENGTH = 112K - 0x100
  SRAM2    (xrw) : ORIGIN = 0x2001C000, LENGTH = 16K
  SRAM3    (xrw) : ORIGIN = 0x20020000, LENGTH = 64K
  
  BKPSRAM  (rw)  : ORIGIN = 0x40024000, LENGTH = 4K

  FLASH    (rx)  : ORIGIN = 0x08000000, LENGTH = 2M
  FLASHB1  (rx)  : ORIGIN = 0x00000000, LENGTH = 0

  /* NOR / PSRAM / SRAM */
  EXTMEMB1 (rx)  : ORIGIN = 0x60000000, LENGTH = 0

  /* NAND Flash memory */
  EXTMEMB2 (rx)  : ORIGIN = 0x70000000, LENGTH = 0
  EXTMEMB3 (rx)  : ORIGIN = 0x80000000, LENGTH = 0

  /* PC Card */
  EXTMEMB4 (rx)  : ORIGIN = 0x90000000, LENGTH = 0

  /* SDRAM */
  EXTMEMB5 (xrw) : ORIGIN = 0xC0000000, LENGTH = 0
  EXTMEMB6 (xrw) : ORIGIN = 0xD0000000, LENGTH = 0
}

REGION_ALIAS( "EXTMEM", EXTMEMB5 );
REGION_ALIAS( "REGION_TEXT", FLASH );
REGION_ALIAS( "REGION_RODATA", FLASH );
REGION_ALIAS( "REGION_DATA", CCMRAM );
REGION_ALIAS( "REGION_BSS", CCMRAM );
REGION_ALIAS( "REGION_HEAP", CCMRAM );
REGION_ALIAS( "REGION_STACK", CCMRAM );


/* End of file  mem.ld */
