# Evado
CTF Tools for Simple AV Evasion

<p align="center"><img width="680" alt="Screenshot 2022-08-27 at 08 42 21" src="https://user-images.githubusercontent.com/99042766/187020504-99ff49d2-cf3b-4975-9e2d-69c4ea588b91.png"></p>


### SimpleXor
Simple ShellCode Xor (NET Core 6.0)

### SimpleLoader
Simple Xor ShellCode Loader (NET Core 6.0)

### PascalXORInject
Simple Xor ShellCode Injector (Pascal) <br>
Use Lazarus to compile. <br>
Add $00 at the end of your shellcode. <br>
Shellcode needs to be XORED. <br>

### UniversalisRev
Simple TcpReverser (NET Core 6.0) ***compatible with cross-compilation***. <br> 
Inside there are two Publishing profiles (Windows x64 and Linux x64). <br> Should also be compatible with MacOS and ARM architecture (Not MacOS ARM).
<br>
Compile it for the operating system you need.
<br><br>
Usage: <br>
Program will try to connect back based on its name.
You can specify the binary or the command to execute and send over Tcp by changing the last part of the name.<br>
<br> Examples: <br>
`UniversalisRev_127.0.0.1_443_cmd.exe` <br>
`UniversalisRev_127.0.0.1_443_whoami.exe` <br>
`UniversalisRev_127.0.0.1_443_-bin-bash`
