require_relative "lib/jsoneditor/rails/version"

Gem::Specification.new do |spec|
  spec.name = "jsoneditor-rails"
  spec.version = Jsoneditor::Rails::VERSION
  spec.authors = ["Javier Julio"]
  spec.email = ["javier@jackpocket.com"]

  spec.summary = "Use JSON Editor with Rails 4+"
  spec.description = "This gem provides JSON Editor for your Rails 4+ application."
  spec.homepage = "https://github.com/jackpocket/jsoneditor-rails"
  spec.license = "MIT"

  spec.files = Dir["README.md", "LICENSE*", "lib/**/*.rb", "vendor/**/{.*,*}"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "railties", ">= 3.0"
end
