'
'   https://stackoverflow.com/questions/38779381/how-to-use-ansi-escape-sequences-with-cscript-on-windows-10
'
'       HKEY_CURRENT_USER\Console
'           VirtualTerminalLevel = 1
'
'   Or... compile program that is in stackoverflow thread
'
'      See also https://superuser.com/questions/413073/windows-console-with-ansi-colors-handling/1300251#1300251
'

WScript.Echo("[7mReverse[0m Normal")
WScript.stdout.WriteLine("[7mReverse[0m Normal")
