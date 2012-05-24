Gem::Specification.new do |s|
  s.name        = 'huami'
  s.version     = '1.0.2'
  s.date        = '2012-05-24'
  s.summary     = 'Huami'
  s.description = 'Manage your password in rememberable way.'
  s.executables << 'huami'
  s.authors     = ['Wei Zhu']
  s.email       = 'yesmeck@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://rubygems.org/gems/huami'
  s.add_runtime_dependency 'highline'
end
