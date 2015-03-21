Gem::Specification.new do |gem|
  gem.description      = "Load tilt/* files according to what classes have been defined."
  gem.summary          = gem.description
  gem.authors          = ["Tom May"]
  gem.email            = ["tom@tommay.net"]
  gem.homepage         = "https://github.com/tommay/tilt-preload"
  gem.files            = `git ls-files`.split("\n") - [".gitignore", ".travis.yml"]
  gem.test_files       = `git ls-files -- spec/*`.split("\n")
  gem.name             = "tilt-preload"
  gem.require_paths    = ["lib"]
  gem.version          = "0.0.0"
  gem.license          = "MIT"
  gem.add_runtime_dependency 'tilt', "~> 2.0"
end
