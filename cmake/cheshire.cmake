# Name of the target
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR cheshire)

set(THREADX_ARCH "cheshire")
set(THREADX_TOOLCHAIN "gnu")

set(MCPU_FLAGS "-march=rv64gc_zifencei -mabi=lp64d -DOT_PLATFORM_RV32 -frandom-seed=cheshire -fuse-linker-plugin -flto")
set(VFP_FLAGS "")
set(SPEC_FLAGS "")
# set(LD_FLAGS "-nostartfiles -Wl,--gc-sections -Wl,-flto")

include(${CMAKE_CURRENT_LIST_DIR}/riscv64-none-abi.cmake)