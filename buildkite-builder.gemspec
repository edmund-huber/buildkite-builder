$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'buildkite-builder'

Gem::Specification.new do |spec|
  spec.name          = "buildkite-builder"
  spec.version       = Buildkite::Builder::VERSION
  spec.authors       = ["Ngan Pham", "Andrew Lee"]
  spec.email         = ["gusto-opensource-buildkite@gusto.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/Gusto/buildkite-builder'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Gusto/buildkite-builder"
  spec.metadata["changelog_uri"] = "https://github.com/Gusto/buildkite-builder/blob/master/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/Gusto/buildkite-builder/issues"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = ['buildkite-builder']
  spec.require_paths = ["lib"]
end