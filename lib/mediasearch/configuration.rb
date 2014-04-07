module Mediasearch
  class Configuration
    attr_accessor :api_key

    def valid?
      !api_key.nil?
    end
  end
end