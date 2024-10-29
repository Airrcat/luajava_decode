f = open("../assets/root.lua", "rb")
buf = f.read()
size = len(buf)


def decode(buf: bytes, size: int) -> bytes:
    result = [0]*size
    result[0] = 0x1b
    key = 0
    for i in range(1, size):
        key += size
        key %= 255
        result[i] = key ^ buf[i]
    return bytes(result)


buf = decode(buf, size)
open(f.name+".dec", "wb").write(buf)
