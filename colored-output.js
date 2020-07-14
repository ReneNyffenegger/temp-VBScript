//
//  https://stackoverflow.com/questions/38779381/how-to-use-ansi-escape-sequences-with-cscript-on-windows-10
//
//      HKEY_CURRENT_USER\Console
//          VirtualTerminalLevel = 1
//
//   Or... compile program that is in stackoverflow thread
//
//      See also https://superuser.com/questions/413073/windows-console-with-ansi-colors-handling/1300251#1300251
//
//


//
//  Following two lines: workaround if registry was not changed.
//
var ps = WScript.CreateObject("WScript.Shell").Exec("powershell.exe -nop -ep Bypass -c \"exit\"");
while (ps.Status == 0) WScript.Sleep(50);

WScript.Echo('\x1B[7mReverse\x1B[0m Normal')
WScript.stdout.WriteLine('\x1B[7mReverse\x1B[0m Normal')
