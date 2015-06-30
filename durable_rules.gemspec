Gem::Specification.new do |s|
  s.name        = 'durable_rules'
  s.version     = '0.31.1'
  s.summary     = "for real time analytics"
  s.description = "A lightweight library for real-time, consistent and scalable coordination of events."
  s.authors     = ["Jesus Ruiz"]
  s.email       = "jr3791@live.com"
  s.homepage    = "https://www.github.com/jruizgit/rules"
  s.license     = 'MIT'
  s.require_path = "librb"
  s.files = []

  
  s.extensions = Dir["src/rulesrb/extconf.rb"]
  s.files += Dir["src/rulesrb/*.{c}"]
  s.files += Dir["src/rules/*.{c,h}"] + 
    Dir["src/rules/Makefile"]
  s.files += Dir["deps/hiredis/*.{c,h}"] -
    Dir["deps/hiredis/example*"] +
    Dir["deps/hiredis/COPYING"] +
    Dir["deps/hiredis/Makefile"]
    
  s.files += Dir["librb/*.rb"]
  s.files += %w(LICENSE Rakefile)

  s.add_development_dependency "rake", "10.0"
  s.add_development_dependency "rake-compiler", "~> 0.7.1"
end