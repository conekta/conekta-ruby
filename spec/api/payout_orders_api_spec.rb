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

# Unit tests for Conekta::PayoutOrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayoutOrdersApi' do
  before do
    # run before each test
    @api_instance = Conekta::PayoutOrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayoutOrdersApi' do
    it 'should create an instance of PayoutOrdersApi' do
      expect(@api_instance).to be_instance_of(Conekta::PayoutOrdersApi)
    end
  end

  # unit tests for cancel_payout_order_by_id
  # Cancel Payout Order
  # Cancel a payout Order resource that corresponds to a payout order ID.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [PayoutOrderResponse]
  describe 'cancel_payout_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_payout_order
  # Create payout order
  # Create a new payout order.
  # @param payout_order requested field for payout order
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [PayoutOrderResponse]
  describe 'create_payout_order test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payout_order_by_id
  # Get Payout Order
  # Gets a payout Order resource that corresponds to a payout order ID.
  # @param id Identifier of the resource
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @return [PayoutOrderResponse]
  describe 'get_payout_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payout_orders
  # Get a list of Payout Orders
  # Get Payout order details in the form of a list
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept_language Use for knowing which language to use
  # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250
  # @option opts [String] :search General order search, e.g. by mail, reference etc.
  # @option opts [String] :_next next page
  # @option opts [String] :previous previous page
  # @return [PayoutOrdersResponse]
  describe 'get_payout_orders test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
