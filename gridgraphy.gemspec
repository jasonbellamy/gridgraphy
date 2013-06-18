# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gridgraphy/version'

Gem::Specification.new do |spec|
  spec.name          = "gridgraphy"
  spec.version       = Gridgraphy::VERSION
  spec.authors       = ["Jason Bellamy"]
  spec.email         = ["j@sonbellamy.com"]
  spec.summary       = "Gridgraphy is a highly configurable, and incredibly flexible Compass extension that enables you to quickly and easily build semantic CSS grids."
  spec.description   = "Whether you're developing a small single page site or architecting a large scale responsive grid system, Gridgraphy will help you get the job done faster."
  spec.homepage      = "https://github.com/jasonbellamy/gridgraphy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "compass", [">= 0.12.2"]
  spec.add_dependency "sass", [">= 3.2.0"]
end
