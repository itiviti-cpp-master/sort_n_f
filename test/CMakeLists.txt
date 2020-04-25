cmake_minimum_required(VERSION 3.13)

set(PROJECT_NAME sort_test)
project(${PROJECT_NAME})

# Data files
file(GLOB INPUT_FILES ${PROJECT_SOURCE_DIR}/etc/*.txt)
list(JOIN INPUT_FILES " " TEST_DATA)

# Tests
enable_testing()
add_test(
    NAME sort
    COMMAND sh -c "${PROJECT_SOURCE_DIR}/test.sh $<TARGET_FILE:sort> ${TEST_DATA}"
    )
add_test(
    NAME sort-unique
    COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-f.sh $<TARGET_FILE:sort> ${TEST_DATA}"
    )
add_test(
    NAME sort-reverse
    COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-n.sh $<TARGET_FILE:sort> ${TEST_DATA}"
    )
add_test(
    NAME sort-unique-reverse
    COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-nf.sh $<TARGET_FILE:sort> ${TEST_DATA}"
    )
