$env:LC_ALL='C.UTF-8'
[System.Console]::InputEncoding = [System.Console]::OutputEncoding = [System.Text.Encoding]::UTF8

[Alias]
	Set-Alias g git
	Set-Alias np notepad.exe
	Set-Alias less 'C:\Program Files\Git\usr\bin\less'
	Set-Alias tig 'C:\Program Files\Git\usr\bin\tig'
	Set-Alias grep 'C:\Program Files\Git\usr\bin\grep'
	Set-Alias head 'C:\Program Files\Git\usr\bin\head'
	Set-Alias awk 'C:\Program Files\Git\usr\bin\awk'

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Tab -Function Complete

function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p > "
}
