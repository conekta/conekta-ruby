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

# Unit tests for Conekta::DiscountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DiscountsApi' do
  before do
    # run before each test
    @api_instance = Conekta::DiscountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DiscountsApi' do
    it 'should create an instance of DiscountsApi' do
      expect(@api_instance).to be_instance_of(Conekta::DiscountsApi)
    end
  end

  # unit tests for orders_create_discount_line
  # Create Discount
  # Create discount lines for an existing orden
  # @param id Identifier of the resource
  # @param order_discount_lines_request requested field for a discount lines
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [DiscountLinesResponse]
  describe 'orders_create_discount_line test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_delete_discount_lines
  # Delete Discount
  # Delete an existing discount lines for an existing orden
  # @param id Identifier of the resource
  # @param discount_lines_id discount line id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [DiscountLinesResponse]
  describe 'orders_delete_discount_lines test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_get_discount_line
  # Get Discount
  # Get an existing discount lines for an existing orden
  # @param id Identifier of the resource
  # @param discount_lines_id discount line id identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [DiscountLinesResponse]
  describe 'orders_get_discount_line test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_get_discount_lines
  # Get a List of Discount
  # Get discount lines for an existing orden
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [GetOrderDiscountLinesResponse]
  describe 'orders_get_discount_lines test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for orders_update_discount_lines
  # Update Discount
  # Update an existing discount lines for an existing orden
  # @param id Identifier of the resource
  # @param discount_lines_id discount line id identifier
  # @param update_order_discount_lines_request requested field for a discount lines
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
  # @return [DiscountLinesResponse]
  describe 'orders_update_discount_lines test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
