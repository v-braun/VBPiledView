#
#  Be sure to run `pod spec lint VBPiledView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "VBPiledView"
  s.version      = "1.0"
  s.summary      = "Simple and beautiful stacked UIView to use as a replacement for an UITableView, UIImageView or as a menu."

  s.description  = <<-DESC
                   Inspired by [this](http://theultralinx.com/2015/10/inspirational-ui-design-15/) post from [ULTRALINX](http://theultralinx.com/)

                  ![image](http://a4.files.theultralinx.com/image/upload/MTMzNjc1NDE5MTIyNTQzMjM1.gif)

                   DESC

  s.homepage     = "https://github.com/v-braun/VBPiledView"
  s.screenshots  = "https://github.com/v-braun/VBPiledView/blob/master/screen.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Viktor Braun (v_b)" => "v-braun@live.de" }
  s.social_media_url   = "https://twitter.com/v_braun"

  s.platform     = :ios
  s.platform     = :ios, "8.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/v-braun/VBPiledView.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  s.source_files  = "VBPiledView/VBPiledView/*.swift"

end
