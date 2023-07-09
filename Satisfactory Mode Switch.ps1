$dest = Get-Item -Path "D:\Steam\steamapps\appmanifest_526870.acf"
$EA = Get-Item -Path ".\appmanifest_526870.EA"
$EX = Get-Item -Path ".\appmanifest_526870.EX"

$process = Get-Process steam -ErrorAction SilentlyContinue

function ReadKeyIs($key) {
    $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").Character -eq $key
}

while ($process) {
    Write-Output "Close Steam and press any key to continue..."

    if (ReadKeyIs(0)) {
        exit
    }

    $process = Get-Process steam -ErrorAction SilentlyContinue
}

$isEA = (Select-String -Path $dest -Pattern "SatisfactoryEA").Matches
$isEX = (Select-String -Path $dest -Pattern "SatisfactoryEX").Matches

if ($isEA) {
    Write-Output "Switch to Experimental? [y/n]"
    
    if (ReadKeyIs('y')) {
        Copy-Item -Path $EX -Destination $dest
        Write-Output "Satisfactory is now on Experimental!"
    }

    exit
}

if ($isEX) {
    Write-Output "Switch to Early Access? [y/n]"
    
    if (ReadKeyIs('y')) {
        Copy-Item -Path $EA -Destination $dest
        Write-Output "Satisfactory is now on Early Access!"
    }

    exit
}

