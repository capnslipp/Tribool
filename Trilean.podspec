Pod::Spec.new do |s|
  s.name = 'Trilean'
  s.version = '1.0.0'
  s.summary = 'A Swift µ-Library Providing a Trilean Type (AKA TriBool)'
  s.description = "A Swift micro-library that provides an Obj-C-compatible Trilean enum type, for representing 3-value logic states: `.true`, `.false`, and `.indeterminate`."
  s.homepage = 'https://github.com/capnslipp/Trilean'
  s.license = { :type => 'Public Domain', :file => 'LICENSE' }
  s.author = { 'capnslipp' => 'Trilean@capnslipp.com' }
  s.source = { :git => 'https://github.com/capnslipp/Trilean.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/capnslipp'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.source_files = 'Sources/**/*'
end
