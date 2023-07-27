# frozen_string_literal: true
class BaseTest
  def self.host
    ENV['BASE_PATH'] || 'http://localhost:3000'
  end
  def self.scheme
    'http'
  end
end
