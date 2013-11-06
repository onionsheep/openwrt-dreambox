#if defined(CONFIG_BCM96368) || defined(CONFIG_BCM96362) || defined(CONFIG_BCM96328)
#define ADSL_PHY_SDRAM_BIAS 0x100000
#else
#define ADSL_PHY_SDRAM_BIAS 0x1A0000
#endif
#define ADSL_PHY_SDRAM_PAGE_SIZE 0x200000
#define ADSL_SDRAM_IMAGE_SIZE (ADSL_PHY_SDRAM_PAGE_SIZE - ADSL_PHY_SDRAM_BIAS)