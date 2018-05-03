# RokkaClientCodegen::StacksApi

All URIs are relative to *https://api.rokka.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_stack**](StacksApi.md#create_stack) | **PUT** /stacks/{organization}/{name} | Create a new stack.
[**delete_stack**](StacksApi.md#delete_stack) | **DELETE** /stacks/{organization}/{name} | Delete a stack.
[**get_stack**](StacksApi.md#get_stack) | **GET** /stacks/{organization}/{name} | Get a single stack.
[**list_operations**](StacksApi.md#list_operations) | **GET** /operations | Listing all available operations that can be used in stacks.
[**list_stack_options**](StacksApi.md#list_stack_options) | **GET** /stackoptions | List all available options that can be set on stacks.
[**list_stacks**](StacksApi.md#list_stacks) | **GET** /stacks/{organization} | Get all stacks of an organization.


# **create_stack**
> Stack create_stack(stack_definition, organization, name, opts)

Create a new stack.

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

api_instance = RokkaClientCodegen::StacksApi.new

stack_definition = RokkaClientCodegen::StackDefinition.new # StackDefinition | Stack operations and options definition. See https://rokka.io/documentation/references/stacks.html for explanations how to define stacks.

organization = "organization_example" # String | 

name = "name_example" # String | 

opts = { 
  overwrite: false # BOOLEAN | Whether to overwrite the stack if it already exists
}

begin
  #Create a new stack.
  result = api_instance.create_stack(stack_definition, organization, name, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->create_stack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stack_definition** | [**StackDefinition**](StackDefinition.md)| Stack operations and options definition. See https://rokka.io/documentation/references/stacks.html for explanations how to define stacks. | 
 **organization** | **String**|  | 
 **name** | **String**|  | 
 **overwrite** | **BOOLEAN**| Whether to overwrite the stack if it already exists | [optional] [default to false]

### Return type

[**Stack**](Stack.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_stack**
> delete_stack(organization, name)

Delete a stack.

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

api_instance = RokkaClientCodegen::StacksApi.new

organization = "organization_example" # String | 

name = "name_example" # String | 


begin
  #Delete a stack.
  api_instance.delete_stack(organization, name)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->delete_stack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_stack**
> Stack get_stack(organization, name)

Get a single stack.

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

api_instance = RokkaClientCodegen::StacksApi.new

organization = "organization_example" # String | 

name = "name_example" # String | 


begin
  #Get a single stack.
  result = api_instance.get_stack(organization, name)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->get_stack: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **name** | **String**|  | 

### Return type

[**Stack**](Stack.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_operations**
> Hash&lt;String, StackOperationDescription&gt; list_operations

Listing all available operations that can be used in stacks.

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

api_instance = RokkaClientCodegen::StacksApi.new

begin
  #Listing all available operations that can be used in stacks.
  result = api_instance.list_operations
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->list_operations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, StackOperationDescription&gt;**](StackOperationDescription.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_stack_options**
> StackOptions list_stack_options

List all available options that can be set on stacks.

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

api_instance = RokkaClientCodegen::StacksApi.new

begin
  #List all available options that can be set on stacks.
  result = api_instance.list_stack_options
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->list_stack_options: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StackOptions**](StackOptions.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_stacks**
> ListStacksResponse list_stacks(organization)

Get all stacks of an organization.

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

api_instance = RokkaClientCodegen::StacksApi.new

organization = "organization_example" # String | 


begin
  #Get all stacks of an organization.
  result = api_instance.list_stacks(organization)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling StacksApi->list_stacks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 

### Return type

[**ListStacksResponse**](ListStacksResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



