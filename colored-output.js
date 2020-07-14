//
//  https://stackoverflow.com/questions/38779381/how-to-use-ansi-escape-sequences-with-cscript-on-windows-10
//
//      HKEY_CURRENT_USER\Console
//          VirtualTerminalLevel = 1
//
//   Or... compile program that is in stackoverflow thread
//
//
WScript.Echo('\x1B[7mReverse\x1B[0m Normal')
WScript.stdout.WriteLine('\x1B[7mReverse\x1B[0m Normal')
