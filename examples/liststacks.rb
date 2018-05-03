# Load the gem
require 'rokka_client_codegen'

# Setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR_API_KEY'
end

organization = 'test'
api_instance = RokkaClientCodegen::StacksApi.new


begin
  result = api_instance.list_stacks(organization)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling: #{e}"
end