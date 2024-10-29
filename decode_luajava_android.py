
from importlib.util import decode_source
import os
import sys


def decode(buf: bytes, size: int) -> bytes:
    result = [0]*size
    result[0] = 0x1b
    key = 0
    for i in range(1, size):
        key += size
        key %= 255
        result[i] = key ^ buf[i]
    return bytes(result)


if len(sys.argv) != 3:
    print(f"Your option is incorrect, please use:")
    print("     -f target for single file's luajava decode.")
    print("     -d target for a directory's luajava decode.")
    exit()

mode = sys.argv[1]
if mode == "-f":  # 单项模式
    f = open(sys.argv[2], "rb")
    buf = f.read()
    buf = decode(buf, len(buf))
    open(f.name+"_luajava.dec", "wb").write(buf)
    pass
elif mode == "-d":  # 目录模式
    print(f"search in {sys.argv[2]}")
    for dirpath, dirnames, filenames in os.walk(sys.argv[2]):
        for filename in filenames:
            if filename[-4:] == ".lua":
                filepath = os.path.join(dirpath, filename)
                print(f"find lua file: {filename}")
                buf = open(filepath, "rb").read()
                buf = decode(buf, len(buf))
                open(filepath+"_luajava.dec", "wb").write(buf)
    pass
else:
    print(f"Your option:{mode} is incorrect, please use:")
    print("     -f target for single file's luajava decode.")
    print("     -d target for a directory's luajava decode.")
