module Geckoboard
  module Request
    include ::HTTParty

    protected

    # Internal: Basic auth hash.
    #
    # Returns a hash.
    def auth
      {:username => Geckoboard.api_key, :password => "geckoboard-gem"}
    end
  end
end
