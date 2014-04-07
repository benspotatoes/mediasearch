module Mediasearch
  class Config
    def tmdb_config
      @@tmdb_config
    end

    def tvdb_config
      @@tvdb_config
    end

    def tmdb_config=(config)
      @@tmdb_config = config
    end

    def tvdb_config=(config)
      @@tvdb_config = config
    end
  end
end