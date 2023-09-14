#Set oh-my-posh default prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/clean-detailed.omp.json" | Invoke-Expression
Import-Module Terminal-Icons
# Set-PSReadLineOption -PredictionViewStyle ListView


#ALIAS 
Set-Alias vim nvim
Set-Alias g git
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias lees 'C:\Program Files\Git\usr\bir\less.exe'

Function Update-File #Nomeclatura para touch
{
    $file = $args[0]
    if($file -eq $null) {
        throw "No filename supplied"
    }

    if(Test-Path $file)
    {
        (Get-ChildItem $file).LastWriteTime = Get-Date
    }
    else
    {
        New-Item $file
    }
}

Set-Alias touch Update-File
