=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

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

      customer = full_customer

      response = @api_instance.create_customer(customer)

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.id).to be_truthy
      expect(response.custom_reference).to eq(customer.custom_reference)
      expect(response.fiscal_entities.data.length).to eq(1)
      expect(response.fiscal_entities.has_more).to be_falsey
      expect(response.livemode).to be_truthy
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
      id = "cus_2tXyF9BwPG14UMkkg"
      request = Conekta::CustomerFiscalEntitiesRequest.new({
                                                             address: Conekta::CustomerAddress.new({
                                                                                                                          street1: "av siem",
                                                                                                                          city: "mexico",
                                                                                                                          country: "MX",
                                                                                                                          postal_code: "11000",
                                                                                                                          external_number: "11544"
                                                                                                                        })
                                                           })

      response = @api_instance.create_customer_fiscal_entities(id, request)

      expect(response).to be_instance_of(Conekta::CreateCustomerFiscalEntitiesResponse)
      expect(response.address.country).not_to eq(request.address.country)
      expect(response.parent_id).to eq(id)
      expect(response.id).to be_truthy
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
      id = "cus_2tXyF9BwPG14UMkkg"

      response = @api_instance.delete_customer_by_id(id, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.id).to eq(id)
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
    it 'card' do
      id = "cus_2tXx8KUxw6311kEbs"

      response = @api_instance.get_customer_by_id(id, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.id).to eq(id)
      expect(response.payment_sources.data.length).to eq(1)
      expect(response.payment_sources.data.first).to be_instance_of(Conekta::PaymentMethodCardResponse)
      expect(response.payment_sources.data.first.type).to eq('card')
      expect(response.payment_sources.data.first.card_type).to eq('credit')
      expect(response.subscription).not_to be_nil
      expect(response.subscription.customer_id).to eq(id)
    end
    it 'cash' do
      id = 'cus_2rGtVzg5V2KZrKXBh'

      response = @api_instance.get_customer_by_id(id, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.id).to eq(id)
      expect(response.payment_sources.data.length).to eq(1)
      expect(response.payment_sources.data.first).to be_instance_of(Conekta::PaymentMethodCashResponse)
      expect(response.payment_sources.data.first.type).to eq('oxxo_recurrent')
      expect(response.payment_sources.data.first.provider).to eq('Oxxo')
      expect(response.payment_sources.data.first.object).to eq('payment_source')
    end
    it 'spei' do
      id = "cus_2tYELwYTKSB5hDXsr"

      response = @api_instance.get_customer_by_id(id, { accept_language: 'es' })

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.id).to eq(id)
      expect(response.payment_sources.data.length).to eq(1)
      expect(response.payment_sources.data.first).to be_instance_of(Conekta::PaymentMethodSpeiRecurrent)
      expect(response.payment_sources.data.first.type).to eq('spei_recurrent')
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
    it 'with limit' do
      response = @api_instance.get_customers({ accept_language: 'es', limit: 21 })

      expect(response).to be_instance_of(Conekta::CustomersResponse)
      expect(response.next_page_url).to be_truthy
      expect(response.previous_page_url).to be_falsey
      expect(response.has_more).to be_truthy
      expect(response.object).to eq('list')
    end
    it 'next' do
      response = @api_instance.get_customers({ accept_language: 'es', limit: 22, _next: 'cus_2sthLBEZRLp2s6GWc' })

      expect(response).to be_instance_of(Conekta::CustomersResponse)
      expect(response.next_page_url).to be_truthy
      expect(response.previous_page_url).to be_truthy
      expect(response.has_more).to be_truthy
      expect(response.object).to eq('list')
    end
    it 'previous' do
      response = @api_instance.get_customers({ accept_language: 'es', limit: 23, previous: 'cus_2ss5YAeTKuEr5M4fD' })

      expect(response).to be_instance_of(Conekta::CustomersResponse)
      expect(response.next_page_url).to be_truthy
      expect(response.previous_page_url).to be_falsey
      expect(response.has_more).to be_falsey
      expect(response.object).to eq('list')
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
      id = "cus_2tYENskzTjjgkGQLt"
      update_request = Conekta::UpdateCustomer.new({
                                                     email: 'dotnet@test.com'
                                                   })
      response = @api_instance.update_customer(id, update_request)

      expect(response).to be_instance_of(Conekta::CustomerResponse)
      expect(response.email).to eq(update_request.email)
      expect(response.id).to eq(id)
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
      id = "cus_2tYENskzTjjgkGQLt"
      fiscal_entities_id = "fis_ent_2tYENskzTjjgkGQLr"
      request = Conekta::CustomerUpdateFiscalEntitiesRequest.new({
                                                                   tax_id: 'tax_28764234'
                                                                 })
      response = @api_instance.update_customer_fiscal_entities(id, fiscal_entities_id, request)

      expect(response).to be_instance_of(Conekta::UpdateCustomerFiscalEntitiesResponse)
      expect(response.tax_id).to eq(request.tax_id)
      expect(response.parent_id).to eq(id)
      expect(response.id).to eq(fiscal_entities_id)
    end
  end

  def full_customer
    fiscal_entities = Array.new(1)
    fiscal_entities[0] =
      Conekta::CustomerFiscalEntitiesRequest.new({
                                                   address: Conekta::CustomerAddress.new({
                                                                                                                street1: "av siempre viva",
                                                                                                                street2: "condensa",
                                                                                                                postal_code: "11011",
                                                                                                                city: "cdmx mexico",
                                                                                                                state: "cdmx mexico",
                                                                                                                country: "mexico",
                                                                                                                residential: true,
                                                                                                                external_number: "avas3"
                                                                                                              }),
                                                   company_name: "testing ca",
                                                   tax_id: "tax_23432",
                                                   email: "test@conekta.com",
                                                   phone: "+573143152012",
                                                 })

    payment_sources = Array.new(1)
    payment_method_data = {
      type: 'card',
      cvc: '123',
      exp_month: '12',
      exp_year: '2025',
      name: 'John Doe',
      number: '4242424242424242',
      customer_ip_address: '127.0.0.1'
    }
    payment_sources[0] =
      Conekta::PaymentMethodCardRequest.new(payment_method_data)
    shipping_contacts = Array.new(1)
    shipping_contacts[0] = Conekta::CustomerShippingContacts.new({
                                                                   address: Conekta::CustomerShippingContactsAddress.new({
                                                                                                                           street1: "avenida siempre viva",
                                                                                                                           country: "mexico",
                                                                                                                           postal_code: "11011"
                                                                                                                         }),
                                                                   phone: "+54874122144"
                                                                 })

    subscription = Conekta::SubscriptionRequest.new({
                                                      plan_id: "plan_2tXx672QLQ68CkmMn",
                                                      card_id: "card_2tXyExrU6U7yiaTto",
                                                      trial_end: 1679321468
                                                    })
    Conekta::Customer.new(
      {
        name: 'test dot',
        phone: '+573143159063',
        email: 'test@conekta.com',
        corporate: true,
        plan_id: 'plan_2tXx672QLQ68CkmMn',
        default_shipping_contact_id: "",
        default_payment_source_id: "",
        custom_reference: "dotnet_12345678",
        fiscal_entities: fiscal_entities,
        payment_sources: payment_sources,
        shipping_contacts: shipping_contacts,
        subscription: subscription
      }
    )
  end
end
