# Name of the target
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR safety-island)

set(THREADX_ARCH "safety_island")
set(THREADX_TOOLCHAIN "gnu")

set(MCPU_FLAGS "-march=rv32imac -mabi=ilp32")
set(VFP_FLAGS "")
set(SPEC_FLAGS "")
# set(LD_FLAGS "-nostartfiles -Wl,--gc-sections -Wl,-Map,memory.map")

include(${CMAKE_CURRENT_LIST_DIR}/riscv32-none-abi.cmake)