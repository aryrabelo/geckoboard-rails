require 'rubygems'
require 'bundler/setup'

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/unit'
require 'mocha/mini_test'
require 'webmock/minitest'

require 'geckoboard'
require 'pry'


require 'test/unit'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock # or :fakeweb
end


