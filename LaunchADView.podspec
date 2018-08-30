Pod::Spec.new do |s|
  s.name         = "LaunchADView" 
  s.version      = "1.2"
  s.summary      = "Support for Swift 4.2"
  s.homepage     = "https://github.com/jihongboo/LaunchADView"
  s.license      = "MIT"
  s.author       = { "Zac" => "jihongboo@qq.com" }
  s.source       = { :git => "https://github.com/jihongboo/LaunchADView.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.platform     = :ios, '9.0'
  s.source_files = 'LaunchADView/*.swift'
  s.framework    = 'UIKit'
  s.requires_arc = true
  s.swift_version = '4.2'
end
