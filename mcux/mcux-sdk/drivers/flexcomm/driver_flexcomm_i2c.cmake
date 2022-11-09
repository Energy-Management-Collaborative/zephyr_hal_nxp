#Description: FLEXCOMM I2C Driver; user_visible: True
include_guard(GLOBAL)
message("driver_flexcomm_i2c component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/fsl_i2c.c
)

# Enable I2C timeout recovery and limit status polling
target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PRIVATE
    FSL_FEATURE_I2C_TIMEOUT_RECOVERY=y
    I2C_RETRY_TIMES=3
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
)


include(driver_flexcomm)
