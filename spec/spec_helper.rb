# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require 'rspec'
require File.join( File.dirname(__FILE__), '..', 'lib', 'httparty-with-cookies')

RSpec.configure do |config|
  config.include HTTPartyWithCookies

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end


describe "HTTParty with cookies" do
  it 'reads multiple set cookie headers and saves the cookies' do
    get 'http://localhost:4567/set_cookies'
    cookies['foo'].should eq('bar')
    cookies['hello'].should eq('world')
  end

  it 'transmits multiple cookies' do
    get 'http://localhost:4567/get_cookies'
    @last_response.body.should eq('1')
  end


end