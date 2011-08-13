# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faekroq/version"

Gem::Specification.new do |s|
  s.name        = "faekroq"
  s.version     = FaekRoq::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joel Helbling"]
  s.email       = ["joel@joelhelbling.com"]
  s.homepage    = "http://github.com/joelhelbling/faekroq"
  s.summary     = %q{Flimsily encrypted password for programmatic access (for your tests).}
  s.description = %q{Sometimes you want your tests to be able to access resources which are password-protected.  This allows you to avoid storing such passwords in plain text.  If this sounds like a spotty, not-very-foolproof idea, then good.  You're awake and paying attention.  Caveat Emptor.}

  s.rubyforge_project = "faekcroq"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'crypt', '>= 1.1.4' if RUBY_VERSION =~ /^1\.8\./
  s.add_dependency 'crypt19', '>= 1.2.1' if RUBY_VERSION == '1.9.2'

  s.add_development_dependency 'rspec', '>= 2.6.0'
end
