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
        NAME sort_f
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-f.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_n
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-n.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_nf
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-nf.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_fn
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-fn.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_n_f
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-n-f.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_f_n
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-f-n.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_ignore_case
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-ignore-case.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_numeric
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-numeric.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_ignore_case_numeric
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-ignore-case-numeric.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_stdin
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-stdin.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_f_stdin
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-f-stdin.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_n_stdin
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-n-stdin.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)
add_test(
        NAME sort_nf_stdin
        COMMAND sh -c "${PROJECT_SOURCE_DIR}/test-nf-stdin.sh $<TARGET_FILE:sort> ${TEST_DATA}"
)