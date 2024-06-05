function get-leap-year {
    param(
            [Parameter(Mandatory=$true)]
            [int]$year
        )
        if ($year % 4 -eq 0 -and ($year % 100 -ne 0 -or $year % 400 -eq 0)) {
            return $true
        } else {
            return $false
        }
    }
    $year = Read-Host "Geeft een jaartal in."
    $leap = get-leap-year -year $year
    if ($leap) {
        Write-Output "Het jaar $year is een schrikkeljaar."
    } else {
        Write-Output "Het jaar $year is GEEN schrikkeljaar."
    }
