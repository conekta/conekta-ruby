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

# Unit tests for Conekta::CustomersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomersApi' do
  before do
    # run before each test
    @api_instance = Conekta::CustomersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomersApi' do
    it 'should create an instance of CustomersApi' do
      expect(@api_instance).to be_instance_of(Conekta::CustomersApi)
    end
  end

  # unit tests for create_customer
  # Create customer
  # The purpose of business is to create and keep a customer, you will learn what elements you need to create a customer. Remember the credit and debit card tokenization process: [https://developers.conekta.com/page/web-checkout-tokenizer](https://developers.conekta.com/page/web-checkout-tokenizer) 
  # @param customer requested field for customer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerResponse]
  describe 'create_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_customer_fiscal_entities
  # Create Fiscal Entity
  # Create Fiscal entity resource that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param customer_fiscal_entities_request requested field for customer fiscal entities
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CreateCustomerFiscalEntitiesResponse]
  describe 'create_customer_fiscal_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_customer_by_id
  # Delete Customer
  # Deleted a customer resource that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerResponse]
  describe 'delete_customer_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customer_by_id
  # Get Customer
  # Gets a customer resource that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerResponse]
  describe 'get_customer_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customers
  # Get a list of customers
  # The purpose of business is to create and maintain a client, you will learn what elements you need to obtain a list of clients, which can be paged.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [CustomersResponse]
  describe 'get_customers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_customer
  # Update customer
  # You can update customer-related data
  # @param id Identifier of the resource
  # @param update_customer requested field for customer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [CustomerResponse]
  describe 'update_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_customer_fiscal_entities
  # Update  Fiscal Entity
  # Update Fiscal Entity resource that corresponds to a customer ID.
  # @param id Identifier of the resource
  # @param fiscal_entities_id identifier
  # @param customer_update_fiscal_entities_request requested field for customer update fiscal entities
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [UpdateCustomerFiscalEntitiesResponse]
  describe 'update_customer_fiscal_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
