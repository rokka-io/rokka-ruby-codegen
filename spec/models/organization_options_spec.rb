=begin
#rokka.io

#digital image processing done right. [Documentation](https://rokka.io/documentation). [Changelog](https://api.rokka.io/changelog.md).

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RokkaClientCodegen::OrganizationOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganizationOptions' do
  before do
    # run before each test
    @instance = RokkaClientCodegen::OrganizationOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationOptions' do
    it 'should create an instance of OrganizationOptions' do
      expect(@instance).to be_instance_of(RokkaClientCodegen::OrganizationOptions)
    end
  end
  describe 'test attribute "remote_basepath"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "remote_fullurl_allow"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "remote_fullurl_whitelist"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

