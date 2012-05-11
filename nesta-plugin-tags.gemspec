# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-plugin-tags/version"

Gem::Specification.new do |s|
  s.name        = "nesta-plugin-tags"
  s.version     = Nesta::Plugin::Tags::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nathanael Jones"]
  s.email       = ["nathanael.jones@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Adds support for article tags, wordpress style}
  s.description = %q{Offers query methods and extensions to the Page class}

  s.rubyforge_project = "nesta-plugin-tags"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end
