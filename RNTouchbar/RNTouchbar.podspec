require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "RNFS"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/jihoobyeon/react-native-touchbar"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = pjson["author"]
  
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'
  s.osx.deployment_target = '10.10'

  s.source          = { :git => "https://github.com/jihoobyeon/react-native-touchbar", :tag => "v#{s.version}" }
  s.source_files    = '*.{h,m}'
  s.preserve_paths  = "**/*.js"

  s.dependency 'RCTViewManager'
  s.dependency 'RCTEventDispatcher'
  s.dependency 'RCTShadowView'
end
