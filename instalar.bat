@echo off
title Ata IA - Instalador
echo ============================================
echo   ATA IA - instalacao no Windows
echo ============================================
echo.

set PYEXE=
where python >nul 2>nul && set PYEXE=python
if not defined PYEXE (
    where py >nul 2>nul && set PYEXE=py -3
)
if not defined PYEXE (
    echo [ERRO] Python nao encontrado.
    echo Instale em https://www.python.org/downloads/
    echo IMPORTANTE: marque "Add Python to PATH" na instalacao.
    pause
    exit /b 1
)

echo [1/3] Criando ambiente virtual...
if not exist "%~dp0venv" %PYEXE% -m venv "%~dp0venv"

echo [2/3] Instalando dependencias...
"%~dp0venv\Scripts\python.exe" -m pip install --quiet --upgrade pip
"%~dp0venv\Scripts\python.exe" -m pip install --quiet -r "%~dp0requirements.txt"

echo [3/3] Criando atalhos...
set SHORTCUT=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\AtaIA.bat
echo @echo off > "%SHORTCUT%"
echo start "" "%~dp0venv\Scripts\pythonw.exe" "%~dp0main.py" >> "%SHORTCUT%"

powershell -NoProfile -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut([Environment]::GetFolderPath('Desktop') + '\Ata IA.lnk'); $s.TargetPath = '%~dp0venv\Scripts\pythonw.exe'; $s.Arguments = '\"%~dp0main.py\"'; $s.WorkingDirectory = '%~dp0'; $s.IconLocation = '%~dp0ata.ico'; $s.Save()"

echo.
echo ============================================
echo   Instalacao concluida!
echo   O app abrira agora - cole sua chave Groq
echo   (a mesma do Ditado IA / Captura IA).
echo   Atalho padrao: CTRL+SHIFT+R
echo ============================================
start "" "%~dp0venv\Scripts\pythonw.exe" "%~dp0main.py"
exit /b 0
