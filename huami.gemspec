Gem::Specification.new do |s|
  s.name        = 'huami'
  s.version     = '0.0.5'
  s.date        = '2012-03-15'
  s.summary     = 'Huami'
  s.description = 'Manage your password in rememberable way.'
  s.executables << 'huami'
  s.authors     = ['Wei Zhu']
  s.email       = 'yesmeck@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://rubygems.org/gems/huami'
  s.add_runtime_dependency 'highline'
end
