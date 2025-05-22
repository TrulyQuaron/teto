Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' get folder where THIS vbs script lives
scriptFolder = fso.GetParentFolderName(WScript.ScriptFullName)

' build the command to run mshta with your hta in the same folder
command = "mshta.exe """ & scriptFolder & "\tetovirus.hta"""

' run the command (0 = hidden window, False = don’t wait)
WshShell.Run command, 0, False