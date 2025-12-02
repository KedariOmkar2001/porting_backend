from Crypto.Cipher import AES
import base64

def pad(data: bytes) -> bytes:
    padding_length = 16 - (len(data) % 16)
    return data + bytes([padding_length]) * padding_length

def encrypt_aes_ecb_pkcs5(text: str, key: str) -> str:
    key_bytes = key.encode("utf-8")
    cipher = AES.new(key_bytes, AES.MODE_ECB)

    padded = pad(text.encode("utf-8"))
    encrypted = cipher.encrypt(padded)

    return base64.b64encode(encrypted).decode("utf-8")

def unpad(data: bytes) -> bytes:
    padding_len = data[-1]
    return data[:-padding_len]

def decrypt_aes_ecb_pkcs5(ciphertext: str, key: str) -> str:
    key_bytes = key.encode("utf-8")
    cipher = AES.new(key_bytes, AES.MODE_ECB)

    decoded_data = base64.b64decode(ciphertext)
    decrypted = cipher.decrypt(decoded_data)

    return unpad(decrypted).decode("utf-8")

# Example usage:
SECRETKEY = "JZhqElopWrbkAisF"
ciphertext = encrypt_aes_ecb_pkcs5("rl134u@gmail.com", SECRETKEY)
print(ciphertext)
print("---")
print(decrypt_aes_ecb_pkcs5(ciphertext, SECRETKEY))

