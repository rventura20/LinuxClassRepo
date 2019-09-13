#Gyn(vael)Cryption
#generating a valid file via bruteforcing
#as suggested by Gynvael Coldwind

#Ange Albertini 2014, BSD Licence

# modified to use OFB mode with IV=0
# and some other tweaks
# by Philippe Teuwen 2014

import sys
from Crypto.Cipher import AES

JPGSIG = "\xff\xd8"
JPGCOM = "\xFF\xFE"

source_file, target_file, result_file = "source.pdf", "source.jpg", "gyncryption_ofb.pdf"

BS = 16
pad = lambda s: s + (BS - len(s) % BS) * chr(BS - len(s) % BS)
START=0
END=0x100000000
if len(sys.argv) >= 3:
  PART=END / int(sys.argv[2])
  START=int(sys.argv[1]) * PART
  END=(int(sys.argv[1]) + 1) * PART

def brute(s, h, BS=16):
    import struct
    import atexit
    import marshal
    p = s[:BS]
    i = START
    print "Scanning from key %08X to key %08X" % (i, END)


    while (i<END):
        key = "@doegox_%08x" % i
        i += 1
        if i % 0x1000000 == 0:
            print "Running... key=", key
        c = AES.new(key, AES.MODE_OFB, '\x00'*16).encrypt(p)
        if c.startswith(h):
            print "key=", key
            print "c=", c.encode('hex')
            offset = ((ord(c[4])<<8)+ord(c[5]))
            print "offset=%04X (%i)" % (offset, offset)
            return (key, offset)
    return None

with open(source_file, "rb") as f:
    s = pad(f.read())
print "%s opened, len=%i" % (source_file, len(s))

# Brute_forced:
#key = "@doegox 5f32c6e5"
#offset = 0xA42F = 42031
START=0x5f32c6e5

key, offset=brute(s, JPGSIG + JPGCOM)
#sys.exit(0)
assert offset > len(s)
print "We found a key allowing to append any JPEG! Let's use %s" % target_file

with open(target_file, "rb") as f:
    t = pad(f.read())

result = AES.new(key, AES.MODE_OFB, '\x00'*16).encrypt(s)

result = result + "\0" * (offset - len(result) + 4)

result = result + t[2:] # skipping the sig
result = pad(result)

result = AES.new(key, AES.MODE_OFB, '\x00'*16).decrypt(result)

with open(result_file, "wb") as f:
    f.write(result)

with open("decrypt-gyn_ofb.py", "wb") as f:
    f.write("""from Crypto.Cipher import %(AES)s

with open(%(source)s, "rb") as f:
	d = f.read()

d = AES.new(%(key)s, AES.MODE_OFB, "\\x00"*16).encrypt(d)

with open("dec-" + %(target)s, "wb") as f:
	f.write(d)""" % {
        'AES': AES.__name__.split(".")[-1],
        'key':`key`,
        'source':`result_file`,
        'target':`target_file`}
    )
