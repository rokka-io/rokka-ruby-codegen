=begin
#rokka.io

#digital image processing done right. [Documentation](https://rokka.io/documentation). [Changelog](https://api.rokka.io/changelog.md).

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for RokkaClientCodegen::AdminApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AdminApi' do
  before do
    # run before each test
    @instance = RokkaClientCodegen::AdminApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdminApi' do
    it 'should create an instance of AdminApi' do
      expect(@instance).to be_instance_of(RokkaClientCodegen::AdminApi)
    end
  end

  # unit tests for create_membership
  # Add a rokka user into an organization.
  # 
  # @param role Role specification
  # @param organization 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @return [Membership]
  describe 'create_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_organization
  # Register a new Organization.
  # 
  # @param organization Name of the organization to create (must be a web safe string)
  # @param organization_definition Organization information
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'create_organization test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_organization_options
  # Update options for an organization.
  # This is currently used for the remote_* options.  See https://rokka.io/documentation/references/stacks.html#loading-images-from-a-remote-url for details.
  # @param organization Organization name
  # @param organization_options Organization options
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'create_organization_options test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user
  # Register new user.
  # 
  # @param user_definition User information
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'create_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_membership
  # Remove a user from an organization.
  # 
  # @param organization 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_membership
  # Get information about organization membership of a rokka user.
  # 
  # @param organization 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @return [Membership]
  describe 'get_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization
  # Get information about an organization.
  # 
  # @param organization Organization name
  # @param [Hash] opts the optional parameters
  # @return [Organization]
  describe 'get_organization test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
