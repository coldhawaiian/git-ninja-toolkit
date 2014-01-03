@echo off

REM mklink <link> <target>
REM mklink /d <link> <target> for directories

mklink ^
    "%homepath%\.bashrc" ^
    "%homepath%\Documents\github\git-ninja-toolkit\msysgit\.bashrc"

mklink ^
    "%homepath%\.gitconfig" ^
    "%homepath%\Documents\github\git-ninja-toolkit\msysgit\.gitconfig"

mklink ^
    "%homepath%\.gitk" ^
    "%homepath%\Documents\github\git-ninja-toolkit\msysgit\.gitk"

mklink ^
    "%homepath%\_vimrc" ^
    "%homepath%\Documents\github\git-ninja-toolkit\msysgit\_vimrc"

echo ...
echo Symlink setup complete.
