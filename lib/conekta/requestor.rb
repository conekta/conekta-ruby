require 'faraday'
require 'base64'

module Conekta
  class Requestor
    require 'sys/uname'
    include Sys

    attr_reader :api_key

    def initialize
      @api_key = Conekta.api_key
    end

    def api_url(url='')
      api_base = Conekta.api_base
      api_base + url
    end

    def request(meth, url, params=nil)
      url = self.api_url(url)
      meth = meth.downcase

      begin
        connection = build_connection(url, params)
        response = connection.method(meth).call
      rescue Exception => e
        Error.error_handler(e, "")
      end

      return Error.error_handler(JSON.parse(response.body), response.status) if response.status != 200
      JSON.parse(response.body)
    end

    private

    def build_connection(url, params = nil)
      connection = Faraday.new(
       :url => url,
       :ssl => { :ca_file=> File.dirname(__FILE__) + '/../ssl_data/ca_bundle.crt'}
       ) do |faraday|
        faraday.adapter  Faraday.default_adapter
      end

      set_headers_for(connection)
      connection.params = params if params
      return connection
    end

    def set_headers_for(connection)
      connection.headers['X-Conekta-Client-User-Agent'] = conekta_headers.to_json
      connection.headers['User-Agent'] = 'Conekta/v1 RubyBindings/' + Conekta::VERSION
      connection.headers['Accept'] = "application/vnd.conekta-v#{Conekta.api_version}+json"
      connection.headers['Accept-Language'] = Conekta.locale.to_s
      connection.headers['Authorization'] = "Basic #{ Base64.encode64("#{self.api_key}" + ':')}"
      return connection
    end

    def conekta_headers
      @conekta_headers ||= {
        bindings_version: Conekta::VERSION,
        lang: 'ruby',
        lang_version: RUBY_VERSION,
        publisher: 'conekta',
        uname: Uname.uname
      }
    end
  end
end
