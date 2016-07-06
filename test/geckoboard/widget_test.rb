require 'minitest_helper'
require 'json'

describe Geckoboard::Widget do
  let(:widget) { Geckoboard::Widget.new(ENV['GECKOBOARD_WIDGET']) }

  it "can initialize with an id" do
    widget.id.must_equal Geckoboard.widget_id
  end

  describe "Push without data" do
    before do
      # VCR.use_cassette('send_without_data') do
      #   @response = widget.update
      # end
    end
  end
  describe "Push" do

    it "send without data" do
      VCR.use_cassette('send_without_data') do
         # response = widget.update
         # response = Net::HTTP.get_response(URI('http://www.iana.org/domains/example/'))
         # assert_match /Example Domains/, response.body
         # assert_equal JSON.parse('{"message":"empty request body"}'), JSON.parse(response.body)

      end
    end




    it "sends data" do
      VCR.use_cassette('send_with_data') do
        data = { item: 15, min: { value: 10 }, max: { value: 30 } }

        # widget.expects(:post).with(JSON.parse(data))
        response = widget.update(data)
        assert_equal JSON.parse('{"success":true}'), JSON.parse(response.body)
      end
    end

    # it "ensures timestamp is unix timestamp" do
    #   time = Time.now
    #   unix_time = time.to_i

    #   widget.expects(:post).with({:timestamp => unix_time})
    #   widget.update({:timestamp => time})
    # end

    # it "can be destroyed" do
    #   widget.expects(:delete)
    #   widget.destroy
    # end
  end # Push


end
