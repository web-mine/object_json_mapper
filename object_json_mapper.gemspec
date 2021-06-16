# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_json_mapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'object_json_mapper'
  spec.version       = ObjectJSONMapper::VERSION
  spec.authors       = 'Arco Overbeek'
  spec.email         = 'arco@web-mine.nl'

  spec.summary       = 'Add the power of ActiveRecord to your API client.'
  spec.homepage      = 'https://github.com/InspireNL/object_json_mapper'
  spec.license       = 'Nonstandard'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '~> 5.0'
  spec.add_dependency 'activesupport', '~> 5.0'
  spec.add_dependency 'rest-client', '~> 2.1'

  spec.add_development_dependency 'awesome_print', '~> 1.7'
  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "kaminari", ">= 1.2.1"
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'pry-byebug', '~> 3.4'
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock', '~> 2.3'


end
