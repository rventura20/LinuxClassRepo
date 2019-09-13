from Crypto.Cipher import AES
from Crypto.Util import Counter

with open('combined.png', "rb") as f:
	d = f.read()

ctr = Counter.new(128, initial_value=int("\xa9D\xd2\x93\xa6:C\r1\x07t'\xa4\x88\x8d~".encode('hex'), 16))
d = AES.new('CTR_AngeCryption', AES.MODE_CTR, counter=ctr).decrypt(d)

with open("dec-" + "duckduckgo.png", "wb") as f:
	f.write(d)