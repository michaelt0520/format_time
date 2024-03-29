lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "format_time/version"

Gem::Specification.new do |spec|
  spec.name          = "format_time"
  spec.version       = FormatTime::VERSION
  spec.authors       = ["nguyenthanhcong101096"]
  spec.email         = ["nguyenthanhcong101096@gmail.com"]

  spec.summary       = "this is the all module for wakuwaku appkication"
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "https://github.com/nguyenthanhcong101096/omniauth-zalo"
  spec.license       = "Apache-2.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency 'web-console', '~> 3.3', '>= 3.3.0'
  spec.add_development_dependency "rake", "~> 10.0"
end
