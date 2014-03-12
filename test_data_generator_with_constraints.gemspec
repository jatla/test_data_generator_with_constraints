# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "test_data_generator_with_constraints"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jatla"]
  s.date = "2014-03-12"
  s.description = "Given a model as ruby hash and constraints as ruby procs, test data is generated based on allpairs methodology and constraints applied to prune the data set"
  s.email = "jayaprakash.atla@gmail.com"
  s.executables = ["test_data_generator_with_constraints.rb"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/test_data_generator_with_constraints.rb",
    "examples/sample_model.rb",
    "examples/sample_output.txt",
    "lib/test_data_generator_with_constraints.rb",
    "spec/spec_helper.rb",
    "spec/test_data_generator_with_constraints_spec.rb",
    "test_data_generator_with_constraints.gemspec"
  ]
  s.homepage = "http://github.com/jatla/test_data_generator_with_constraints"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Test data generator for hierarchical modelsusing allpairs methodology"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pairwise>, ["~> 0.2.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<pairwise>, ["~> 0.2.1"])
    else
      s.add_dependency(%q<pairwise>, ["~> 0.2.1"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<pairwise>, ["~> 0.2.1"])
    end
  else
    s.add_dependency(%q<pairwise>, ["~> 0.2.1"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<pairwise>, ["~> 0.2.1"])
  end
end

