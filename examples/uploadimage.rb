# Load the gem
require 'rokka_client_codegen'

# Setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR_API_KEY'
  #config.debugging = true
end

organization = 'test'
api_instance = RokkaClientCodegen::SourceimagesApi.new

begin
  image = File.new("image.png") # File | The binary images
  opts = {
      meta_user: '{"foo":"bar"}' # String | User specific JSON metadata that can be used when searching source images. See https://rokka.io/documentation/references/user-metadata.html
  }
  result = api_instance.create_source_image(image, organization, opts);
  p result
  firstImage = result.items[0]
  p "The hash is " + firstImage.long_hash
  p "User metadata is " + (firstImage.user_metadata).to_s
  p "User metadata for foo is " + firstImage.user_metadata[:foo]
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling: #{e}"
  p e.response_body
end