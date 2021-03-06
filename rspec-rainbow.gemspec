# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rspec-rainbow"
  spec.version       = "0.2.0"
  spec.authors       = ["Mike Coutermarsh"]
  spec.email         = ["coutermarsh.mike@gmail.com"]
  spec.description   = %q{the rainbow progress formatter for RSpec}
  spec.summary       = %q{RSpec rainbow formatter}
  spec.homepage      = "https://github.com/mscoutermarsh/rspec-rainbow"
  spec.license       = "MIT"

  spec.files         = [".gitignore", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/rainbow.rb", "rspec-rainbow.gemspec"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rspec'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'rake', '~> 0'
end
