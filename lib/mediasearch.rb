require "mediasearch/version"
require 'mediasearch/configuration'
require 'mediasearch/media'
require 'mediasearch/movie'
require 'mediasearch/tv'

module Mediasearch
  class << self
    def tmdb_config
      @tmdb_config ||= Configuration.new
    end

    def tvdb_config
      @tvdb_config ||= Configuration.new
    end

    def init_tmdb
      unless tmdb_config
        tmdb_config
      end
      yield(@tmdb_config)
    end

    def init_tvdb
      unless tvdb_config
        tvdb_config
      end
      yield(@tvdb_config)
    end

    def tmdb_ready?
      !tmdb_config.api_key.nil?
    end

    def tvdb_ready?
      !tvdb_config.api_key.nil?
    end

    def init(api_keys)
      if api_keys[:tvdb] && api_keys[:tmdb]
        tvdb_config.api_key = api_keys[:tvdb]
        tmdb_config.api_key = api_keys[:tmdb]
        return api_keys
      else
        raise ArgumentError, 'Invalid API keys.'
      end
    end
  end
end