@echo off
REM Define variables
set keyvault_name=o0288yjn8zjur25ofjy5fil6
set secret_name=1034-1-clientSecret

REM Fetch the latest version of the secret
for /f "delims=" %%i in ('az keyvault secret show --vault-name %keyvault_name% --name %secret_name% --query "id" -o tsv') do (
    echo Latest Version ID: %%i
)
