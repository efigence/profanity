# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'profanity/version'

Gem::Specification.new do |spec|
  spec.name          = "profanity"
  spec.version       = Profanity::VERSION
  spec.authors       = ["Marcin Świątkiewicz"]
  spec.email         = ["m.swiatkiewicz91@gmail.com"]

  spec.summary       = %q{This gem detect profanity words in text}
  spec.description   = %q{This gem provide you to check if in text is any profanity words, text can be without white characters and this stil will be work}
  spec.homepage      = "http://github.com/swiatkiewicz/profanity"
  spec.license       = "MIT"
  spec.test_files    = ["test/test_helper.rb", "test/profanity_test.rb"]
  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "'http://rubygems.com'"
  # else
    # raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
