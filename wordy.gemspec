# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wordy/version"

Gem::Specification.new do |s|

  s.name        = "wordy"
  s.version     = Wordy::VERSION
  s.authors     = ["Spencer Steffen"]
  s.email       = ["spencer@citrusme.com"]
  s.homepage    = "https://github.com/citrus/wordy"
  s.summary     = %q{Wordy speaks lorem ipsum. You can ask wordy for a paragraphs, sentences or words.}
  s.description = %q{Wordy speaks lorem ipsum. You can ask wordy for a paragraphs, sentences or words. Please see readme for more information.}

  s.rubyforge_project = "wordy"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
