﻿#
# Module manifest for module 'CloudEndure'
#
# Generated by: Michael Haken
#
# Generated on: 8/17/2017
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'CloudEndure.psm1'

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '47acf3cb-ade0-4cbe-8068-4025f0b2f4e4'

# Author of this module
Author = 'Michael Haken'

# Company or vendor of this module
CompanyName = 'BAMCIS'

# Copyright statement for this module
Copyright = '(c) 2017 BAMCIS. All rights reserved.'

# Description of the functionality provided by this module
Description = 'A wrapper for the CloudEndure migration/DR tool APIs.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @("BAMCIS.Common", "BAMCIS.DynamicParam")

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
	# Profiles & Sessions
	"New-CEProfile", "Get-CEProfile", "Update-CEProfile", "Remove-CEProfile", "New-CESession", "Get-CESession", "Remove-CESession",
	
	# Blueprints
	"New-CEBlueprint", "Get-CEBlueprint", "Set-CEBlueprint",
	
	# Replication Configuration
	"Get-CEMachineRecoveryPoints", "Get-CEMachineBandwidth", "Set-CEMachineBandwidth", "New-CEReplicationConfiguration", "Get-CEReplicationConfiguration", 
	"Set-CEReplicationConfiguration",

	# User
	"Get-CEUser", "Set-CEConsolePassword", "Set-CEEmailNotifications",

	# Accounts
	"Get-CEAccount", "Get-CEAccountExtendedInfo",

	# Licenses
	"Get-CELicense",

	# Projects
	"Get-CEProject", "Set-CEProject", "New-CEProject", "Remove-CEProject", "Set-CEProjectSourceRegion"

	# Cloud Credentials
	"New-CECloudCredential", "Get-CECloudCredential", "Set-CECloudCredential",

	# Cloud
	"Get-CECloud", "Get-CECloudRegion", "Get-CETargetCloudRegion", "Get-CESourceCloudRegion", "Remove-CERegion",
	"Set-CERegion"
	 
	# Machines
	"Get-CEMachine", "Remove-CEMachine", "Get-CEMachineReplica", "Set-CEMachine",

	# Actions
	"New-CEInstallationToken", "Get-CEInstallationToken", "Start-CEDataReplication", "Stop-CEDataReplication",
	"Invoke-CEReplicaCleanup", "Get-CEJobs", "Move-CEMachine", "Invoke-CELaunchTargetMachine",
	"Suspend-CEDataReplication",

	# Configuration
	"Set-CEUserPassword", "Get-CEProjectStorage", "Add-CEUserRoles", "Add-CEUserToProject", "Remove-CEUserFromProject",
	"Get-CEAuditLog", "New-CEUser", "New-CEApiToken", "Get-CETemporaryToken",
	
	# Misc
	"Get-CEWindowsInstaller"
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

		Prerelease = "alpha"

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("CloudEndure", "CE", "Migration", "AWS", "Azure", "GCP", "Google")

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/bamcisnetworks/CloudEndure/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/bamcisnetworks/CloudEndure'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = "*2.0.0-alpha
The whole module has been almost completely rewritten. It now only targets the latest version of the API, v5. This is an alpha release, so certain components may not work, testing was only done against AWS.
		
*1.2.1.1
Updated manifest to include BAMCIS.DynamicParam.
	
*1.2.1.0
Updated Get-CEWindowsInstaller so that the web response is returned to the pipeline.

Updated Start-CEDataReplication verbose message content.
		
Fixed Remove-CESession when a specific Session Id is provided so that the logout works.

*1.2.0.3
Updated the Set-CEMachine cmdlet to comply with the launch time updates restriction. Converted the new version, v3, from the old names for that version, v14/v15 and translated the old version v12 to v2.

Added XSRF token support for v3 and later.
		
*1.2.0.2
Fixed Remove-CEProfile.
		
*1.2.0.1
Fixed bug in Invoke-CEMachineCutover adding the Ids to a collection.
		
*1.2.0.0
Update the module to comply with the new version (v15) of the API. Added new cmdlets:

		Suspend-CEDataReplication
		Invoke-CELaunchTargetMachine
		Move-CEMachine
		Set-CEMachine
		Get-CEMachineBandwidth
		Set-CEMachineBandwidth

All cmdlets that are version specific will throw a runtime exception if the version the CE account is tied to is not supported by the cmdlet.

*1.1.0.2
Removed the Get-CEAccountSummary cmdlet because it was using an undocumented API. Added the Get-CEAccountExtendedInfo cmdlet. Updated the error handling for all of the Invoke-WebRequest calls to make errors more accessible.
		
*1.1.0.1
Fixed numerous bugs in the Blueprint cmdlets.
		
*1.1.0.0
Updated module for 100% API coverage including all target cloud environments, AWS, Azure, GCP, and Generic. This includes several additional cmdlets:

Get-CEMachineRecoveryPoints
Get-CEAccount
Set-CEProject
New-CECloudCredential
Get-CECloudCredential
Get-CECloud
Get-CESourceCloud
Get-CEMachineReplica
Invoke-CEMachineFailover
Invoke-CEReplicaCleanup

All of the List operations now support Offset and Limit parameters. You can also specify a non-default ProjectId or CloudCredential Id for each cmdlet that supports it.

The New-CEReplicationConfiguration cmdlet allows for the input of the SubnetId by both the long name (as presented in the CE console with VPC info) and as the normal subnet id.

This is really a BETA release, many of the cmdlets were refactored or updated with added validation or capabilities, but I may have typos or copy/paste errors I didn't catch through testing. 
Please report any bugs or errors, it's just me working on it.

** NOTE : Many of the CE APIs are case sensitive, you may receive an error response if one of the JSON keys in a POST, PATCH, or DELETE body is not capitalized correctly,
		use the -Verbose option to view additional details about the request to see if this may be an issue. Send me the details if you think this is the case.
		
*1.0.0.3
Fixed typo in New-CEReplicationConfiguration.
		
*1.0.0.2
Updated New-CESession cmdlet to reflect changes CloudEndure made to the API. Added Get-CEAccountSummary and Get-CESourceCloud cmdlets. Changed name of Get-CECloudRegions to Get-CECloudRegion and added an Id parameter.
		
*1.0.0.1
Updated the Get-CEMachine cmdlet.
		
*1.0.0.0
Initial Release.
"

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
