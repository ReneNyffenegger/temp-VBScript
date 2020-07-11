'
'     https://ss64.com/vb/execute.html
'

Dim X   ' Declare X in global scope.
X = "Global"   ' Assign global X a value.

Sub Proc1   ' Declare procedure.
   Dim X    ' Declare X in local scope.
   X = "changed in Proc1"   ' Assign local X a value.
            ' The Execute statement here creates a
            ' procedure that, when invoked, prints X.
            ' It print the global X because Proc2
            ' inherits everything in global scope.
   Execute "Sub Proc2: wscript.echo ""Proc2 inner, x = "" &  X: End Sub"
   wscript.echo Eval("X")   ' Print local X.
   Proc2    ' Invoke Proc2 in Proc1's scope.
End Sub

Proc1   ' Invoke Proc1.
'Proc2   ' This line will cause a vbscript runtime error since 
         ' Proc2 is unavailable outside Proc1.

Execute "Sub Proc2: wscript.echo ""Proc2 outer, x = "" & X: End Sub"
Proc2   ' This invocation succeeds because Proc2 is now available globally.
