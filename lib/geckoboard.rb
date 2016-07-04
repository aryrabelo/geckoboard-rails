require 'httparty'
require "addressable/uri"

module Geckoboard
  class << self ; attr_accessor :api_key end
  def self.api_key
    @api_key ||= ENV['GECKOBOARD_API_KEY']
  end
end

require 'geckoboard/version'
require 'geckoboard/request'
require 'geckoboard/push'
require 'geckoboard/pull'
require 'geckoboard/slot'
