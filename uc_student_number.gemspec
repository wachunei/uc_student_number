# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uc_student_number/version'

Gem::Specification.new do |spec|
  spec.name          = "uc_student_number"
  spec.version       = UcStudentNumber::VERSION
  spec.authors       = ["Pedro Pablo Aste Kompen"]
  spec.email         = ["wachunei@gmail.com"]

  spec.summary       = %q{Validate a student number from PUC (uc.cl)}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/wachunei/uc_student_number"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
