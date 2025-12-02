from Crypto.Cipher import AES
import base64

SECRET_KEY = "JZhqElopWrbkAisF".encode("utf-8")

def encrypt(plain_text: str) -> str:
    cipher = AES.new(SECRET_KEY, AES.MODE_ECB)
    padded = plain_text.encode("utf-8")
    padded = padded + bytes([16 - len(padded) % 16]) * (16 - len(padded) % 16)
    encrypted = cipher.encrypt(padded)
    return base64.b64encode(encrypted).decode("utf-8")

def decrypt(encrypted_text: str) -> str:
    cipher = AES.new(SECRET_KEY, AES.MODE_ECB)
    encrypted_bytes = base64.b64decode(encrypted_text)
    decrypted_padded = cipher.decrypt(encrypted_bytes)
    pad_len = decrypted_padded[-1]
    decrypted = decrypted_padded[:-pad_len]
    return decrypted.decode("utf-8")


print(encrypt("on2xc40@gmail.com"))

encrypted_email = encrypt("on2xc40@gmail.com")

print("Decrypted Text:"+decrypt(encrypted_email))

decrypted_email = decrypt("fCHi9RGaSsucdvmzJMImjg==")
print("Direct Decrypt:"+decrypted_email)

raw = base64.b64decode("fCHi9RGaSsucdvmzJMImjg==")
print(len(raw), raw.hex())

