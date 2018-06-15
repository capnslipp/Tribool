Pod::Spec.new do |s|
  s.name = 'Tribool'
  s.version = '1.1.1'
  s.summary = 'A Swift µ-Library Providing a Tribool Type (AKA Trilean)'
  s.description = "A Swift micro-library that provides an Obj-C-compatible Tribool enum type, for representing 3-value logic states: `.true`, `.false`, and `.indeterminate`."
  s.homepage = 'https://github.com/capnslipp/Tribool'
  s.license = { :type => 'Public Domain', :file => 'LICENSE' }
  s.author = { 'capnslipp' => 'Tribool@capnslipp.com' }
  s.source = { :git => 'https://github.com/capnslipp/Tribool.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/capnslipp'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.source_files = 'Sources/**/*'
end
