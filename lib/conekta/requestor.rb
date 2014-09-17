require 'faraday'
require 'base64'
module Conekta
  class Requestor
    require 'sys/uname'
    include Sys
    attr_reader :api_key
    def initialize()
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
        conn = Faraday.new(
         :url => url,
         :ssl => { :ca_file=> File.dirname(__FILE__) + '/../ssl_data/ca_bundle.crt'}
         ) do |faraday|
          faraday.adapter  Faraday.default_adapter
        end
        conn.headers['X-Conekta-Client-User-Agent'] = set_headers.to_json
        conn.headers['User-Agent'] = 'Conekta/v1 RubyBindings/' + Conekta::VERSION
        conn.headers['Accept'] = "application/vnd.conekta-v#{Conekta.api_version}+json"
        conn.headers['Accept-Language'] = Conekta.locale.to_s
        conn.headers['Authorization'] = "Basic #{ Base64.encode64("#{self.api_key}" + ':')}"
        if params
          conn.params = params
        end
        response = conn.method(meth).call
      rescue Exception => e
        Error.error_handler(e, "")
      end
      if response.status != 200
        Error.error_handler(JSON.parse(response.body), response.status)
      end
      return JSON.parse(response.body)
    end
    private
    def set_headers
      headers = {}
      headers[:bindings_version] = Conekta::VERSION
      headers[:lang] = 'ruby'
      headers[:lang_version] = RUBY_VERSION
      headers[:publisher] = 'conekta'
      headers[:uname] = Uname.uname
      return headers
    end
  end
end
