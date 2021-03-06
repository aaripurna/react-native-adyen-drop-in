require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-adyen-drop-in"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-adyen-drop-in
                   DESC
  s.homepage     = "https://github.com/aaripurna/react-native-adyen-drop-in"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/aaripurna/react-native-adyen-drop-in.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  s.dependency "Adyen", "3.3.0"
end

