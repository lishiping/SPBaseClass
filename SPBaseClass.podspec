
Pod::Spec.new do |s|

  s.name         = "SPBaseClass"
  s.version      = "0.1.1"
  s.summary      = "Some architecture base class.一些架构上的基类，方便开发者加入项目."
  s.homepage     = "https://github.com/lishiping/SPBaseClass.git"
  s.license      = "LICENSE"
  s.author       = { "lishiping" => "83118274@qq.com" }

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/lishiping/SPBaseClass.git", :tag => s.version }

  s.dependency 'SPFastPush'           
  s.dependency 'SafeData'
  s.dependency 'SPCategory'

   s.source_files  = 'SPBaseClass/SPBaseClass/*.{h,m,mm,cpp,c}', 'SPBaseClass/SPBaseClass/*/*.{h,m,mm,cpp,c}'
   s.public_header_files = 'SPBaseClass/SPBaseClass/*.h', 'SPBaseClass/SPBaseClass/*/*.h'

  s.frameworks = 'UIKit','Foundation'
  s.requires_arc = true

end
