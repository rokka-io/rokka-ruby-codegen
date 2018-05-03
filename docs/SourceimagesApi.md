# RokkaClientCodegen::SourceimagesApi

All URIs are relative to *https://api.rokka.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_source_image**](SourceimagesApi.md#copy_source_image) | **POST** /sourceimages/{organization}/{hash}/copy | Copy a single source image to another org.
[**create_source_image**](SourceimagesApi.md#create_source_image) | **POST** /sourceimages/{organization} | Upload new source images.
[**create_source_image_meta_dynamic_with_name**](SourceimagesApi.md#create_source_image_meta_dynamic_with_name) | **PUT** /sourceimages/{organization}/{hash}/meta/dynamic/{metaName} | Adds or updates a specific dynamic meta data for an image.
[**create_source_image_meta_user**](SourceimagesApi.md#create_source_image_meta_user) | **PUT** /sourceimages/{organization}/{hash}/meta/user | Replace the image meta data with new information.
[**create_source_image_meta_user_wth_name**](SourceimagesApi.md#create_source_image_meta_user_wth_name) | **PUT** /sourceimages/{organization}/{hash}/meta/user/{metaName} | Adds or updates one user meta data field for an image.
[**delete_source_image**](SourceimagesApi.md#delete_source_image) | **DELETE** /sourceimages/{organization}/{hash} | Delete a single source image.
[**delete_source_image_meta_dynamic_with_name**](SourceimagesApi.md#delete_source_image_meta_dynamic_with_name) | **DELETE** /sourceimages/{organization}/{hash}/meta/dynamic/{metaName} | Deletes a specific dynamic meta data.
[**delete_source_image_meta_user**](SourceimagesApi.md#delete_source_image_meta_user) | **DELETE** /sourceimages/{organization}/{hash}/meta/user | Deletes all user meta data.
[**delete_source_image_meta_user_with_name**](SourceimagesApi.md#delete_source_image_meta_user_with_name) | **DELETE** /sourceimages/{organization}/{hash}/meta/user/{metaName} | Deletes user meta data for a specified field.
[**download_source_image**](SourceimagesApi.md#download_source_image) | **GET** /sourceimages/{organization}/{hash}/download | Download original source image binary.
[**get_source_image**](SourceimagesApi.md#get_source_image) | **GET** /sourceimages/{organization}/{hash} | Get information about a source image.
[**get_source_image_meta_user**](SourceimagesApi.md#get_source_image_meta_user) | **GET** /sourceimages/{organization}/{hash}/meta/user | Get all user meta data.
[**get_source_image_meta_user_with_name**](SourceimagesApi.md#get_source_image_meta_user_with_name) | **GET** /sourceimages/{organization}/{hash}/meta/user/{metaName} | Get user meta for a specific field.
[**list_source_images**](SourceimagesApi.md#list_source_images) | **GET** /sourceimages/{organization} | Get all images of an organization, with paging.
[**list_source_images_by_binary_hash**](SourceimagesApi.md#list_source_images_by_binary_hash) | **GET** /sourceimages/{organization}/binaryhash/{binaryHash} | Get all images in this organization that match a binaryhash.
[**patch_source_image_meta_user**](SourceimagesApi.md#patch_source_image_meta_user) | **PATCH** /sourceimages/{organization}/{hash}/meta/user | Update the specified meta data fields for an image.
[**restore_source_image**](SourceimagesApi.md#restore_source_image) | **POST** /sourceimages/{organization}/{hash}/restore | Restore source image including previously set metadata.


# **copy_source_image**
> copy_source_image(destination, organization, hash, opts)

Copy a single source image to another org.

The metadata is copied as well. After copying, changes to either image metadata are not reflected in the other image metadata.  This is a proxy method for COPY on /sourceimages/{organization}/{hash}. It allows to copy images with a POST request, to work around restrictive firewalls and allows to produce a swagger specification for this operation.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

destination = "destination_example" # String | The destination organization

organization = "organization_example" # String | 

hash = "hash_example" # String | 

opts = { 
  overwrite: "overwrite_example" # String | If set to 'F', existing images won't be overwritten.
}

begin
  #Copy a single source image to another org.
  api_instance.copy_source_image(destination, organization, hash, opts)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->copy_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **destination** | **String**| The destination organization | 
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **overwrite** | **String**| If set to &#39;F&#39;, existing images won&#39;t be overwritten. | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_source_image**
> ListSourceImagesResponse create_source_image(filedata, organization, opts)

Upload new source images.

The request is form data for the uploaded files and arrays of metadata. Files and metadata are matched based on their order in the request.  Note that this call allows to upload multiple images, but the swagger UI does not support this.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

filedata = File.new("/path/to/file.txt") # File | The binary images

organization = "organization_example" # String | 

opts = { 
  meta_dynamic: "meta_dynamic_example", # String | JSON metadata about the image, e.g. subject area. See https://rokka.io/documentation/references/dynamic-metadata.html
  meta_user: "meta_user_example" # String | User specific JSON metadata that can be used when searching source images. See https://rokka.io/documentation/references/user-metadata.html
}

begin
  #Upload new source images.
  result = api_instance.create_source_image(filedata, organization, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->create_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filedata** | **File**| The binary images | 
 **organization** | **String**|  | 
 **meta_dynamic** | **String**| JSON metadata about the image, e.g. subject area. See https://rokka.io/documentation/references/dynamic-metadata.html | [optional] 
 **meta_user** | **String**| User specific JSON metadata that can be used when searching source images. See https://rokka.io/documentation/references/user-metadata.html | [optional] 

### Return type

[**ListSourceImagesResponse**](ListSourceImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined



# **create_source_image_meta_dynamic_with_name**
> SourceImage create_source_image_meta_dynamic_with_name(meta_dynamic_definition, organization, hash, meta_name, opts)

Adds or updates a specific dynamic meta data for an image.

This changes the hash of the image. The response provides the new location of the image in the Location header.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

meta_dynamic_definition = nil # Object | Dynamic Meta Data definition

organization = "organization_example" # String | 

hash = "hash_example" # String | 

meta_name = "meta_name_example" # String | 

opts = { 
  delete_previous: false # BOOLEAN | If the image with the original hash should be deleted
}

begin
  #Adds or updates a specific dynamic meta data for an image.
  result = api_instance.create_source_image_meta_dynamic_with_name(meta_dynamic_definition, organization, hash, meta_name, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->create_source_image_meta_dynamic_with_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta_dynamic_definition** | **Object**| Dynamic Meta Data definition | 
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **meta_name** | **String**|  | 
 **delete_previous** | **BOOLEAN**| If the image with the original hash should be deleted | [optional] [default to false]

### Return type

[**SourceImage**](SourceImage.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_source_image_meta_user**
> create_source_image_meta_user(user_meta_data, organization, hash)

Replace the image meta data with new information.

All existing meta data for the image is removed and then the new meta data is added.  User metadata is used for searching images that have been stored in rokka. It will never lead to differences in the output image and thus changing it never leads to a new hash.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

user_meta_data = nil # Object | User Meta Data as a json hashmap

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Replace the image meta data with new information.
  api_instance.create_source_image_meta_user(user_meta_data, organization, hash)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->create_source_image_meta_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_meta_data** | **Object**| User Meta Data as a json hashmap | 
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **create_source_image_meta_user_wth_name**
> create_source_image_meta_user_wth_name(user_meta_data_single_field, organization, hash, meta_name)

Adds or updates one user meta data field for an image.

User metadata is used for searching images that have been stored in rokka. It will never lead to differences in the output image and thus changing it never leads to a new hash.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

user_meta_data_single_field = "user_meta_data_single_field_example" # String | User Meta Data for a single field in json format

organization = "organization_example" # String | 

hash = "hash_example" # String | 

meta_name = "meta_name_example" # String | 


begin
  #Adds or updates one user meta data field for an image.
  api_instance.create_source_image_meta_user_wth_name(user_meta_data_single_field, organization, hash, meta_name)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->create_source_image_meta_user_wth_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_meta_data_single_field** | **String**| User Meta Data for a single field in json format | 
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **meta_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_source_image**
> delete_source_image(organization, hash)

Delete a single source image.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Delete a single source image.
  api_instance.delete_source_image(organization, hash)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->delete_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_source_image_meta_dynamic_with_name**
> SourceImage delete_source_image_meta_dynamic_with_name(organization, hash, meta_name, opts)

Deletes a specific dynamic meta data.

This changes the hash of the image. The response provides the new location of the image in the Location header.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 

meta_name = "meta_name_example" # String | 

opts = { 
  delete_previous: false # BOOLEAN | If the image with the original hash should be deleted
}

begin
  #Deletes a specific dynamic meta data.
  result = api_instance.delete_source_image_meta_dynamic_with_name(organization, hash, meta_name, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->delete_source_image_meta_dynamic_with_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **meta_name** | **String**|  | 
 **delete_previous** | **BOOLEAN**| If the image with the original hash should be deleted | [optional] [default to false]

### Return type

[**SourceImage**](SourceImage.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_source_image_meta_user**
> delete_source_image_meta_user(organization, hash)

Deletes all user meta data.

User metadata is used for searching images that have been stored in rokka. It will never lead to differences in the output image and thus changing it never leads to a new hash.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Deletes all user meta data.
  api_instance.delete_source_image_meta_user(organization, hash)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->delete_source_image_meta_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_source_image_meta_user_with_name**
> delete_source_image_meta_user_with_name(organization, hash, meta_name)

Deletes user meta data for a specified field.

User metadata is used for searching images that have been stored in rokka. It will never lead to differences in the output image and thus changing it never leads to a new hash.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 

meta_name = "meta_name_example" # String | 


begin
  #Deletes user meta data for a specified field.
  api_instance.delete_source_image_meta_user_with_name(organization, hash, meta_name)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->delete_source_image_meta_user_with_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **meta_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **download_source_image**
> File download_source_image(organization, hash)

Download original source image binary.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Download original source image binary.
  result = api_instance.download_source_image(organization, hash)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->download_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

**File**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_source_image**
> SourceImage get_source_image(organization, hash)

Get information about a source image.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Get information about a source image.
  result = api_instance.get_source_image(organization, hash)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->get_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

[**SourceImage**](SourceImage.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_source_image_meta_user**
> Object get_source_image_meta_user(organization, hash)

Get all user meta data.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Get all user meta data.
  result = api_instance.get_source_image_meta_user(organization, hash)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->get_source_image_meta_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_source_image_meta_user_with_name**
> String get_source_image_meta_user_with_name(organization, hash, meta_name)

Get user meta for a specific field.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 

meta_name = "meta_name_example" # String | 


begin
  #Get user meta for a specific field.
  result = api_instance.get_source_image_meta_user_with_name(organization, hash, meta_name)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->get_source_image_meta_user_with_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 
 **meta_name** | **String**|  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_source_images**
> ListSourceImagesResponse list_source_images(organization, opts)

Get all images of an organization, with paging.

You can also filter and sort by their metadata. See the API reference for more in depth documentation about this.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

opts = { 
  offset: "0", # String | When paging results, where to start or a cursor
  limit: 100, # Integer | How many images should be returned
  sort: "created desc", # String | The field to be used for sorting
  deleted: false # BOOLEAN | Search for deleted images
}

begin
  #Get all images of an organization, with paging.
  result = api_instance.list_source_images(organization, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->list_source_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **offset** | **String**| When paging results, where to start or a cursor | [optional] [default to 0]
 **limit** | **Integer**| How many images should be returned | [optional] [default to 100]
 **sort** | **String**| The field to be used for sorting | [optional] [default to created desc]
 **deleted** | **BOOLEAN**| Search for deleted images | [optional] [default to false]

### Return type

[**ListSourceImagesResponse**](ListSourceImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_source_images_by_binary_hash**
> ListSourceImagesResponse list_source_images_by_binary_hash(organization, binary_hash)

Get all images in this organization that match a binaryhash.

The binary hash is the sha1 of the image binary. This may yield several results if the same image has been uploaded with varying dynamic metadata.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

binary_hash = "binary_hash_example" # String | 


begin
  #Get all images in this organization that match a binaryhash.
  result = api_instance.list_source_images_by_binary_hash(organization, binary_hash)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->list_source_images_by_binary_hash: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **binary_hash** | **String**|  | 

### Return type

[**ListSourceImagesResponse**](ListSourceImagesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **patch_source_image_meta_user**
> patch_source_image_meta_user(user_meta_data, organization, hash)

Update the specified meta data fields for an image.

This only overwrites the fields specified in the request, but leaves existing meta data with different names unchanged.  User metadata is used for searching images that have been stored in rokka. It will never lead to differences in the output image and thus changing it never leads to a new hash.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

user_meta_data = nil # Object | User Meta Data as a json hashmap

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Update the specified meta data fields for an image.
  api_instance.patch_source_image_meta_user(user_meta_data, organization, hash)
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->patch_source_image_meta_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_meta_data** | **Object**| User Meta Data as a json hashmap | 
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **restore_source_image**
> SourceImage restore_source_image(organization, hash)

Restore source image including previously set metadata.

If the image has been deleted but not yet purged from the system, it is restored. If an image with this hash already exists and is not deleted, information about that image is returned.

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

api_instance = RokkaClientCodegen::SourceimagesApi.new

organization = "organization_example" # String | 

hash = "hash_example" # String | 


begin
  #Restore source image including previously set metadata.
  result = api_instance.restore_source_image(organization, hash)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling SourceimagesApi->restore_source_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**|  | 
 **hash** | **String**|  | 

### Return type

[**SourceImage**](SourceImage.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



