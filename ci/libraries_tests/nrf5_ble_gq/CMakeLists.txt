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
# WARNING: FILE GENERATED FROM ./ci/scripts/generate_cmake_tests.sh SCRIPT.

cmake_minimum_required(VERSION 3.14)
project(nrf5_ble_gq_test LANGUAGES C ASM)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/../../../cmake")
include("nrf5")

if(NRF5_SDK_VERSION VERSION_GREATER_EQUAL 16.0.0)
  add_executable(${CMAKE_PROJECT_NAME} "main.c")
  nrf5_target(${CMAKE_PROJECT_NAME})
  target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC
  )
  if(NRF5_SDK_VERSION VERSION_EQUAL 16.0.0)
    target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC
      nrf5_app_scheduler
      nrf5_app_timer
      nrf5_app_util_platform
      nrf5_atflags
      nrf5_atomic
      nrf5_balloc
      nrf5_balloc_fwd
      nrf5_ble_common
      nrf5_ble_gq
      nrf5_cli_fwd
      nrf5_config
      nrf5_delay
      nrf5_ext_fprintf
      nrf5_log_fwd
      nrf5_mdk
      nrf5_memobj
      nrf5_memobj_fwd
      nrf5_nrfx_common
      nrf5_nrfx_hal
      nrf5_queue
      nrf5_sdh
      nrf5_section
      nrf5_soc
      nrf5_strerror
    )
  endif()
endif()
