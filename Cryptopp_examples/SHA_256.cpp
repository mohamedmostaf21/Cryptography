// header files for cryptopp library
#include <cryptopp/sha.h>
#include <cryptopp/hex.h>
#include <cryptopp/secblock.h>
#include "cryptopp/files.h"

// header files for standard C++ library
#include <iostream>

// namespaces
using namespace CryptoPP;

/*
In Sha256
    hash value is called digest
    digest size = 32 byte
*/

int main() 
{
    /**************************************************
    *                     plaintext                   *
    **************************************************/
    std::string message = "Hello, World!";
    

    /**************************************************
    *                     hashing                     *
    **************************************************/

    //In the context of cryptography and hashing algorithms,
    //a "digest" refers to the fixed-size output produced by a hash function 
    //when applied to a variable-size input (such as a message or data)

    SecByteBlock digest(SHA256::DIGESTSIZE);
    SHA256 hash;
    hash.CalculateDigest(digest, (byte*)message.c_str(), message.length());


    /***************************************************
    *                  print digest                    *
    ***************************************************/
    // Create a HexEncoder object to output to console
    HexEncoder encoder(new FileSink(std::cout)); 
    
    // Print the digest in hexadecimal format
    std::cout << "digest: ";
    //Put function, in this case, is responsible for processing the binary data in digest and updating the HexEncoder accordingly.
    encoder.Put(digest, digest.size());
    encoder.MessageEnd();
    std::cout << std::endl;

    return 0;
}