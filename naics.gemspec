# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naics/version'

Gem::Specification.new do |spec|
  spec.name          = "naics"
  spec.version       = NAICS::VERSION
  spec.authors       = ["Ed de Almeida"]
  spec.email         = ["edvaldoajunior@gmail.com"]

  spec.summary       = %q{This gem gets the description corresponding to a certain NAICS code.}
  spec.description   = %q{This gem gets the description corresponding to a certain NAICS code. NAICS stands for North America Industry Classification System and this code is useful in any system dealing with companies' registration.}
  spec.homepage      = "https://github.com/EdDeAlmeidaJr/naics_search"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "nokogiri", "~> 1.7"
  spec.add_runtime_dependency "httparty", "~> 0.14"
  spec.add_runtime_dependency "slop", "~> 4.4"
end
