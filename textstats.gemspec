# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{textstats}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Scharkow"]
  s.date = %q{2009-07-01}
  s.email = %q{michael@underused.org}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/textstats.rb",
     "test/test_helper.rb",
     "test/textstats_test.rb",
     "textstats.gemspec"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/underused/textstats}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "test/test_helper.rb",
     "test/textstats_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
