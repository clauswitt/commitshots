Gem::Specification.new do |s|
  s.name        = 'commitshots'
  s.version     = '0.0.5'
  s.executables << 'commitshots'
  s.date        = '2013-01-22'
  s.summary     = "commitshots"
  s.description = "a little utility to create a screenshot from each commit of a project"
  s.authors     = ["Claus Witt"]
  s.email       = 'wittnezz@gmail.com'
  s.files       = ["lib/commitshots.rb", "lib/commitshots/commits.rb", "lib/commitshots/phantomjs/screenshot.js"]
  s.homepage    =
    'http://rubygems.org/gems/commitshots'
end
