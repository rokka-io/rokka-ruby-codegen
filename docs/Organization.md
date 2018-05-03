# RokkaClientCodegen::Organization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**display_name** | **String** |  | 
**name** | **String** | Web safe, using in routes and api calls | 
**billing_email** | **String** |  | 
**options** | [**OrganizationOptions**](OrganizationOptions.md) |  | [optional] 
**created** | **DateTime** |  | [optional] 
**master_organization** | **String** | Billing will agregate all sub organizations and bill the master organization. | [optional] 


