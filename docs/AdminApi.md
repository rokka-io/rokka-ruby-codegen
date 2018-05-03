# RokkaClientCodegen::AdminApi

All URIs are relative to *https://api.rokka.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_membership**](AdminApi.md#create_membership) | **PUT** /organizations/{organization}/memberships/{email} | Add a rokka user into an organization.
[**create_organization**](AdminApi.md#create_organization) | **PUT** /organizations/{organization} | Register a new Organization.
[**create_organization_options**](AdminApi.md#create_organization_options) | **PUT** /organizations/{organization}/options | Update options for an organization.
[**create_user**](AdminApi.md#create_user) | **POST** /users | Register new user.
[**delete_membership**](AdminApi.md#delete_membership) | **DELETE** /organizations/{organization}/memberships/{email} | Remove a user from an organization.
[**get_membership**](AdminApi.md#get_membership) | **GET** /organizations/{organization}/memberships/{email} | Get information about organization membership of a rokka user.
[**get_organization**](AdminApi.md#get_organization) | **GET** /organizations/{organization} | Get information about an organization.


# **create_membership**
> Membership create_membership(role, organization, email)

Add a rokka user into an organization.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

role = RokkaClientCodegen::Role.new # Role | Role specification

organization = "organization_example" # String | 

email = "email_example" # String | 


begin
  #Add a rokka user into an organization.
  result = api_instance.create_membership(role, organization, email)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->create_membership: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)| Role specification | 
 **organization** | **String**|  | 
 **email** | **String**|  | 

### Return type

[**Membership**](Membership.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_organization**
> Organization create_organization(organization, organization_definition)

Register a new Organization.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

organization = "organization_example" # String | Name of the organization to create (must be a web safe string)

organization_definition = RokkaClientCodegen::OrganizationDefinition.new # OrganizationDefinition | Organization information


begin
  #Register a new Organization.
  result = api_instance.create_organization(organization, organization_definition)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->create_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization to create (must be a web safe string) | 
 **organization_definition** | [**OrganizationDefinition**](OrganizationDefinition.md)| Organization information | 

### Return type

[**Organization**](Organization.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_organization_options**
> Organization create_organization_options(organization, organization_options)

Update options for an organization.

This is currently used for the remote_* options.  See https://rokka.io/documentation/references/stacks.html#loading-images-from-a-remote-url for details.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

organization = "organization_example" # String | Organization name

organization_options = RokkaClientCodegen::OrganizationOptions.new # OrganizationOptions | Organization options


begin
  #Update options for an organization.
  result = api_instance.create_organization_options(organization, organization_options)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->create_organization_options: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Organization name | 
 **organization_options** | [**OrganizationOptions**](OrganizationOptions.md)| Organization options | 

### Return type

[**Organization**](Organization.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_user**
> User create_user(user_definition)

Register new user.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

user_definition = RokkaClientCodegen::UserDefinition.new # UserDefinition | User information


begin
  #Register new user.
  result = api_instance.create_user(user_definition)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_definition** | [**UserDefinition**](UserDefinition.md)| User information | 

### Return type

[**User**](User.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_membership**
> delete_membership(organization, email)

Remove a user from an organization.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

organization = "organization_example" # String | 

email = "email_example" # String | 


begin
  #Remove a user from an organization.
  api_instance.delete_membership(organization, email)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->delete_membership: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **email** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_membership**
> Membership get_membership(organization, email)

Get information about organization membership of a rokka user.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

organization = "organization_example" # String | 

email = "email_example" # String | 


begin
  #Get information about organization membership of a rokka user.
  result = api_instance.get_membership(organization, email)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->get_membership: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **email** | **String**|  | 

### Return type

[**Membership**](Membership.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_organization**
> Organization get_organization(organization)

Get information about an organization.

### Example
```ruby
# load the gem
require 'rokka_client_codegen'
# setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = RokkaClientCodegen::AdminApi.new

organization = "organization_example" # String | Organization name


begin
  #Get information about an organization.
  result = api_instance.get_organization(organization)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling AdminApi->get_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Organization name | 

### Return type

[**Organization**](Organization.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



