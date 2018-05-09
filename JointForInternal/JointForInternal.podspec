#
#  Be sure to run `pod spec lint JointForInternal.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  

  s.name         = "JointForInternal"
  s.version      = "0.0.5"
  s.summary      = "不写这句验证的时候会报警，烦."

  s.description  = <<-DESC
                    不写这句验证的时候会报警，烦.贼烦
                   DESC

  s.homepage     = "https://github.com/yuchenH/JointForInternal"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "zhangjunjiecq" => "zhangjunjie@caiqr.com" }
  
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/yuchenH/JointForInternal.git", :tag => "#{s.version}" }


  s.source_files  = "JointForInternal/Internal/test.swift"

  s.dependency 'UMengUShare/UI'
  s.dependency 'UMengUShare/Social/ReducedWeChat'
  s.dependency 'UMengUShare/Social/ReducedQQ'
  s.dependency 'UMengUShare/Social/ReducedSina'
  s.dependency 'JointThirdSocial'
  s.requires_arc = true  
  #s.vendored_frameworks = 'UMSocialCore.framework','UMSocialNetwork.framework','UShareUI.framework'
  #s.vendored_libraries = 'UMSocialLog.a','SocialQQ.a','SocialSina.a','SocialWeChat.a'

  #s.xcconfig = {'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Public/UMengUShare"'}

end
