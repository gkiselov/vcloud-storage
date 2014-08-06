# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcloud/storage/version'

Gem::Specification.new do |spec|
  spec.name          = "vcloud-storage"
  spec.version       = Vcloud::Storage::VERSION
  spec.authors       = ["Arthur Holstvoogd"]
  spec.email         = ["a.holstvoogd@nedforce.nl"]
  spec.summary       = 'Tool to create and manage VMware vCloud storage.'
  spec.description   = 'Tool to create and manage VMware vCloud storage. Supports both dependent and independent disks. Build on top vcloud-core.'
  spec.homepage      = "http://github.com/holstvoogd/vcloud-storage"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency 'vcloud-core', '~> 0.7.0'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'rubocop', '~> 0.24.0'
  spec.add_development_dependency 'simplecov', '~> 0.9.0'
  spec.add_development_dependency 'vcloud-tools-tester', '~> 0.1.0'
end
