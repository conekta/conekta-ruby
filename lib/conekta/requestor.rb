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

    def api_url(_url='')
      api_base = Conekta.api_base
      api_base + _url
    end

    def request(meth, _url, params = nil)
      _url = self.api_url(_url)
      meth = meth.downcase

      begin
        connection = build_connection(_url, params)
        response = connection.method(meth).call do |req|
          (if meth == :get then req.params = params else req.body = params.to_json end) if params
        end
      rescue Exception => e
        raise Error.error_handler({}, nil)
      end

      json_response = JSON.parse(response.body)
      raise Error.error_handler(json_response, response.status) if response.status != 200
      json_response
    end

    private

    def build_connection(_url, params = nil)
      connection = Faraday.new(
       :url => _url,
       :ssl => { :ca_file=> File.dirname(__FILE__) + '/../ssl_data/ca_bundle.crt'}
       ) do |faraday|
        faraday.adapter  Faraday.default_adapter
      end

      set_headers_for(connection)
      return connection
    end

    def set_headers_for(connection)
      connection.headers['Content-Type'] = 'application/json'
      connection.headers['X-Conekta-Client-User-Agent'] = conekta_headers.to_json
      connection.headers['User-Agent'] = 'Conekta/v1 RubyBindings/' + Conekta::VERSION
      connection.headers['Accept'] = "application/vnd.conekta-v#{Conekta.api_version}+json"
      connection.headers['Accept-Language'] = Conekta.locale.to_s
      connection.headers['Authorization'] = "Basic #{ Base64.strict_encode64("#{self.api_key}" + ':')}"
      return connection
    end

    def conekta_headers
      params = {
        bindings_version: Conekta::VERSION,
        lang: 'ruby',
        lang_version: RUBY_VERSION,
        publisher: 'conekta',
        uname: Uname.uname
      }

      params.merge!(plugin: Conekta.plugin) if Conekta.plugin.to_s.length > 0

      @conekta_headers ||= params
    end
  end
end
