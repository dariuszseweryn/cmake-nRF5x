# MIT License

# Copyright (c) 2020 Polidea

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# WARNING: FILE GENERATED FROM ./ci/scripts/generate_cmake.sh SCRIPT.

# Automatically generated DFU protocol definitions for nanopb
add_library(nrf5_dfu_cc_pb OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/dfu-cc.pb.c"
)
target_include_directories(nrf5_dfu_cc_pb PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_cc_pb PUBLIC
  nrf5_ext_nanopb
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_CC_PB_DEPENDENCIES
  nrf5_dfu_cc_pb
  nrf5_ext_nanopb
)

# DFU Flash operations
add_library(nrf5_dfu_flash OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_flash.c"
)
target_include_directories(nrf5_dfu_flash PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_flash PUBLIC
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_FLASH_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_delay
  nrf5_dfu_flash
  nrf5_ext_fprintf
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# DFU global settings
add_library(nrf5_dfu_settings OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_settings.c"
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_settings_svci.c"
)
target_include_directories(nrf5_dfu_settings PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_settings PUBLIC
  nrf5_crc32
  nrf5_dfu_flash
  nrf5_nrfx_nvmc
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_SETTINGS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_crc32
  nrf5_delay
  nrf5_dfu_flash
  nrf5_dfu_settings
  nrf5_ext_fprintf
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# USB DFU trigger library
add_library(nrf5_dfu_trigger_usb OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_trigger_usb.c"
)
target_include_directories(nrf5_dfu_trigger_usb PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_trigger_usb PUBLIC
  nrf5_app_usbd
  nrf5_app_usbd_nrf_dfu_trigger
  nrf5_app_usbd_serial_num
  nrf5_boards
  nrf5_log
  nrf5_nrfx_hal
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_TRIGGER_USB_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_usbd
  nrf5_app_usbd_nrf_dfu_trigger
  nrf5_app_usbd_serial_num
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_block_dev
  nrf5_boards
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_delay
  nrf5_dfu_trigger_usb
  nrf5_drv_clock
  nrf5_drv_power
  nrf5_drv_usbd
  nrf5_ext_fprintf
  nrf5_ext_utf_converter
  nrf5_fds
  nrf5_fstorage
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_clock
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_power
  nrf5_nrfx_soc
  nrf5_nrfx_systick
  nrf5_nrfx_usbd
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# DFU version validation
add_library(nrf5_dfu_ver_validation OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_ver_validation.c"
)
target_include_directories(nrf5_dfu_ver_validation PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader"
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_ver_validation PUBLIC
  nrf5_assert
  nrf5_crypto
  nrf5_dfu_cc_pb
  nrf5_dfu_settings
  nrf5_log
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_VER_VALIDATION_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_assert
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_crc32
  nrf5_crypto
  nrf5_delay
  nrf5_dfu_cc_pb
  nrf5_dfu_flash
  nrf5_dfu_settings
  nrf5_dfu_ver_validation
  nrf5_ext_cc310_bl_fwd
  nrf5_ext_cc310_fwd
  nrf5_ext_cifra_aes128_eax_fwd
  nrf5_ext_fprintf
  nrf5_ext_mbedtls_fwd
  nrf5_ext_micro_ecc_fwd
  nrf5_ext_nanopb
  nrf5_ext_oberon_fwd
  nrf5_ext_optiga_fwd
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_mem_manager
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_sha256_fwd
  nrf5_soc
  nrf5_stack_info
  nrf5_strerror
)

# DFU utilities
add_library(nrf5_dfu_utils OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_utils.c"
)
target_include_directories(nrf5_dfu_utils PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader"
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_utils PUBLIC
  nrf5_app_util_platform
  nrf5_crc32
  nrf5_dfu_settings
  nrf5_ext_nanopb
  nrf5_log
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_UTILS_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_crc32
  nrf5_delay
  nrf5_dfu_flash
  nrf5_dfu_settings
  nrf5_dfu_utils
  nrf5_ext_fprintf
  nrf5_ext_nanopb
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# DFU validation
add_library(nrf5_dfu_validation OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_validation.c"
)
target_include_directories(nrf5_dfu_validation PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader"
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_validation PUBLIC
  nrf5_assert
  nrf5_crc32
  nrf5_crypto
  nrf5_dfu_flash
  nrf5_dfu_settings
  nrf5_dfu_utils
  nrf5_dfu_ver_validation
  nrf5_ext_nanopb
  nrf5_log
  nrf5_strerror
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_VALIDATION_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_assert
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_crc32
  nrf5_crypto
  nrf5_delay
  nrf5_dfu_cc_pb
  nrf5_dfu_flash
  nrf5_dfu_settings
  nrf5_dfu_utils
  nrf5_dfu_validation
  nrf5_dfu_ver_validation
  nrf5_ext_cc310_bl_fwd
  nrf5_ext_cc310_fwd
  nrf5_ext_cifra_aes128_eax_fwd
  nrf5_ext_fprintf
  nrf5_ext_mbedtls_fwd
  nrf5_ext_micro_ecc_fwd
  nrf5_ext_nanopb
  nrf5_ext_oberon_fwd
  nrf5_ext_optiga_fwd
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_mem_manager
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_sha256_fwd
  nrf5_soc
  nrf5_stack_info
  nrf5_strerror
)

# DFU result codes
add_library(nrf5_dfu_handling_error OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_handling_error.c"
)
target_include_directories(nrf5_dfu_handling_error PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_handling_error PUBLIC
  nrf5_log
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_HANDLING_ERROR_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_delay
  nrf5_dfu_handling_error
  nrf5_ext_fprintf
  nrf5_fds
  nrf5_fstorage
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_soc
  nrf5_strerror
)

# DFU request handling
add_library(nrf5_dfu_req_handler OBJECT EXCLUDE_FROM_ALL
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu/nrf_dfu_req_handler.c"
)
target_include_directories(nrf5_dfu_req_handler PUBLIC
  "${NRF5_SDK_PATH}/components/libraries/bootloader"
  "${NRF5_SDK_PATH}/components/libraries/bootloader/dfu"
)
target_link_libraries(nrf5_dfu_req_handler PUBLIC
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_crc32
  nrf5_crypto
  nrf5_dfu_cc_pb
  nrf5_dfu_handling_error
  nrf5_dfu_settings
  nrf5_dfu_utils
  nrf5_dfu_validation
  nrf5_log
)
list(APPEND NRF5_LIBRARY_NRF5_DFU_REQ_HANDLER_DEPENDENCIES
  nrf5_app_scheduler
  nrf5_app_util_platform
  nrf5_assert
  nrf5_atfifo
  nrf5_atomic
  nrf5_balloc
  nrf5_balloc_fwd
  nrf5_cli
  nrf5_cli_fwd
  nrf5_config
  nrf5_crc16
  nrf5_crc32
  nrf5_crypto
  nrf5_delay
  nrf5_dfu_cc_pb
  nrf5_dfu_flash
  nrf5_dfu_handling_error
  nrf5_dfu_req_handler
  nrf5_dfu_settings
  nrf5_dfu_utils
  nrf5_dfu_validation
  nrf5_dfu_ver_validation
  nrf5_ext_cc310_bl_fwd
  nrf5_ext_cc310_fwd
  nrf5_ext_cifra_aes128_eax_fwd
  nrf5_ext_fprintf
  nrf5_ext_mbedtls_fwd
  nrf5_ext_micro_ecc_fwd
  nrf5_ext_nanopb
  nrf5_ext_oberon_fwd
  nrf5_ext_optiga_fwd
  nrf5_fds
  nrf5_fstorage
  nrf5_fstorage_nvmc
  nrf5_fstorage_sd
  nrf5_log
  nrf5_log_fwd
  nrf5_mdk
  nrf5_mem_manager
  nrf5_memobj
  nrf5_memobj_fwd
  nrf5_mtx
  nrf5_nrfx_common
  nrf5_nrfx_hal
  nrf5_nrfx_nvmc
  nrf5_pwr_mgmt
  nrf5_queue
  nrf5_ringbuf
  nrf5_sdh
  nrf5_section
  nrf5_sha256_fwd
  nrf5_soc
  nrf5_stack_info
  nrf5_strerror
)