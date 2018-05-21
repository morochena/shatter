# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shatter/version"

Gem::Specification.new do |spec|
  spec.name          = "shatter-rails"
  spec.version       = Shatter::VERSION
  spec.authors       = ["Marcus Orochena"]
  spec.email         = ["marcus@orochena.net"]

  spec.summary       = %q{Shatter is a generator for Rails that seperates an existing model logic into separate files. }
  spec.description   = %q{Shatter is a generator for Rails that seperates an existing model logic into separate files. Shatter uses ActiveSupport::Conern's `included do end` block to call code in the primary model file  *in the context* of that model's class.}
  spec.homepage      = "https://github.com/morochena/shatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
