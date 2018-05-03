=begin
#rokka.io

#digital image processing done right. [Documentation](https://rokka.io/documentation). [Changelog](https://api.rokka.io/changelog.md).

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module RokkaClientCodegen
  class AdminApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a rokka user into an organization.
    # 
    # @param role Role specification
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [Membership]
    def create_membership(role, organization, email, opts = {})
      data, _status_code, _headers = create_membership_with_http_info(role, organization, email, opts)
      return data
    end

    # Add a rokka user into an organization.
    # 
    # @param role Role specification
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Membership, Fixnum, Hash)>] Membership data, response status code and response headers
    def create_membership_with_http_info(role, organization, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.create_membership ..."
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AdminApi.create_membership"
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.create_membership"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.create_membership, must conform to the pattern /[0-9a-z-]+/."
      end

      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling AdminApi.create_membership"
      end
      # resource path
      local_var_path = "/organizations/{organization}/memberships/{email}".sub('{' + 'organization' + '}', organization.to_s).sub('{' + 'email' + '}', email.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(role)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Membership')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#create_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a new Organization.
    # 
    # @param organization Name of the organization to create (must be a web safe string)
    # @param organization_definition Organization information
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def create_organization(organization, organization_definition, opts = {})
      data, _status_code, _headers = create_organization_with_http_info(organization, organization_definition, opts)
      return data
    end

    # Register a new Organization.
    # 
    # @param organization Name of the organization to create (must be a web safe string)
    # @param organization_definition Organization information
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Fixnum, Hash)>] Organization data, response status code and response headers
    def create_organization_with_http_info(organization, organization_definition, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.create_organization ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.create_organization"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.create_organization, must conform to the pattern /[0-9a-z-]+/."
      end

      # verify the required parameter 'organization_definition' is set
      if @api_client.config.client_side_validation && organization_definition.nil?
        fail ArgumentError, "Missing the required parameter 'organization_definition' when calling AdminApi.create_organization"
      end
      # resource path
      local_var_path = "/organizations/{organization}".sub('{' + 'organization' + '}', organization.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(organization_definition)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Organization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update options for an organization.
    # This is currently used for the remote_* options.  See https://rokka.io/documentation/references/stacks.html#loading-images-from-a-remote-url for details.
    # @param organization Organization name
    # @param organization_options Organization options
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def create_organization_options(organization, organization_options, opts = {})
      data, _status_code, _headers = create_organization_options_with_http_info(organization, organization_options, opts)
      return data
    end

    # Update options for an organization.
    # This is currently used for the remote_* options.  See https://rokka.io/documentation/references/stacks.html#loading-images-from-a-remote-url for details.
    # @param organization Organization name
    # @param organization_options Organization options
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Fixnum, Hash)>] Organization data, response status code and response headers
    def create_organization_options_with_http_info(organization, organization_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.create_organization_options ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.create_organization_options"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.create_organization_options, must conform to the pattern /[0-9a-z-]+/."
      end

      # verify the required parameter 'organization_options' is set
      if @api_client.config.client_side_validation && organization_options.nil?
        fail ArgumentError, "Missing the required parameter 'organization_options' when calling AdminApi.create_organization_options"
      end
      # resource path
      local_var_path = "/organizations/{organization}/options".sub('{' + 'organization' + '}', organization.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(organization_options)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Organization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#create_organization_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register new user.
    # 
    # @param user_definition User information
    # @param [Hash] opts the optional parameters
    # @return [User]
    def create_user(user_definition, opts = {})
      data, _status_code, _headers = create_user_with_http_info(user_definition, opts)
      return data
    end

    # Register new user.
    # 
    # @param user_definition User information
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def create_user_with_http_info(user_definition, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.create_user ..."
      end
      # verify the required parameter 'user_definition' is set
      if @api_client.config.client_side_validation && user_definition.nil?
        fail ArgumentError, "Missing the required parameter 'user_definition' when calling AdminApi.create_user"
      end
      # resource path
      local_var_path = "/users"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(user_definition)
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a user from an organization.
    # 
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_membership(organization, email, opts = {})
      delete_membership_with_http_info(organization, email, opts)
      return nil
    end

    # Remove a user from an organization.
    # 
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_membership_with_http_info(organization, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.delete_membership ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.delete_membership"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.delete_membership, must conform to the pattern /[0-9a-z-]+/."
      end

      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling AdminApi.delete_membership"
      end
      # resource path
      local_var_path = "/organizations/{organization}/memberships/{email}".sub('{' + 'organization' + '}', organization.to_s).sub('{' + 'email' + '}', email.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#delete_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about organization membership of a rokka user.
    # 
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [Membership]
    def get_membership(organization, email, opts = {})
      data, _status_code, _headers = get_membership_with_http_info(organization, email, opts)
      return data
    end

    # Get information about organization membership of a rokka user.
    # 
    # @param organization 
    # @param email 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Membership, Fixnum, Hash)>] Membership data, response status code and response headers
    def get_membership_with_http_info(organization, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.get_membership ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.get_membership"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.get_membership, must conform to the pattern /[0-9a-z-]+/."
      end

      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling AdminApi.get_membership"
      end
      # resource path
      local_var_path = "/organizations/{organization}/memberships/{email}".sub('{' + 'organization' + '}', organization.to_s).sub('{' + 'email' + '}', email.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Membership')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#get_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about an organization.
    # 
    # @param organization Organization name
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def get_organization(organization, opts = {})
      data, _status_code, _headers = get_organization_with_http_info(organization, opts)
      return data
    end

    # Get information about an organization.
    # 
    # @param organization Organization name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Fixnum, Hash)>] Organization data, response status code and response headers
    def get_organization_with_http_info(organization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.get_organization ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling AdminApi.get_organization"
      end
      if @api_client.config.client_side_validation && organization !~ Regexp.new(/[0-9a-z-]+/)
        fail ArgumentError, "invalid value for 'organization' when calling AdminApi.get_organization, must conform to the pattern /[0-9a-z-]+/."
      end

      # resource path
      local_var_path = "/organizations/{organization}".sub('{' + 'organization' + '}', organization.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['ApiKeyAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Organization')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#get_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end