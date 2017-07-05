$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'pry'
require 'conekta'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.before(:all) { Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h' }
end

def expect_to_raise_error_list(klass, message, subklass, &block)
  expect { block.call }.to raise_error(Conekta::ErrorList, nil)
  begin
    block.call
  rescue Conekta::ErrorList => exception
    expect(exception.details).to be_instance_of(Array)
    expect(exception.details).not_to be_empty
    expect(exception.details.first).to be_instance_of(subklass)
    expect(exception.class).to be < StandardError
  end
end
