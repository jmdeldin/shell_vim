(*
Name:    ShellVim
Desc:    An AppleScript droplet that opens files from Finder
         in Vim (Terminal.app).
Author:  Jon-Michael Deldin <dev@jmdeldin.com>
URI:     http://github.com/jmdeldin/shell_vim
*)

on open dropped_files
    set file_list to ""
    repeat with this_file in dropped_files
        set file_list to file_list & " " & quoted form of (POSIX path of this_file)
    end repeat

    tell application "Terminal"
        activate
        tell application "System Events" to tell process "Terminal" to keystroke "t" using command down
        do script with command "vim -o " & file_list in selected tab of the front window
    end tell
end open

