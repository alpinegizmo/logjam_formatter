Gem::Specification.new do |s|
  s.name = %q{logjam_formatter}
  s.version = "2.1.0"
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Anderson"]
  s.date = %q{2010-08-13}
  s.description = %q{Syslog-compatible rails log formatter}
  s.email = %q{david@alpinegizmo.com}
  s.files = [
     "LICENSE",
     "README.markdown",
     "logjam_formatter.gemspec",
     "lib/logjam_formatter.rb",
  ]
  s.homepage = %q{http://github.com/alpinegizmo/logjam_formatter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Syslog-compatible log formatter, works well with Logjam}
  s.test_files = [
  ]
 
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  else
  end
end
