Gem::Specification.new do |s|
  s.name        = 'plugger'
  s.version     = '0.0.2'
  s.date        = '2013-06-18'
  s.summary     = "Restores Rails plugins to Rails 4"
  s.description = "A simple thing that loads plugins"
  s.authors     = ["Kevin Lawver"]
  s.email       = 'kevin@railsmachine.com'
  s.files       = ["lib/plugger.rb",'lib/plugger/plugger_tasks.rb']
  s.executables << 'plugger'
  s.homepage    = 'http://github.com/railsmachine/plugger'
end