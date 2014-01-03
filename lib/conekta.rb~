require 'json'

require "conekta/version"

require "conekta/operations/get"
require "conekta/operations/where"
require "conekta/operations/create"
require "conekta/operations/delete"
require "conekta/operations/update"
require "conekta/operations/custom_action"
require "conekta/operations/create_member"

require "conekta/conekta_object"
require "conekta/resource"
require "conekta/requestor"
require "conekta/util"
require "conekta/error"
require "conekta/payment_method"
require "conekta/charge"
require "conekta/customer"
require "conekta/card"
require "conekta/subscription"
require "conekta/plan"
require "conekta/token"
require "conekta/event"

module Conekta
  #@api_base = 'https://api.conekta.io'
  @api_base = 'http://localhost:3000'
  @api_version = '0.3.0'
  def self.api_base
    @api_base
  end
  def self.api_version
    @api_version
  end
  def self.api_key
    @api_key
  end
  def self.api_key=(api_key)
    @api_key = api_key
  end
end
