---
external help file: Rubrik-help.xml
Module Name: Rubrik
online version: https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/remove-rubrikunmanagedobject
schema: 2.0.0
---

# Remove-RubrikUnmanagedObject

## SYNOPSIS
Removes one or more unmanaged objects known to a Rubrik cluster

## SYNTAX

```
Remove-RubrikUnmanagedObject [-id] <String> [-Type] <String> [-Force] [[-Server] <String>] [[-api] <String>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-RubrikUnmanagedObject cmdlet is used to remove unmanaged objects that have been stored in the cluster
In most cases, this will be on-demand snapshots that are associated with an object (virtual machine, fileset, database, etc.)

## EXAMPLES

### EXAMPLE 1
```
Get-RubrikUnmanagedObject | Remove-RubrikUnmanagedObject
```

This will remove all unmanaged objects from the cluster

### EXAMPLE 2
```
Get-RubrikUnmanagedObject -Type 'WindowsFileset' | Remove-RubrikUnmanagedObject -Confirm:$false
```

This will remove any unmanaged objects related to filesets applied to Windows Servers and supress confirmation for each activity

### EXAMPLE 3
```
Get-RubrikUnmanagedObject -Status 'Unprotected' -Name 'Server1' | Remove-RubrikUnmanagedObject
```

This will remove any unmanaged objects associated with any workload named "Server1" that is currently unprotected

### EXAMPLE 4
```
Get-RubrikUnmanagedObject -Name 'Server1' -Server1 | Remove-RubrikUnmanagedObject -Force
```

This will remove any unmanaged objects associated with any workload named "Server1" that is currently unprotected.
If snapshots are currently assigned to a retention SLA they will be automatically unprotected and deleted.

## PARAMETERS

### -id
The id of the unmanaged object.

```yaml
Type: String
Parameter Sets: (All)
Aliases: objectId

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Type
The type of the unmanaged object.
This may be VirtualMachine, MssqlDatabase, LinuxFileset, or WindowsFileset.

```yaml
Type: String
Parameter Sets: (All)
Aliases: objectType

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Forces object to be removed regardless of SLA Domain assignment.
From Rubrik CDM 5.0 and above, an unmanaged object cannot be deleted if snapshots exist with an SLA Domain assigned to them.
The -Force parameter will override this allowing the object, and the snapshots, to be deleted.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
Rubrik server IP or FQDN

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: $global:RubrikConnection.server
Accept pipeline input: False
Accept wildcard characters: False
```

### -api
API version

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: $global:RubrikConnection.api
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Written by Chris Wahl for community usage
Twitter: @ChrisWahl
GitHub: chriswahl

## RELATED LINKS

[https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/remove-rubrikunmanagedobject](https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/remove-rubrikunmanagedobject)

