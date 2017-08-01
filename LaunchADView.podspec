Pod::Spec.new do |s|
  s.name         = "LaunchADView" 
  s.version      = "1.0"
  s.summary      = "Cocoapod first version"
  s.homepage     = "https://github.com/jihongboo/LaunchADView"
  s.license      = "MIT"
  s.author       = { "Zac" => "jihongboo@qq.com" }
  s.source       = { :git => "https://github.com/jihongboo/LaunchADView.git", :tag => "1.0" }
  s.ios.deployment_target = '8.0'
  s.platform     = :ios, '8.0'
  s.source_files = 'LaunchADView/*.swift'
  s.framework    = 'UIKit'
  s.requires_arc = true
end
