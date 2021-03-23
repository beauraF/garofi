require_relative "lib/garofi/version"

Gem::Specification.new do |spec|
  spec.name        = "garofi"
  spec.version     = Garofi::VERSION
  spec.summary     = "A modest environment variables loader"
  spec.homepage    = "https://github.com/beauraF/garofi"
  spec.license     = "MIT"

  spec.author      = "Florent Beaurain"
  spec.email       = "beaurain.florent@gmail.com"

  spec.files = Dir["lib/**/*", "LICENSE", "README.md"]

  spec.required_ruby_version = ">= 2.6"
end
