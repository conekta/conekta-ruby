=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.2.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Conekta::ApiKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApiKeysApi' do
  before do
    # run before each test
    @api_instance = Conekta::ApiKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApiKeysApi' do
    it 'should create an instance of ApiKeysApi' do
      expect(@api_instance).to be_instance_of(Conekta::ApiKeysApi)
    end
  end

  # unit tests for create_api_key
  # Create Api Key
  # Create a api key
  # @param api_key_request requested field for a api keys
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ApiKeyCreateResponse]
  describe 'create_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_api_key
  # Delete Api Key
  # Deletes a api key that corresponds to a api key ID
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [DeleteApiKeysResponse]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_api_key
  # Get Api Key
  # Gets a api key that corresponds to a api key ID
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ApiKeyResponse]
  describe 'get_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_api_keys
  # Get list of Api Keys
  # Consume the list of api keys you have
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @option opts [String] :search General search, e.g. by id, description, prefix
  # @return [GetApiKeysResponse]
  describe 'get_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_api_key
  # Update Api Key
  # Update an existing api key
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [ApiKeyUpdateRequest] :api_key_update_request 
  # @return [ApiKeyResponse]
  describe 'update_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
