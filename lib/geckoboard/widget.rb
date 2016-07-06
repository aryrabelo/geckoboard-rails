module Geckoboard
  class Widget
    include Push
    include Pull
    include HTTParty

    attr_accessor :id

    # Initialize a new slot.
    #
    # id - A slot .
    def initialize(id)
      @id = id
    end
  end
end
