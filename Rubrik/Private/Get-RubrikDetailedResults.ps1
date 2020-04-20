﻿function Get-RubrikDetailedResults($result, $cmdlet) {
    <#
        .SYNOPSIS
        Function to retrieve more detailed results

        .DESCRIPTION
        This function takes a set of results and loops through them performing {id} based queries to retrieve more detailed information

        .PARAMETER result
        Array of objects to retrieve detailed results on

        .PARAMETER cmdlet
        Cmdlet to utilize in order to get detailed results.

        .EXAMPLE
        Get-RubrikDetailedResults -Results $results

        This will take an array of objects ($results) and return more detailed information for each element.
    #>
    Write-Host "in detailed"
    for ($i = 0; $i -lt @($result).Count; $i++) {
        $Percentage = [int]($i/@($result).count*100)
        Write-Progress -Activity "DetailedObject queries in Progress, $($i+1) out of $(@($result).count)" -Status "$Percentage% Complete:" -PercentComplete $Percentage
        #Get-RubrikVM -id $result[$i].id
      }

}