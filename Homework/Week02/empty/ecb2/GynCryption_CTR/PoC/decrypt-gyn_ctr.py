from Crypto.Cipher import AES
from Crypto.Util import Counter

with open('gyncryption_ctr.pdf', "rb") as f:
	d = f.read()

ctr = Counter.new(128, initial_value=0)
d = AES.new('@doegox_5f32c6e5', AES.MODE_CTR, counter=ctr).encrypt(d)

with open("Modes.jpg", "wb") as f:
	f.write(d)