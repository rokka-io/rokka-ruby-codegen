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

meta_dynamic_definition = {:width => 1, :height => 1, :x => 10, :y => 10} # Object | Dynamic Meta Data definition

hash = "cf5c133959e8ae77d9e5c50583c6c30dcf645109" # String |

meta_name = "subject_area" # String |

opts = {
    delete_previous: false # BOOLEAN | If the image with the original hash should be deleted
}

begin
    #Adds or updates a specific dynamic meta data for an image.
    result = api_instance.create_source_image_meta_dynamic_with_name(meta_dynamic_definition, organization, hash, meta_name, opts)
  p result
  first_image = result
  p "The new hash is " + first_image.long_hash
  p "Dynamicmeta is " + (first_image.dynamic_metadata).to_s
  p "Dynamicmeta subject_area is " + first_image.dynamic_metadata[:subject_area].to_s
  p "Dynamicmeta subject_area.x is " + first_image.dynamic_metadata[:subject_area][:x].to_s
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling: #{e}"
  p e.response_body
end