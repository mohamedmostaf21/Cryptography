#include <iostream>
#include <cryptopp/asn.h>
#include <cryptopp/osrng.h>
#include <cryptopp/ecp.h>
#include <cryptopp/sha3.h>
#include <cryptopp/oids.h>
#include <cryptopp/eccrypto.h>
#include <cryptopp/oids.h>
#include <cryptopp/hex.h>
#include "cryptopp/files.h"
using namespace CryptoPP;

int main() {
    // Step 2: Generate a key pair for the ECDSA algorithm
    AutoSeededRandomPool prng;

    // Use the secp256r1 elliptic curve domain parameters (replace with your preferred curve)
    ECDSA<ECP, SHA3_256>::PrivateKey privateKey;
    ECDSA<ECP, SHA3_256>::PublicKey publicKey;

    privateKey.Initialize(prng, ASN1::secp256r1());
    privateKey.MakePublicKey(publicKey);

    // Step 3: Sign a message using the private key
    std::string message = "Hello, Crypto++!";
    ECDSA<ECP, SHA3_256>::Signer signer(privateKey);

    SecByteBlock signature(signer.MaxSignatureLength());
    size_t signatureLength = signer.SignMessage(prng, (const byte*)message.data(), message.size(), signature);

    // Step 4: Print the signature using HexEncoder
    HexEncoder encoder(new FileSink(std::cout));

    std::cout << "Signature (Hex): ";
    encoder.Put(signature, signatureLength);
    encoder.MessageEnd();
    std::cout << std::endl;

    // Step 5: Verify the signature using the public key
    ECDSA<ECP, SHA3_256>::Verifier verifier(publicKey);
    bool result = verifier.VerifyMessage((const byte*)message.data(), message.size(), signature, signatureLength);

    if (result) {
        std::cout << "Signature is valid." << std::endl;
    } else {
        std::cout << "Signature is invalid." << std::endl;
    }

    return 0;
}
