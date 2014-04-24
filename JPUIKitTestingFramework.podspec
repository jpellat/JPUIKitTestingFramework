Pod::Spec.new do |s|  
  s.name         = "JPUIKitTestingFramework"
  s.version      = "0.0.1"
  s.summary      = "Testing classes for testing UIKit components"

  s.description  = <<-DESC
                   A library to be able to create mocks that works when interacting with UIkit components
                   DESC

  s.homepage     = "http://www.github.com/jpellat/JPUIKittestingFramework"
  s.license      = 'MIT'
  s.author       = { "Jordi Pellat" => "j.pellat@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source_files  = 'JPUIKittestingFramework', 'JPUIKittestingFramework/**/*.{h,m}'
  s.public_header_files = 'JPUIKittestingFramework/**/*.h'
  s.resources    = "JPUIKittestingFramework/*.png"
  s.framework    = 'SystemConfiguration'
  s.requires_arc = true

  s.dependency 'OCMockito'

end