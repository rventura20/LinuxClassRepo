from Crypto.Cipher import AES

with open('gyncryption_ofb.pdf', "rb") as f:
	d = f.read()

d = AES.new('@doegox_5f32c6e5', AES.MODE_OFB, "\x00"*16).encrypt(d)

with open("OutputFeedbackMode.jpg", "wb") as f:
	f.write(d)