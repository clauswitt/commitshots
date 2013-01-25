# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'commitshots/version'

Gem::Specification.new do |s|
  s.name        = 'commitshots'
  s.version     = Commitshots::VERSION
  s.date        = '2013-01-22'
  s.summary     = "commitshots"
  s.description = "a little utility to create a screenshot from each commit of a project"
  s.authors     = ["Claus Witt"]
  s.email       = 'wittnezz@gmail.com'
  s.files       = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.homepage    = 'http://rubygems.org/gems/commitshots'
  s.require_paths = ["lib"]
end
