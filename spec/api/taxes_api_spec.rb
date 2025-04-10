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

# Unit tests for Conekta::TaxesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaxesApi' do
  before do
    # run before each test
    @api_instance = Conekta::TaxesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxesApi' do
    it 'should create an instance of TaxesApi' do
      expect(@api_instance).to be_instance_of(Conekta::TaxesApi)
    end
  end

  # unit tests for orders_create_taxes
  # Create Tax
  # Create new taxes for an existing orden
  # @param id Identifier of the resource
  # @param order_tax_request requested field for a taxes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateOrderTaxResponse]
  describe 'orders_create_taxes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_delete_taxes
  # Delete Tax
  # Delete taxes for an existing orden
  # @param id Identifier of the resource
  # @param tax_id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateOrderTaxResponse]
  describe 'orders_delete_taxes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_update_taxes
  # Update Tax
  # Update taxes for an existing orden
  # @param id Identifier of the resource
  # @param tax_id identifier
  # @param update_order_tax_request requested field for taxes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateOrderTaxResponse]
  describe 'orders_update_taxes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
