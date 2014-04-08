require 'tvdb_party'

module Mediasearch
  class Tv < Media
    def self.check_client
      if Mediasearch.tvdb_ready?
        @client = TvdbParty::Search.new(Mediasearch.tvdb_config.api_key)
        yield
      else
        raise ArgumentError, 'TVDB not configured.'
      end
    end

    def self.search(query)
      check_client do
        @client.search(query)
      end
    end
  end
end