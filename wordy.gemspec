# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wordy/version"

Gem::Specification.new do |s|

  s.name        = "wordy"
  s.version     = Wordy::VERSION
  s.authors     = ["Spencer Steffen"]
  s.email       = ["spencer@citrusme.com"]
  s.homepage    = "https://github.com/citrus/wordy"
  s.summary     = %q{Written to help us create sample data for our applications, Wordy speaks in lorem ipsum. You can ask Wordy for paragraphs, sentences or words.}
  s.description = %q{Written to help us create sample data for our applications, Wordy speaks in lorem ipsum. You can ask Wordy for paragraphs, sentences or words. Please see documentation for more information.}

  s.rubyforge_project = "wordy"

  s.required_ruby_version = ">= 1.9"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("bundler", ">= 0")
  s.add_development_dependency("rake",    ">= 0")
  
end
