Gem::Specification.new do |s|
  s.name = "append"
  s.summary = "My sample gem that just appends two objects together."
  s.version = "0.0.1"
  s.author = "Mazz"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files = Dir['**/**']
  s.executables = [ 'run.rb' ]
  s.test_files = Dir['test/test*.rb']
  s.has_rdoc = true
end