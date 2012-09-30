@echo off
setlocal enabledelayedexpansion 
set numero= 
for /f "delims=" %%a in (numero_nome.txt) do ( 
set appoggio=%%a 
set numero=!appoggio!
)

copy "C:\path\documento_originale.doc" "C:\path\di\destinazione"
rename "C:\path\di\destinazione\documento_copiato.docx" "Nome File %numero%.docx"

SET /a numero = %numero%+1

echo %numero% > "C:\path\da\tenere\al\sicuro\numero_nome.txt"