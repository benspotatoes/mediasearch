# Mediasearch

Searches multiple libraries for movies and tv shows, maybe music someday.

## Libraries

Current dependencies in use with `mediasearch`.

### Movies

* [themoviedb](http://github.com/sicophrenic/themoviedb)
* [tvdb_party](http://github.com/sicophrenic/tvdb_party)

## Installation

Add this line to your application's Gemfile:

    gem 'mediasearch'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mediasearch

## Usage

```
# Require the Mediasearch gem
require 'mediasearch'

# Throw in your API keys
Mediasearch.init_tmdb do |config|
  config.api_key = 'TMDB_API_KEY'
end

Mediasearch.init_tvdb do |config|
  config.api_key = 'TVDB_API_KEY'
end

# Or do it all at once
Mediasearch.init({
  :tmdb => 'TMDB_API_KEY',
  :tvdb => 'TVDB_API_KEY'
})

# Now search for a movie
Mediasearch::Movie.search('captain winter')
=> [#<Tmdb::Movie:0x007fe7a28c1ae0
  @adult=false,
  @backdrop_path="/4qfXT9BtxeFuamR4F49m2mpKQI1.jpg",
  @id=100402,
  @original_title="Captain America: The Winter Soldier",
  @popularity=70.4275084023071,
  @poster_path="/pH4oeiZAh9a40tly4D0l6aAB3ms.jpg",
  @release_date="2014-04-04",
  @title="Captain America: The Winter Soldier",
  @vote_average=6.6,
  @vote_count=90>]

# Or maybe a tv show (note the lowercase 'v' in 'Tv')
Mediasearch::Tv.search('game thrones')
=> [{"seriesid"=>"121361",
  "language"=>"en",
  "SeriesName"=>"Game of Thrones",
  "banner"=>"graphical/121361-g19.jpg",
  "Overview"=>
   "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.",
  "FirstAired"=>"2011-04-17",
  "Network"=>"HBO",
  "IMDB_ID"=>"tt0944947",
  "zap2it_id"=>"SH01389809",
  "id"=>"121361"}]
```

## Contributing

1. Fork it ( http://github.com/benspotatoes/mediasearch/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
