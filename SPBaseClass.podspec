
Pod::Spec.new do |s|

  s.name         = "SPBaseClass"
  s.version      = "0.0.1"
  s.summary      = "Some architecture base class.一些架构上的基类，方便开发者加入项目."


  s.homepage     = "https://github.com/lishiping/SPBaseClass.git"
  s.license      = "LICENSE"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "lishiping" => "83118274@qq.com" }

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/lishiping/SPBaseClass.git", :tag => s.version }

   s.source_files  = 'SPBaseClass/SPBaseClass/*.{h,m,mm,cpp,c}', 'SPBaseClass/SPBaseClass/*/*.{h,m,mm,cpp,c}'
   s.public_header_files = 'SPBaseClass/SPBaseClass/*.h', 'SPBaseClass/SPBaseClass/*/*.h'

  s.framework  = "UIKit"
  s.requires_arc = true

end
