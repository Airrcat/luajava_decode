# luajava_decode
decode / decrypt .lua file (encrypted by luajava)  
尝试对安卓中，被luajava加密的lua文件进行解码
测试样例是DASCTF 2024 10月的re3.
如果解不出来，可能是加密算法不匹配，可去libluajava.so中寻找luaL_loadbufferx函数或其它函数找加密算法。
test command:
```cmd
python .\decode_luajava_android.py -d .\test\
```
