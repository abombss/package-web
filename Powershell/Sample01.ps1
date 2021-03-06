CLS
$items = @(1, 2, @(3,4,5), 6)

function Test-Array { if ( $Args[0] -is [system.array] ) { $true } }

foreach($v in $items) {
    Write-Output ("v: " + $v)
    Write-Output ("   [" + ($v.GetType().BaseType ) + "]: " + ($v -is [system.array]))
    Write-Output ("     Test-array: " + (Test-Array($v)))
}

function Get-SubItems {
    params($result)
    
    
}

function Get-Items {
    param($list, $result)
    
    if(!$result) {
        $result = @()
    }
   
    
    if($list -is [system.array]) {
        foreach($i in $list) {
            $result += "Is list"
            $result += Get-Items $i   
        }
    }
    else {
        $result += $list
    }
    
    return $result
}

Write-Output "******************************************"
Get-Items $items

