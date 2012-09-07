Dim fso: Set fso = CreateObject("Scripting.FileSystemObject")
Dim objShell: Set objShell = CreateObject("Shell.Application")

fontsDirectory = fso.GetAbsolutePathName(".fonts")

For Each font in objShell.NameSpace(fontsDirectory).Items()
   font.InvokeVerb("Install")
Next

