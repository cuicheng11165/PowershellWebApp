@{
	NestedModules =  if ($PSEdition -eq 'Core')
	{
		'Core/PnP.PowerShell.dll'
	}
	else
	{
		'Framework/PnP.PowerShell.dll'
	}
	ModuleVersion = '1.10.0'
	Description = 'Microsoft 365 Patterns and Practices PowerShell Cmdlets'
	GUID = '0b0430ce-d799-4f3b-a565-f0dca1f31e17'
	Author = 'Microsoft 365 Patterns and Practices'
	CompanyName = 'Microsoft 365 Patterns and Practices'
	CompatiblePSEditions = @("Core","Desktop")
	PowerShellVersion = '5.1'
	DotNetFrameworkVersion = '4.6.1'
	ProcessorArchitecture = 'None'
	FunctionsToExport = '*'  
	CmdletsToExport = @("Add-PnPAdaptiveScopeProperty","Add-PnPPropertyBagValue","Copy-PnPFolder","Export-PnPClientSidePage","Export-PnPClientSidePageMapping","Get-PnPAvailableClientSideComponents","Get-PnPClientSideComponent","Get-PnPClientSidePage","Get-PnPFlowEnvironment","Get-PnPMicrosoft365GroupMembers","Get-PnPMicrosoft365GroupOwners","Invoke-PnPSearchQuery","Move-PnPClientSideComponent","Remove-PnPClientSideComponent","Remove-PnPClientSidePage","Save-PnPClientSidePageConversionLog","Set-PnPClientSidePage","Set-PnPClientSideText","Set-PnPClientSideWebPart","Add-PnPAlert","Add-PnPApp","Add-PnPApplicationCustomizer","Add-PnPAzureADGroupMember","Add-PnPAzureADGroupOwner","Add-PnPContentType","Add-PnPContentTypesFromContentTypeHub","Add-PnPContentTypeToDocumentSet","Add-PnPContentTypeToList","Add-PnPCustomAction","Add-PnPDataRowsToSiteTemplate","Add-PnPDocumentSet","Add-PnPEventReceiver","Add-PnPField","Add-PnPFieldFromXml","Add-PnPFieldToContentType","Add-PnPFile","Add-PnPFileToSiteTemplate","Add-PnPFolder","Add-PnPGroupMember","Add-PnPHtmlPublishingPageLayout","Add-PnPHubSiteAssociation","Add-PnPHubToHubAssociation","Add-PnPIndexedProperty","Add-PnPJavaScriptBlock","Add-PnPJavaScriptLink","Add-PnPListDesign","Add-PnPListFoldersToSiteTemplate","Add-PnPListItem","Add-PnPListItemComment","Add-PnPMasterPage","Add-PnPMicrosoft365GroupMember","Add-PnPMicrosoft365GroupOwner","Add-PnPMicrosoft365GroupToSite","Add-PnPNavigationNode","Add-PnPOrgAssetsLibrary","Add-PnPOrgNewsSite","Add-PnPPage","Add-PnPPageSection","Add-PnPPageTextPart","Add-PnPPageWebPart","Add-PnPPlannerBucket","Add-PnPPlannerRoster","Add-PnPPlannerRosterMember","Add-PnPPlannerTask","Add-PnPPublishingImageRendition","Add-PnPPublishingPage","Add-PnPPublishingPageLayout","Add-PnPRoleDefinition","Add-PnPSiteClassification","Add-PnPSiteCollectionAdmin","Add-PnPSiteCollectionAppCatalog","Add-PnPSiteDesign","Add-PnPSiteDesignFromWeb","Add-PnPSiteDesignTask","Add-PnPSiteScript","Add-PnPSiteScriptPackage","Add-PnPSiteTemplate","Add-PnPStoredCredential","Add-PnPTaxonomyField","Add-PnPTeamsChannel","Add-PnPTeamsTab","Add-PnPTeamsTeam","Add-PnPTeamsUser","Add-PnPTenantCdnOrigin","Add-PnPTenantSequence","Add-PnPTenantSequenceSite","Add-PnPTenantSequenceSubSite","Add-PnPTenantTheme","Add-PnPTermToTerm","Add-PnPView","Add-PnPWebhookSubscription","Add-PnPWebPartToWebPartPage","Add-PnPWebPartToWikiPage","Add-PnPWikiPage","Approve-PnPTenantServicePrincipalPermissionRequest","Clear-PnPAzureADGroupMember","Clear-PnPAzureADGroupOwner","Clear-PnPDefaultColumnValues","Clear-PnPListItemAsRecord","Clear-PnPMicrosoft365GroupMember","Clear-PnPMicrosoft365GroupOwner","Clear-PnPRecycleBinItem","Clear-PnPTenantAppCatalogUrl","Clear-PnPTenantRecycleBinItem","Connect-PnPOnline","Convert-PnPFolderToSiteTemplate","Convert-PnPSiteTemplate","Convert-PnPSiteTemplateToMarkdown","ConvertTo-PnPPage","Copy-ItemProxy","Copy-PnPFile","Copy-PnPList","Copy-PnPTeamsTeam","Deny-PnPTenantServicePrincipalPermissionRequest","Disable-PnPFeature","Disable-PnPFlow","Disable-PnPPageScheduling","Disable-PnPSharingForNonOwnersOfSite","Disable-PnPSiteClassification","Disable-PnPTenantServicePrincipal","Disconnect-PnPOnline","Enable-PnPCommSite","Enable-PnPFeature","Enable-PnPFlow","Enable-PnPPageScheduling","Enable-PnPSiteClassification","Enable-PnPTenantServicePrincipal","Export-PnPFlow","Export-PnPListToSiteTemplate","Export-PnPPage","Export-PnPPageMapping","Export-PnPTaxonomy","Export-PnPTermGroupToXml","Export-PnPUserInfo","Export-PnPUserProfile","Find-PnPFile","Get-PnPAccessToken","Get-PnPAlert","Get-PnPApp","Get-PnPAppAuthAccessToken","Get-PnPAppErrors","Get-PnPAppInfo","Get-PnPApplicationCustomizer","Get-PnPAuditing","Get-PnPAuthenticationRealm","Get-PnPAvailableLanguage","Get-PnPAvailablePageComponents","Get-PnPAzureADApp","Get-PnPAzureADAppPermission","Get-PnPAzureADAppSitePermission","Get-PnPAzureADGroup","Get-PnPAzureADGroupMember","Get-PnPAzureADGroupOwner","Get-PnPAzureADUser","Get-PnPAzureCertificate","Get-PnPBrowserIdleSignout","Get-PnPBuiltInDesignPackageVisibility","Get-PnPBuiltInSiteTemplateSettings","Get-PnPChangeLog","Get-PnPCompatibleHubContentTypes","Get-PnPConnection","Get-PnPContentType","Get-PnPContentTypePublishingHubUrl","Get-PnPContentTypePublishingStatus","Get-PnPContext","Get-PnPCustomAction","Get-PnPDefaultColumnValues","Get-PnPDeletedMicrosoft365Group","Get-PnPDiagnostics","Get-PnPDisableSpacesActivation","Get-PnPDocumentSetTemplate","Get-PnPEventReceiver","Get-PnPException","Get-PnPExternalUser","Get-PnPFeature","Get-PnPField","Get-PnPFile","Get-PnPFileVersion","Get-PnPFlow","Get-PnPFolder","Get-PnPFolderItem","Get-PnPFooter","Get-PnPGraphAccessToken","Get-PnPGraphSubscription","Get-PnPGroup","Get-PnPGroupMember","Get-PnPGroupPermissions","Get-PnPHideDefaultThemes","Get-PnPHomePage","Get-PnPHomeSite","Get-PnPHubSite","Get-PnPHubSiteChild","Get-PnPIndexedPropertyKeys","Get-PnPInPlaceRecordsManagement","Get-PnPIsSiteAliasAvailable","Get-PnPJavaScriptLink","Get-PnPKnowledgeHubSite","Get-PnPLabel","Get-PnPList","Get-PnPListDesign","Get-PnPListInformationRightsManagement","Get-PnPListItem","Get-PnPListItemComment","Get-PnPListPermissions","Get-PnPListRecordDeclaration","Get-PnPMasterPage","Get-PnPMessageCenterAnnouncement","Get-PnPMicrosoft365Group","Get-PnPMicrosoft365GroupMember","Get-PnPMicrosoft365GroupOwner","Get-PnPMicrosoft365GroupSettings","Get-PnPMicrosoft365GroupSettingTemplates","Get-PnPNavigationNode","Get-PnPOrgAssetsLibrary","Get-PnPOrgNewsSite","Get-PnPPage","Get-PnPPageComponent","Get-PnPPlannerBucket","Get-PnPPlannerConfiguration","Get-PnPPlannerPlan","Get-PnPPlannerRosterMember","Get-PnPPlannerRosterPlan","Get-PnPPlannerTask","Get-PnPPlannerUserPolicy","Get-PnPPowerPlatformEnvironment","Get-PnPPowerShellTelemetryEnabled","Get-PnPProperty","Get-PnPPropertyBag","Get-PnPPublishingImageRendition","Get-PnPRecycleBinItem","Get-PnPRequestAccessEmails","Get-PnPRoleDefinition","Get-PnPSearchConfiguration","Get-PnPSearchCrawlLog","Get-PnPSearchSettings","Get-PnPServiceCurrentHealth","Get-PnPServiceHealthIssue","Get-PnPSharingForNonOwnersOfSite","Get-PnPSite","Get-PnPSiteClassification","Get-PnPSiteClosure","Get-PnPSiteCollectionAdmin","Get-PnPSiteCollectionAppCatalogs","Get-PnPSiteCollectionTermStore","Get-PnPSiteDesign","Get-PnPSiteDesignRights","Get-PnPSiteDesignRun","Get-PnPSiteDesignRunStatus","Get-PnPSiteDesignTask","Get-PnPSiteGroup","Get-PnPSitePolicy","Get-PnPSiteScript","Get-PnPSiteScriptFromList","Get-PnPSiteScriptFromWeb","Get-PnPSiteSearchQueryResults","Get-PnPSiteTemplate","Get-PnPSiteUserInvitations","Get-PnPStorageEntity","Get-PnPStoredCredential","Get-PnPStructuralNavigationCacheSiteState","Get-PnPStructuralNavigationCacheWebState","Get-PnPSubscribeSharePointNewsDigest","Get-PnPSubWeb","Get-PnPSyntexModel","Get-PnPSyntexModelPublication","Get-PnPTaxonomyItem","Get-PnPTaxonomySession","Get-PnPTeamsApp","Get-PnPTeamsChannel","Get-PnPTeamsChannelMessage","Get-PnPTeamsPrimaryChannel","Get-PnPTeamsTab","Get-PnPTeamsTeam","Get-PnPTeamsUser","Get-PnPTemporarilyDisableAppBar","Get-PnPTenant","Get-PnPTenantAppCatalogUrl","Get-PnPTenantCdnEnabled","Get-PnPTenantCdnOrigin","Get-PnPTenantCdnPolicies","Get-PnPTenantDeletedSite","Get-PnPTenantId","Get-PnPTenantInstance","Get-PnPTenantRecycleBinItem","Get-PnPTenantSequence","Get-PnPTenantSequenceSite","Get-PnPTenantServicePrincipal","Get-PnPTenantServicePrincipalPermissionGrants","Get-PnPTenantServicePrincipalPermissionRequests","Get-PnPTenantSite","Get-PnPTenantSyncClientRestriction","Get-PnPTenantTemplate","Get-PnPTenantTheme","Get-PnPTerm","Get-PnPTermGroup","Get-PnPTermLabel","Get-PnPTermSet","Get-PnPTheme","Get-PnPTimeZoneId","Get-PnPUnifiedAuditLog","Get-PnPUPABulkImportStatus","Get-PnPUser","Get-PnPUserOneDriveQuota","Get-PnPUserProfileProperty","Get-PnPView","Get-PnPWeb","Get-PnPWebHeader","Get-PnPWebhookSubscriptions","Get-PnPWebPart","Get-PnPWebPartProperty","Get-PnPWebPartXml","Get-PnPWebTemplates","Get-PnPWikiPageContent","Grant-PnPAzureADAppSitePermission","Grant-PnPHubSiteRights","Grant-PnPSiteDesignRights","Grant-PnPTenantServicePrincipalPermission","Import-PnPTaxonomy","Import-PnPTermGroupFromXml","Import-PnPTermSet","Install-PnPApp","Invoke-PnPBatch","Invoke-PnPListDesign","Invoke-PnPQuery","Invoke-PnPSiteDesign","Invoke-PnPSiteScript","Invoke-PnPSiteSwap","Invoke-PnPSiteTemplate","Invoke-PnPSPRestMethod","Invoke-PnPTenantTemplate","Invoke-PnPTransformation","Invoke-PnPWebAction","Measure-PnPList","Measure-PnPWeb","Move-ItemProxy","Move-PnPFile","Move-PnPFolder","Move-PnPListItemToRecycleBin","Move-PnPPageComponent","Move-PnPRecycleBinItem","New-PnPAzureADGroup","New-PnPAzureADUserTemporaryAccessPass","New-PnPAzureCertificate","New-PnPBatch","New-PnPExtensibilityHandlerObject","New-PnPGraphSubscription","New-PnPGroup","New-PnPList","New-PnPMicrosoft365Group","New-PnPMicrosoft365GroupSettings","New-PnPPersonalSite","New-PnPPlannerPlan","New-PnPSdnProvider","New-PnPSite","New-PnPSiteCollectionTermStore","New-PnPSiteGroup","New-PnPSiteTemplate","New-PnPSiteTemplateFromFolder","New-PnPTeamsApp","New-PnPTeamsTeam","New-PnPTenantSequence","New-PnPTenantSequenceCommunicationSite","New-PnPTenantSequenceTeamNoGroupSite","New-PnPTenantSequenceTeamNoGroupSubSite","New-PnPTenantSequenceTeamSite","New-PnPTenantSite","New-PnPTenantTemplate","New-PnPTerm","New-PnPTermGroup","New-PnPTermLabel","New-PnPTermSet","New-PnPUPABulkImportJob","New-PnPUser","New-PnPWeb","Publish-PnPApp","Publish-PnPCompanyApp","Publish-PnPContentType","Publish-PnPSyntexModel","Read-PnPSiteTemplate","Read-PnPTenantTemplate","Receive-PnPCopyMoveJobStatus","Register-PnPAppCatalogSite","Register-PnPAzureADApp","Register-PnPHubSite","Register-PnPManagementShellAccess","Remove-PnPAdaptiveScopeProperty","Remove-PnPAlert","Remove-PnPApp","Remove-PnPApplicationCustomizer","Remove-PnPAzureADApp","Remove-PnPAzureADGroup","Remove-PnPAzureADGroupMember","Remove-PnPAzureADGroupOwner","Remove-PnPContentType","Remove-PnPContentTypeFromDocumentSet","Remove-PnPContentTypeFromList","Remove-PnPCustomAction","Remove-PnPDeletedMicrosoft365Group","Remove-PnPEventReceiver","Remove-PnPExternalUser","Remove-PnPField","Remove-PnPFieldFromContentType","Remove-PnPFile","Remove-PnPFileFromSiteTemplate","Remove-PnPFileVersion","Remove-PnPFlow","Remove-PnPFolder","Remove-PnPGraphSubscription","Remove-PnPGroup","Remove-PnPGroupMember","Remove-PnPHomeSite","Remove-PnPHubSiteAssociation","Remove-PnPHubToHubAssociation","Remove-PnPIndexedProperty","Remove-PnPJavaScriptLink","Remove-PnPKnowledgeHubSite","Remove-PnPList","Remove-PnPListDesign","Remove-PnPListItem","Remove-PnPListItemComment","Remove-PnPMicrosoft365Group","Remove-PnPMicrosoft365GroupMember","Remove-PnPMicrosoft365GroupOwner","Remove-PnPMicrosoft365GroupSettings","Remove-PnPNavigationNode","Remove-PnPOrgAssetsLibrary","Remove-PnPOrgNewsSite","Remove-PnPPage","Remove-PnPPageComponent","Remove-PnPPlannerBucket","Remove-PnPPlannerPlan","Remove-PnPPlannerRoster","Remove-PnPPlannerRosterMember","Remove-PnPPlannerTask","Remove-PnPPropertyBagValue","Remove-PnPPublishingImageRendition","Remove-PnPRoleDefinition","Remove-PnPSdnProvider","Remove-PnPSearchConfiguration","Remove-PnPSiteClassification","Remove-PnPSiteCollectionAdmin","Remove-PnPSiteCollectionAppCatalog","Remove-PnPSiteCollectionTermStore","Remove-PnPSiteDesign","Remove-PnPSiteDesignTask","Remove-PnPSiteGroup","Remove-PnPSiteScript","Remove-PnPSiteUserInvitations","Remove-PnPStorageEntity","Remove-PnPStoredCredential","Remove-PnPTaxonomyItem","Remove-PnPTeamsApp","Remove-PnPTeamsChannel","Remove-PnPTeamsTab","Remove-PnPTeamsTeam","Remove-PnPTeamsUser","Remove-PnPTenantCdnOrigin","Remove-PnPTenantDeletedSite","Remove-PnPTenantSite","Remove-PnPTenantSyncClientRestriction","Remove-PnPTenantTheme","Remove-PnPTerm","Remove-PnPTermGroup","Remove-PnPTermLabel","Remove-PnPUser","Remove-PnPUserInfo","Remove-PnPUserProfile","Remove-PnPView","Remove-PnPWeb","Remove-PnPWebhookSubscription","Remove-PnPWebPart","Remove-PnPWikiPage","Rename-PnPFile","Rename-PnPFolder","Rename-PnPTenantSite","Repair-PnPSite","Request-PnPAccessToken","Request-PnPPersonalSite","Request-PnPReIndexList","Request-PnPReIndexWeb","Request-PnPSyntexClassifyAndExtract","Reset-PnPFileVersion","Reset-PnPLabel","Reset-PnPMicrosoft365GroupExpiration","Reset-PnPUserOneDriveQuotaToDefault","Resolve-PnPFolder","Restore-PnPDeletedMicrosoft365Group","Restore-PnPFileVersion","Restore-PnPRecycleBinItem","Restore-PnPTenantRecycleBinItem","Restore-PnPTenantSite","Revoke-PnPAzureADAppSitePermission","Revoke-PnPHubSiteRights","Revoke-PnPSiteDesignRights","Revoke-PnPTenantServicePrincipalPermission","Revoke-PnPUserSession","Save-PnPPageConversionLog","Save-PnPSiteTemplate","Save-PnPTenantTemplate","Send-PnPMail","Set-PnPAdaptiveScopeProperty","Set-PnPApplicationCustomizer","Set-PnPAppSideLoading","Set-PnPAuditing","Set-PnPAvailablePageLayouts","Set-PnPAzureADAppSitePermission","Set-PnPAzureADGroup","Set-PnPBrowserIdleSignout","Set-PnPBuiltInDesignPackageVisibility","Set-PnPBuiltInSiteTemplateSettings","Set-PnPContext","Set-PnPDefaultColumnValues","Set-PnPDefaultContentTypeToList","Set-PnPDefaultPageLayout","Set-PnPDisableSpacesActivation","Set-PnPDocumentSetField","Set-PnPField","Set-PnPFileCheckedIn","Set-PnPFileCheckedOut","Set-PnPFolderPermission","Set-PnPFooter","Set-PnPGraphSubscription","Set-PnPGroup","Set-PnPGroupPermissions","Set-PnPHideDefaultThemes","Set-PnPHomePage","Set-PnPHomeSite","Set-PnPHubSite","Set-PnPIndexedProperties","Set-PnPInPlaceRecordsManagement","Set-PnPKnowledgeHubSite","Set-PnPLabel","Set-PnPList","Set-PnPListInformationRightsManagement","Set-PnPListItem","Set-PnPListItemAsRecord","Set-PnPListItemPermission","Set-PnPListPermission","Set-PnPListRecordDeclaration","Set-PnPMasterPage","Set-PnPMessageCenterAnnouncementAsArchived","Set-PnPMessageCenterAnnouncementAsFavorite","Set-PnPMessageCenterAnnouncementAsNotArchived","Set-PnPMessageCenterAnnouncementAsNotFavorite","Set-PnPMessageCenterAnnouncementAsRead","Set-PnPMessageCenterAnnouncementAsUnread","Set-PnPMicrosoft365Group","Set-PnPMicrosoft365GroupSettings","Set-PnPMinimalDownloadStrategy","Set-PnPPage","Set-PnPPageTextPart","Set-PnPPageWebPart","Set-PnPPlannerBucket","Set-PnPPlannerConfiguration","Set-PnPPlannerPlan","Set-PnPPlannerTask","Set-PnPPlannerUserPolicy","Set-PnPPropertyBagValue","Set-PnPRequestAccessEmails","Set-PnPRoleDefinition","Set-PnPSearchConfiguration","Set-PnPSearchSettings","Set-PnPSite","Set-PnPSiteClosure","Set-PnPSiteDesign","Set-PnPSiteGroup","Set-PnPSitePolicy","Set-PnPSiteScript","Set-PnPSiteScriptPackage","Set-PnPSiteTemplateMetadata","Set-PnPStorageEntity","Set-PnPStructuralNavigationCacheSiteState","Set-PnPStructuralNavigationCacheWebState","Set-PnPSubscribeSharePointNewsDigest","Set-PnPTaxonomyFieldValue","Set-PnPTeamifyPromptHidden","Set-PnPTeamsChannel","Set-PnPTeamsTab","Set-PnPTeamsTeam","Set-PnPTeamsTeamArchivedState","Set-PnPTeamsTeamPicture","Set-PnPTemporarilyDisableAppBar","Set-PnPTenant","Set-PnPTenantAppCatalogUrl","Set-PnPTenantCdnEnabled","Set-PnPTenantCdnPolicy","Set-PnPTenantSite","Set-PnPTenantSyncClientRestriction","Set-PnPTerm","Set-PnPTermGroup","Set-PnPTermSet","Set-PnPTheme","Set-PnPTraceLog","Set-PnPUserOneDriveQuota","Set-PnPUserProfileProperty","Set-PnPView","Set-PnPWeb","Set-PnPWebHeader","Set-PnPWebhookSubscription","Set-PnPWebPartProperty","Set-PnPWebPermission","Set-PnPWebTheme","Set-PnPWikiPageContent","Submit-PnPSearchQuery","Submit-PnPTeamsChannelMessage","Sync-PnPAppToTeams","Sync-PnPSharePointUserProfilesFromAzureActiveDirectory","Test-PnPListItemIsRecord","Test-PnPMicrosoft365GroupAliasIsUsed","Test-PnPSite","Test-PnPTenantTemplate","Uninstall-PnPApp","Unpublish-PnPApp","Unpublish-PnPContentType","Unpublish-PnPSyntexModel","Unregister-PnPHubSite","Update-PnPApp","Update-PnPSiteClassification","Update-PnPSiteDesignFromWeb","Update-PnPTeamsApp","Update-PnPTeamsUser","Update-PnPUserType")
	VariablesToExport = '*'
	AliasesToExport = '*'
	FormatsToProcess = 'PnP.PowerShell.Format.ps1xml' 
	PrivateData = @{
		PSData = @{
			Tags = 'SharePoint','PnP','Teams','Planner'
			ProjectUri = 'https://aka.ms/sppnp'
			IconUri = 'https://raw.githubusercontent.com/pnp/media/40e7cd8952a9347ea44e5572bb0e49622a102a12/parker/ms/300w/parker-ms-300.png'
		}
	}
}

# SIG # Begin signature block
# MIInrQYJKoZIhvcNAQcCoIInnjCCJ5oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCFSDf56dJmStHU
# fBtKzt14q924VlyeIchIrVIQnlVzJ6CCDYEwggX/MIID56ADAgECAhMzAAACUosz
# qviV8znbAAAAAAJSMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwOTAyMTgzMjU5WhcNMjIwOTAxMTgzMjU5WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDQ5M+Ps/X7BNuv5B/0I6uoDwj0NJOo1KrVQqO7ggRXccklyTrWL4xMShjIou2I
# sbYnF67wXzVAq5Om4oe+LfzSDOzjcb6ms00gBo0OQaqwQ1BijyJ7NvDf80I1fW9O
# L76Kt0Wpc2zrGhzcHdb7upPrvxvSNNUvxK3sgw7YTt31410vpEp8yfBEl/hd8ZzA
# v47DCgJ5j1zm295s1RVZHNp6MoiQFVOECm4AwK2l28i+YER1JO4IplTH44uvzX9o
# RnJHaMvWzZEpozPy4jNO2DDqbcNs4zh7AWMhE1PWFVA+CHI/En5nASvCvLmuR/t8
# q4bc8XR8QIZJQSp+2U6m2ldNAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUNZJaEUGL2Guwt7ZOAu4efEYXedEw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDY3NTk3MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAFkk3
# uSxkTEBh1NtAl7BivIEsAWdgX1qZ+EdZMYbQKasY6IhSLXRMxF1B3OKdR9K/kccp
# kvNcGl8D7YyYS4mhCUMBR+VLrg3f8PUj38A9V5aiY2/Jok7WZFOAmjPRNNGnyeg7
# l0lTiThFqE+2aOs6+heegqAdelGgNJKRHLWRuhGKuLIw5lkgx9Ky+QvZrn/Ddi8u
# TIgWKp+MGG8xY6PBvvjgt9jQShlnPrZ3UY8Bvwy6rynhXBaV0V0TTL0gEx7eh/K1
# o8Miaru6s/7FyqOLeUS4vTHh9TgBL5DtxCYurXbSBVtL1Fj44+Od/6cmC9mmvrti
# yG709Y3Rd3YdJj2f3GJq7Y7KdWq0QYhatKhBeg4fxjhg0yut2g6aM1mxjNPrE48z
# 6HWCNGu9gMK5ZudldRw4a45Z06Aoktof0CqOyTErvq0YjoE4Xpa0+87T/PVUXNqf
# 7Y+qSU7+9LtLQuMYR4w3cSPjuNusvLf9gBnch5RqM7kaDtYWDgLyB42EfsxeMqwK
# WwA+TVi0HrWRqfSx2olbE56hJcEkMjOSKz3sRuupFCX3UroyYf52L+2iVTrda8XW
# esPG62Mnn3T8AuLfzeJFuAbfOSERx7IFZO92UPoXE1uEjL5skl1yTZB3MubgOA4F
# 8KoRNhviFAEST+nG8c8uIsbZeb08SeYQMqjVEmkwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZgjCCGX4CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAlKLM6r4lfM52wAAAAACUjAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgCKE1BkLQ
# E63JjlmtoY+jXZ9Lel54B+TwiECamKzbRGkwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBD/DkHjrbIJXvCWL2uYRSjqgylu0mSPVGkvPPG3iD+
# ZcqhtwO8yVFq41GZApeGE4sJnG09JuaNs9jzPNHLLPjnb4dzbLfNIdZslj6Vpc/h
# FoRtWBhXPE/txc1j8zXNtdB3kcdsVOXaR9sFdkrzQW9dhD10AbsWz3Onhqr/WR3K
# LUaD5JJjTZewNw/GeGcVaSLgRqHKhVgfQBKT73NoiWtceB+/1jQttq2iKsK6PH3p
# nbZQjkIwYKwG9OWM+Wn8tixAH1mLp5o/v9Xt3cBlzNjATFUCnkkubw2QoCtgAcYr
# jcij6OGjp7iiRjrUePl6OTqeEJImrM/NVriJhXc0guQhoYIXDDCCFwgGCisGAQQB
# gjcDAwExghb4MIIW9AYJKoZIhvcNAQcCoIIW5TCCFuECAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIKqG/1Pbv0cL/xzr4aDFbW0fCChGEnSeTXcvZnsv
# BRMKAgZiL6yZn4MYEzIwMjIwMzMwMTMzNjEyLjQ2NVowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0NjJGLUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEV8wggcQMIIE+KADAgECAhMzAAABpAfP44+jum/WAAEA
# AAGkMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMDMwMjE4NTExOFoXDTIzMDUxMTE4NTExOFowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0NjJG
# LUUzMTktM0YyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMBHjgD6FPy81PUhcOIV
# Gh4bOSaq634Y+TjW2hNF9BlnWxLJCEuMiV6YF5x6YTM7T1ZLM6NnH0whPypiz3bV
# ZRmwgGyTURKfVyPJ89R3WaZ/HMvcAJZnCMgL+mOpxE94gwQJD/qo8UquOrCKCY/f
# cjchxV8yMkfIqP69HnWfW0ratk+I2GZF2ISFyRtvEuxJvacIFDFkQXj3H+Xy9IHz
# Nqqi+g54iQjOAN6s3s68mi6rqv6+D9DPVPg1ev6worI3FlYzrPLCIunsbtYt3Xw3
# aHKMfA+SH8CV4iqJ/eEZUP1uFJT50MAPNQlIwWERa6cccSVB5mN2YgHf8zDUqQU4
# k2/DWw+14iLkwrgNlfdZ38V3xmxC9mZc9YnwFc32xi0czPzN15C8wiZEIqCddxbw
# imc+0LtPKandRXk2hMfwg0XpZaJxDfLTgvYjVU5PXTgB10mhWAA/YosgbB8KzvAx
# XPnrEnYg3XLWkgBZ+lOrHvqiszlFCGQC9rKPVFPCCsey356VhfcXlvwAJauAk7V0
# nLVTgwi/5ILyHffEuZYDnrx6a+snqDTHL/ZqRsB5HHq0XBo/i7BVuMXnSSXlFCo3
# On8IOl8JOKQ4CrIlri9qWJYMxsSICscotgODoYOO4lmXltKOB0l0IAhEXwSSKID5
# QAa9wTpIagea2hzjI6SUY1W/AgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQU4tATn6z4
# CBL2xZQd0jjN6SnjJMIwHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIw
# XwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3Js
# MGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENB
# JTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcD
# CDANBgkqhkiG9w0BAQsFAAOCAgEACVYcUNEMlyTuPDBGhiZ1U548ssF6J2g9QElW
# Eb2cZ4dL0+5G8721/giRtTPvgxQhDF5rJCjHGj8nFSqOE8fnYz9vgb2YclYHvkoK
# WUJODxjhWS+S06ZLR/nDS85HeDAD0FGduAA80Q7vGzknKW2jxoNHTb74KQEMWiUK
# 1M2PDN+eISPXPhPudGVGLbIEAk1Goj5VjzbQuLKhm2Tk4a22rkXkeE98gyNojHlB
# hHbb7nex3zGBTBGkVtwt2ud7qN2rcpuJhsJ/vL/0XYLtyOk7eSQZdfye0TT1/qj1
# 8iSXHsIXDhHOuTKqBiiatoo4Unwk7uGyM0lv38Ztr+YpajSP+p0PEMRH9RdfrKRm
# 4bHV5CmOTIzAmc49YZt40hhlVwlClFA4M+zn3cyLmEGwfNqD693hD5W3vcpnhf3x
# hZbVWTVpJH1CPGTmR4y5U9kxwysK8VlfCFRwYUa5640KsgIv1tJhF9LXemWIPEnu
# w9JnzHZ3iSw5dbTSXp9HmdOJIzsO+/tjQwZWBSFqnayaGv3Y8w1KYiQJS8cKJhwn
# hGgBPbyan+E5D9TyY9dKlZ3FikstwM4hKYGEUlg3tqaWEilWwa9SaNetNxjSfgah
# 782qzbjTQhwDgc6Jf07F2ak0YMnNJFHsBb1NPw77dhmo9ki8vrLOB++d6Gm2Z/jD
# pDOSst8wggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3
# DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIw
# MAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAx
# MDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
# 5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/
# XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1
# hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7
# M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3K
# Ni1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy
# 1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF80
# 3RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQc
# NIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahha
# YQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkL
# iWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV
# 2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIG
# CSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUp
# zxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBT
# MFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jv
# c29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYI
# KwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcN
# AQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1
# OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYA
# A7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbz
# aN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6L
# GYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3m
# Sj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0
# SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxko
# JLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFm
# PWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC482
# 2rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7
# vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYIC0jCC
# AjsCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNv
# MSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0NjJGLUUzMTktM0YyMDElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA
# NBwo4pNrfEL6DVo+tw96vGJvLp+ggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOXumkcwIhgPMjAyMjAzMzAxMjU4
# NDdaGA8yMDIyMDMzMTEyNTg0N1owdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA5e6a
# RwIBADAKAgEAAgIY4wIB/zAHAgEAAgIRVDAKAgUA5e/rxwIBADA2BgorBgEEAYRZ
# CgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0G
# CSqGSIb3DQEBBQUAA4GBACupyIcysZTnJe8em0KMvivWGnoU8Bgt2SpoM5pQg8wt
# 4+UfgFiyfNKiQlcJ6kMUfCYNlX+qAGSK6VFC/FkI7fOUklbvOjKI31SvK5t8+KOs
# dmTbs/hZI9XI2HPuGqHYpVIx/yB8VDiugu9Y+sxurTvzqwantaF5Shv+LYUNTFfk
# MYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMA
# AAGkB8/jj6O6b9YAAQAAAaQwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJ
# AzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQg0ZhWOlLkBuoYxYViOzZX
# 7sF5yUf8we81C1n/kjI/QKwwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCAF
# /OCjISZwpMBJ8MJ3WwMCF3qOa5YHFG6J4uHjaup5+DCBmDCBgKR+MHwxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABpAfP44+jum/WAAEAAAGkMCIEIPId
# R4BHOyEx4j//HKVyJ4XN4tRlN7tS2hqHY61cPbfVMA0GCSqGSIb3DQEBCwUABIIC
# AKqWXV+210Ashc6irOfhErGPjSf7InijYCimPWCsSuiy2HfS1c+SFqV8qPNrwF0W
# XLzJNlJEZ7HcyUKSphEip5HqGgsfqBK3D3eIBN6BrML/Is1saIkhIesLM/SXqYAI
# 3vZsW3HoKpKy3NvgmfxiVPdvIKF9OAUIwR/6scbLMlbTmapE0BmRk7/1JDVkyeZ7
# 7+k3MFqMD+99U/1sEORy5ug+b+YJhZXOAPvhCteRHebUU9E+O8ul1tpsl+IJahDD
# Iw4aVcR5OsEL2hnO9BAZsEvHd4Tipl8cizi5o2+Hovj+u4nz2/zJQN+4kYD6i+aP
# dUrK9jJA3UsltjP+tz9J6n8mmQLc6qt++s6xXNLB6UXAa8E7fRi1cB2vi605XUx/
# aU5ZMaDEpP8dlg3w64KlGsxDbJjDB9LItcBmCvzsv6GtHjmVcXJuO4kUo19MSf6z
# M3Tl1XqvFFLNWCkfZEtZKvC5D7P0P65qKrcGZncW1Oc2PaHwoIO328T6zsMWk1W3
# qGvxseIa6fO4rb4Sfgni3D3mjlaFS1DUuf8eZ0wEF0CoIziFUt31U03B/A1rshNE
# 2jC9a31PlszGTgLDo78yqdE6bWddhe9dXtB9bMRJ1kRjdwqePRv0Y2tQYB/mqseJ
# jGNzb4bnlVZvmIBRK0SNODh5UB2cYTk1/oxw/00UdrXG
# SIG # End signature block
