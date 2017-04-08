# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsoneditor/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jsoneditor-rails"
  spec.version       = Jsoneditor::Rails::VERSION
  spec.authors       = ["Javier Julio"]
  spec.email         = ["jjfutbol@gmail.com"]

  spec.summary       = "Use JSON Editor with Rails 4+"
  spec.description   = "This gem provides JSON Editor for your Rails 4+ application."
  spec.homepage      = "https://github.com/javierjulio/jsoneditor-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sass-rails"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
