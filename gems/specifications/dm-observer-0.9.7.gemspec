Gem::Specification.new do |s|
  s.name = %q{dm-observer}
  s.version = "0.9.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mark Bates"]
  s.date = %q{2008-10-21}
  s.description = %q{DataMapper plugin for observing Resource Models}
  s.email = ["mark@mackframework.com"]
  s.extra_rdoc_files = ["README.txt", "LICENSE", "TODO"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.txt", "Rakefile", "TODO", "lib/dm-observer.rb", "lib/dm-observer/version.rb", "spec/integration/dm-observer_spec.rb", "spec/spec.opts", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sam/dm-more/tree/master/dm-observer}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{datamapper}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{DataMapper plugin for observing Resource Models}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<dm-core>, ["= 0.9.7"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<dm-core>, ["= 0.9.7"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<dm-core>, ["= 0.9.7"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
