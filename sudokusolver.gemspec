# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sudokusolver'

Gem::Specification.new do |spec|
  spec.name          = "sudokusolver"
  spec.version       = SudokuSolver::VERSION
  spec.authors       = ["Martin-Louis Bright"]
  spec.email         = ["mlbright@gmail.com"]
  spec.summary       = %q{Commandline program and library for solving Sudoku puzzles}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
