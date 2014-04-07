require 'themoviedb'

module Mediasearch
  class Movie < Media
    def self.check_config
      if Mediasearch.tmdb_ready?
        Tmdb::Api.key(Mediasearch.tmdb_config.api_key)
        yield
      else
        raise ArgumentError, 'TMDB not configured.'
      end
    end

    def self.search(query)
      check_config do
        Tmdb::Movie.find(query)
      end
    end
  end
end