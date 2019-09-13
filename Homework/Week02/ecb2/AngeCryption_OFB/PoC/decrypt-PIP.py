from Crypto.Cipher import AES

with open('combined.png', "rb") as f:
	d = f.read()

d = AES.new('OFB_AngeCryption', AES.MODE_OFB, '}C\xd3j`*\xcf=\xd7q\xe64\xdcD&\xc3').decrypt(d)

with open("dec-" + "duckduckgo.png", "wb") as f:
	f.write(d)