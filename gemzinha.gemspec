require_relative 'lib/gemzinha/version'

Gem::Specification.new do |spec|
  spec.name          = "gemzinha"
  spec.version       = Gemzinha::VERSION
  spec.authors       = ["Luan Ribeiro"]
  spec.email         = ["luan.mesquita@hotmail.com"]

  spec.summary       = %q{The gemzinha is my first release gem.}
  spec.description   = %q{The gemzinha at the moment doesn't do anything interesting.}
  spec.homepage      = "https://rubygems.org/gems/gemzinha"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/luanmmr/gemzinha"
  spec.metadata["changelog_uri"] = "https://github.com/luanmmr/gemzinha/blob/master/CHANGLOG.md"

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "heartcheck"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
