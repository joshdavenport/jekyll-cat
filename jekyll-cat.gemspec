Gem::Specification.new do |spec|
  spec.name          = "jekyll-cat"
  spec.version       = '1.1.0'
  spec.authors       = ["Josh Davenport"]
  spec.email         = ["josh@joshdavenport.co.uk"]
  spec.summary       = 'Jekyll plugin providing a method to output contents of files and URLs'
  spec.homepage      = 'https://github.com/joshdavenport/jekyll-cat'
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.0'

  spec.add_development_dependency 'jekyll', '>= 3.1'
end

