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

option explicit


'
'   Workaraound if registry was not changed.
'
dim ps
set ps = CreateObject("WScript.Shell").Exec("powershell.exe -nop -ep Bypass -c ""exit""")
while ps.Status = 0
      wScript.sleep 50
wend


WScript.Echo("[7mReverse[0m Normal")
WScript.stdout.WriteLine("[7mReverse[0m Normal")
WScript.Echo("[1;31mRed[0m Normal")
