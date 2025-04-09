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

# Unit tests for Conekta::ShippingContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ShippingContactsApi' do
  before do
    # run before each test
    @api_instance = Conekta::ShippingContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingContactsApi' do
    it 'should create an instance of ShippingContactsApi' do
      expect(@api_instance).to be_instance_of(Conekta::ShippingContactsApi)
    end
  end

  # unit tests for create_customer_shipping_contacts
  # Create a shipping contacts
  # Create a shipping contacts for a customer.
  # @param id Identifier of the resource
  # @param customer_shipping_contacts requested field for customer shippings contacts
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerShippingContactsResponse]
  describe 'create_customer_shipping_contacts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_customer_shipping_contacts
  # Delete shipping contacts
  # Delete shipping contact that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param shipping_contacts_id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerShippingContactsResponse]
  describe 'delete_customer_shipping_contacts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_customer_shipping_contacts
  # Update shipping contacts
  # Update shipping contact that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param shipping_contacts_id identifier
  # @param customer_update_shipping_contacts requested field for customer update shippings contacts
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerShippingContactsResponse]
  describe 'update_customer_shipping_contacts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
