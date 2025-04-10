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

# Unit tests for Conekta::ShippingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ShippingsApi' do
  before do
    # run before each test
    @api_instance = Conekta::ShippingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingsApi' do
    it 'should create an instance of ShippingsApi' do
      expect(@api_instance).to be_instance_of(Conekta::ShippingsApi)
    end
  end

  # unit tests for orders_create_shipping
  # Create Shipping
  # Create new shipping for an existing orden
  # @param id Identifier of the resource
  # @param shipping_request requested field for a shipping
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ShippingOrderResponse]
  describe 'orders_create_shipping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_delete_shipping
  # Delete Shipping
  # Delete shipping
  # @param id Identifier of the resource
  # @param shipping_id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ShippingOrderResponse]
  describe 'orders_delete_shipping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_update_shipping
  # Update Shipping
  # Update existing shipping for an existing orden
  # @param id Identifier of the resource
  # @param shipping_id identifier
  # @param shipping_request requested field for a shipping
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [ShippingOrderResponse]
  describe 'orders_update_shipping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
