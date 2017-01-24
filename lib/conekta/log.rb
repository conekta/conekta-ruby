module Conekta
  class Log < Resource
    include Conekta::Operations::Where
    include Conekta::Operations::Find

    attr_accessor :method, :url, :status, :version, :ip_address, :related,
                  :request_body, :response_body, :request_headers,
                  :response_headers, :created_at, :query_string
  end
end
