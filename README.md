# Dot-ish File(s) for Windows

Despite Windows not having true "."-files, there is a way to enhance your command line with some extra sugar.

Enter [DOSKEY](http://ss64.com/nt/doskey.html).

Just make a shortcut to `cmd.exe` with an argument that pulls in a `.cmd` (can't be a batch file) file with a bunch of `DOSKEY` commands:

Ex. `C:\Windows\System32\cmd.exe /K C:\mystuff\doskeys.cmd`

Each DOSKEY command acts as a macro/alias. This file also pulls in a separate file (`doskeys-priv.cmd`) with variables set to private directories that don't need to be tracked and don't need to be public ;P

_Note_: a lot of commands in here, like `curl` and `choco`, are assumed to be installed and in your PATH already, so this won't work out-of-the-box.