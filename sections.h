/* include/sections.h */


#define __section__(sec, type, var, ...)				\
	__attribute__ ((section(sec))) type var __VA_ARGS__


#define RO_DATA( ... )          __section__( ".rodata,\"a\",%progbits //", \
						__VA_ARGS__ )

#define NOINIT( ... )           __section__( ".noinit", __VA_ARGS__ )
#define BACKUP_NOINIT( ... )    __section__( ".noinit.backup", __VA_ARGS__ )
#define EXTMEM_NOINIT( ... )    __section__( ".noinit.extmem", __VA_ARGS__ )

#define CCMRAM_DATA( ... )      __section__( ".data.ccmram", __VA_ARGS__ )
#define CCMRAM_BSS( ... )       __section__( ".bss.ccmram", __VA_ARGS__ )
#define CCMRAM_NOINIT( ... )    __section__( ".noinit.ccmram", __VA_ARGS__ )

#define SRAM1_DATA( ... )       __section__( ".data.sram1", __VA_ARGS__ )
#define SRAM1_BSS( ... )        __section__( ".bss.sram1", __VA_ARGS__ )
#define SRAM1_NOINIT( ... )     __section__( ".noinit.sram1", __VA_ARGS__ )

#define SRAM2_DATA( ... )       __section__( ".data.sram2", __VA_ARGS__ )
#define SRAM2_BSS( ... )        __section__( ".bss.sram2", __VA_ARGS__ )
#define SRAM2_NOINIT( ... )     __section__( ".noinit.sram2", __VA_ARGS__ )

#define SRAM3_DATA( ... )       __section__( ".data.sram3", __VA_ARGS__ )
#define SRAM3_BSS( ... )        __section__( ".bss.sram3", __VA_ARGS__ )
#define SRAM3_NOINIT( ... )     __section__( ".noinit.sram3", __VA_ARGS__ )

#define BIT_BAND_DATA( ... )    __section__( ".data.bit_band", __VA_ARGS__ )
#define BIT_BAND_BSS( ... )     __section__( ".bss.bit_band", __VA_ARGS__ )
#define BIT_BAND_NOINIT( ... )  __section__( ".noinit.bit_band", __VA_ARGS__ )



/* End of file  sections.h */
