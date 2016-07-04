require 'minitest_helper'

describe Geckoboard do
  it "should get api key from env" do
    # ENV['GECKOBOARD_API_KEY'] = "123"
    # Geckoboard.api_key.must_equal "123"
  end

   it "should get widget key from env" do
    # ENV['GECKOBOARD_WIDGET'] = "123"
    # Geckoboard.widget_id.must_equal "123"
  end

  it "can set api key directly" do
    # Geckoboard.api_key = "123"
    # Geckoboard.api_key.must_equal "123"
  end
end
