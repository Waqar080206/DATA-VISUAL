@echo off

del abc.txt 2>nul

:loop
tasklist >> abc.txt

for /f %%A in ('find /c /v "" ^< abc.txt') do set count=%%A

if %count% GEQ 10000 goto done

timeout /t 5 /nobreak >nul
goto loop

:done
echo.
echo Data collection completed.
pause