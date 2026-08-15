<#
.SYNOPSIS
    Ordena e remove duplicatas do SambaTu.txt (ou de outro arquivo indicado).
    Compatível com Windows PowerShell 5.1 e PowerShell 7+, sem dependencias externas.

.PARAMETER Path
    Caminho do arquivo a ser ordenado. Padrão: SambaTu.txt na raiz do repositório.

.EXAMPLE
    .\sort-wordlist.ps1
    .\sort-wordlist.ps1 -Path C:\listas\outra.txt
#>
[CmdletBinding()]
param(
    [string]$Path = (Join-Path $PSScriptRoot "..\SambaTu.txt")
)

$ErrorActionPreference = "Stop"
$resolvedPath = (Resolve-Path -LiteralPath $Path).ProviderPath

$rawLines = [System.IO.File]::ReadAllLines($resolvedPath)
$before = $rawLines.Count

# Normaliza CRLF/LF e descarta linhas em branco.
$lines = $rawLines | ForEach-Object { $_.TrimEnd("`r") } | Where-Object { $_.Length -gt 0 }

# Deduplica e ordena por ordinal (equivalente ao "LC_ALL=C sort -u" do Linux).
$unique = New-Object 'System.Collections.Generic.HashSet[string]' ([System.StringComparer]::Ordinal)
foreach ($line in $lines) { [void]$unique.Add($line) }

$sorted = [string[]]$unique
[Array]::Sort($sorted, [System.StringComparer]::Ordinal)

# Grava com LF e UTF-8 sem BOM, mantendo o arquivo consistente com o gerado no Linux/CI.
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($resolvedPath, ($sorted -join "`n") + "`n", $utf8NoBom)

Write-Host "Arquivo ordenado: $resolvedPath ($before -> $($sorted.Count) linhas)"
