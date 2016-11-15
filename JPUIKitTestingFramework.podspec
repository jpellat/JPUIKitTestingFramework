Pod::Spec.new do |s|  
  s.name         = "JPUIKitTestingFramework"
  s.version      = "0.0.1"
  s.summary      = "Testing classes for testing UIKit components"
  s.module_name  = "JPUIKitTestingFramework"
  s.source       = { :git => "https://github.com/curelator/JPUIKitTestingFramework" }

  s.homepage     = "https://github.com/curelator/JPUIKitTestingFramework"
  s.license      = { :type => "MIT" }
  s.authors      = { "Jordi Pellat" => "j.pellat@gmail.com", 
                     "Takeichi Kanzaki Cabrera" => "tkanzaki@curelator.com" }
  s.platform     = :ios, '9.0'
  s.source_files = "JPUIKittestingFramework", "JPUIKittestingFramework/**/*.{h,m}"
  s.public_header_files = "JPUIKittestingFramework/**/*.h"
  s.resources    = ["JPUIKittestingFramework/*.png"]
  s.framework    = "SystemConfiguration"
  
  s.description  = <<-DESC
                   A library to be able to create mocks that works when interacting with UIkit components
                   DESC

  s.dependency 'OCMockito'

end
