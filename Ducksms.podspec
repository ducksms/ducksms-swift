Pod::Spec.new do |s|
  s.name = 'Ducksms'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://github.com/ducksms/ducksms-swift.git' }
  s.authors = 'support@ducksms.com'
  s.license = MIT
  s.homepage = 'https://ducksms.com'
  s.summary = 'Ducksms is a leading SMS messaging service provider offering one-way SMS communication services from your internet enabled computer.'
  s.documentation_url = 'https://ducksms.com'
  s.source_files = 'Ducksms/Classes/**/*.swift'
end
