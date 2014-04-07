# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mediasearch/version'

Gem::Specification.new do |spec|
  spec.name          = "mediasearch"
  spec.version       = Mediasearch::VERSION
  spec.authors       = ["Benjamin Hsieh, Ben's Potatoes"]
  spec.email         = ["benspotatoes@gmail.com"]
  spec.summary       = %q{Searches multiple libraries for media titles.}
  spec.description   = %q{Makes searching for movies and tv shows easier.}
  spec.homepage      = "http://github.com/benspotatoes/effulgent-water"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'tvdb_party', '~> 0.7.0'
  spec.add_development_dependency 'themoviedb', '~> 0.0.21'
end
