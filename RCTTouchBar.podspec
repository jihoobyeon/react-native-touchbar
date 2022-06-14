require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNTouchbar"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/jihoobyeon/react-native-touchbar"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.authors          = pjson["author"]
  
  s.osx.deployment_target = '10.15'

  s.source          = { :git => "https://github.com/jihoobyeon/react-native-touchbar.git#reboot", :tag => "v#{s.version}" }
  s.source_files    = '*.{h,m}'
  s.preserve_paths  = "*.js"

  s.dependency 'React'
end
