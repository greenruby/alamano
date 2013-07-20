$LOAD_PATH << File.expand_path('../../lib', __FILE__)

require 'rspec/autorun'
require 'alamano'

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

ENV['config'] = File.expand_path('../files/alamano.yml', __FILE__)