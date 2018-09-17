lib = File.expand_path("../lib",__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubyapple/version"

Gem::Specification.new do |spec|
  spec.name          = "rubyapple"
  spec.version       = Rubyapple::VERSION
  spec.authors       = ["Lars Grav"]
  spec.email         = ["larsgrav@gmail.com"]

  spec.summary       = %q{System command to logfile gem}
  spec.description   = %q{A gem to convert argument picture into apple-touch-icon and -precomposed .png files}
  spec.homepage      = "http://www.github.com/juksefantomet"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.5.1'
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = 'https://juksefantomet@git.fury.io'
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_development_dependency "bundler", "~> 1.16"
  # spec.add_development_dependency "rake", "~> 10.0"
end

