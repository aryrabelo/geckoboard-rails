require 'minitest_helper'

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
      puts widget.update
    end


    it "sends data" do
      data = {:value => Geckoboard.widget_id }

      widget.expects(:post).with(data)
      widget.update(data)
    end

    it "ensures timestamp is unix timestamp" do
      time = Time.now
      unix_time = time.to_i

      widget.expects(:post).with({:timestamp => unix_time})
      widget.update({:timestamp => time})
    end

    it "can be destroyed" do
      widget.expects(:delete)
      widget.destroy
    end
  end # Push


end
