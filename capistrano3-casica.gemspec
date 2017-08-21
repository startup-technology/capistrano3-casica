# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano3/casica/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-casica"
  spec.version       = Capistrano3::Casica::VERSION
  spec.authors       = ["Yuta Igarashi"]
  spec.email         = ["y.iga.thunder@gmail.com"]

  spec.summary       = %q{Capistrano 3.x plugin for casica}
  spec.description   = %q{Capistrano 3.x plugin for casica}
  spec.homepage      = "https://github.com/startup-technology/capistrano3-casica"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.0"
  spec.add_dependency "casica", "~> 0.1.3"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
