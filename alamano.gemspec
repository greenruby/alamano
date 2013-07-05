# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require 'alamano/version'

Gem::Specification.new do |gem|
  gem.authors       = ["mose"]
  gem.email         = ["mose@mose.com"]
  gem.description   = %q{A very manual dead simple static website generator in ruby.}
  gem.summary       = %q{A very manual dead simple static website generator in ruby}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})

  gem.name          = "alamano"
  gem.require_paths = ["lib"]
  gem.version       = Alamano::VERSION

  gem.add_dependency "rake"
  gem.add_dependency "rdiscount"
  gem.add_dependency "haml"
  gem.add_dependency "json"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "awesome_print"

end
