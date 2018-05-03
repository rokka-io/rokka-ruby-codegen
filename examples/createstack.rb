# Load the gem
require 'rokka_client_codegen'

# Setup authorization
RokkaClientCodegen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['api-key'] = 'YOUR_API_KEY'
end

organization = 'test'
api_instance = RokkaClientCodegen::StacksApi.new

stack_definition = RokkaClientCodegen::StackDefinition.new # StackDefinition | Stack operations and options definition. See https://rokka.io/documentation/references/stacks.html for explanations how to define stacks.

operation = RokkaClientCodegen::StackOperation.new
operation.name="resize"
operation.options={:width => 500, :height => 500}

stack_definition.stack_operations = [operation]
stack_definition.stack_options = {:autoformat => true}
name = "foo" 

opts = {
    overwrite: true # BOOLEAN | Whether to overwrite the stack if it already exists
}

begin
  #Create a new stack.
  result = api_instance.create_stack(stack_definition, organization, name, opts)
  p result
rescue RokkaClientCodegen::ApiError => e
  puts "Exception when calling: #{e}"
end