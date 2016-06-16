START openocd -f interface\stlink-v2.cfg -f target\stm32f0x.cfg -c "gdb_port 2222"
arm-eabi-gdb Debug\stm32_Hal.elf -x stm.gdbc
