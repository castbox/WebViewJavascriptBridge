Pod::Spec.new do |s|
  s.name         = 'WebViewJavascriptBridge'
  s.version      = '7.1.1'
  s.summary      = 'An iOS & OSX bridge for sending messages between Obj-C/Swift and JavaScript in WKWebViews & WebViews.'
  s.homepage     = 'https://github.com/castbox/WebViewJavascriptBridge'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'marcuswestin' => 'marcus.westin@gmail.com' }
  s.source       = { :git => 'https://github.com/castbox/WebViewJavascriptBridge.git', :tag => s.version.to_s }
  s.platforms    = { :ios => "8.0", :osx => "" }
  s.requires_arc = true
  
  s.ios.source_files         = 'WebViewJavascriptBridge/*.{h,m}'
  s.ios.private_header_files = 'WebViewJavascriptBridge/WebViewJavascriptBridge_JS.h'
  s.osx.source_files         = 'WebViewJavascriptBridge/*.{h,m}'
  s.osx.private_header_files = 'WebViewJavascriptBridge/WebViewJavascriptBridge_JS.h'
  
  s.frameworks       = 'WebKit'
  s.ios.frameworks   = 'UIKit', 'WebKit'
  
  s.subspec 'Privacy' do |ss|
      ss.resource_bundles = {
          s.name => 'WebViewJavascriptBridge/Resources/PrivacyInfo.xcprivacy'
      }
  end
end
