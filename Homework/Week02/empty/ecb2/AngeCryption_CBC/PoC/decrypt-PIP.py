from Crypto.Cipher import AES

with open('combined.png', "rb") as f:
	d = f.read()

d = AES.new('CBC_can_fail_too', AES.MODE_CBC, '\xc0P\xb6\xe2\xa5\xb2w?\x076\xd8\xc7Y\xc9\xd7<').decrypt(d)

with open("dec-" + "duckduckgo.png", "wb") as f:
	f.write(d)