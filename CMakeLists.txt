cmake_minimum_required(VERSION 3.5)
project(Demo)
# Specify the include and library directories for Crypto++
include_directories(usr/include/crypto++)
link_directories(usr/lib/x86_64-linux-gnu)
## Add your executable and link with Crypto++ library
add_executable(generate_public_private_keys Cryptopp_examples/PUK_PRK_generation.cpp)
target_link_libraries(generate_public_private_keys crypto++)

# Add the executable file to the Executables_generation folder
set_target_properties(generate_public_private_keys PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "../Executables_generation/Keys"
)


add_executable(hash_value Cryptopp_examples/SHA_256.cpp)
target_link_libraries(hash_value crypto++)
# Add the executable file to the Executables_generation folder
set_target_properties(hash_value PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "../Executables_generation/SHA_256"
)


add_executable(Enc_Dec_RSA Cryptopp_examples/RSA_2048.cpp)
target_link_libraries(Enc_Dec_RSA crypto++)
# Add the executable file to the Executables_generation folder
set_target_properties(Enc_Dec_RSA PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "../Executables_generation/RSA_2048"
)


add_executable(AES_CBC_128 Cryptopp_examples/AES_CBC_128.cpp)
target_link_libraries(AES_CBC_128 crypto++)
# Add the executable file to the Executables_generation folder
set_target_properties(AES_CBC_128 PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "../Executables_generation/AES_CBC_128"
)


add_executable(Sign_Verify_ECDSA Cryptopp_examples/ECDSA_SHA3_256.cpp)
target_link_libraries(Sign_Verify_ECDSA crypto++)
# Add the executable file to the Executables_generation folder
set_target_properties(Sign_Verify_ECDSA PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "../Executables_generation/ECDSA_SHA3_256"
)