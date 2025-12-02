param([string[]]$Args)
if (Test-Path ".env") {
  Get-Content ".env" | Where-Object { $_ -match "^\s*[^#].+" } | ForEach-Object {
    $kv = $_.Split('='); if ($kv.Length -ge 2) { $name = $kv[0].Trim(); $value = ($kv[1..($kv.Length-1)] -join '=').Trim('"'); if ($name) { $env:$name = $value } }
  }
}
node "dist/cli.js" $Args
