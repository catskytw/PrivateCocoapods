#
#  Be sure to run `pod spec lint QNAPFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "QNAPFramework"
  s.version      = "0.2.14"
  s.summary      = "A toolkit for developing app with QNAP's NAS"

  s.description  = 'A framework produted by QNAP Inc. for developers to build an app fast, which is including all NAS"s APIs you need.'
  s.homepage     = "http://gitlab.myqnapcloud.com/"
  # s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = 'GPL'
  # s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors by using the SCM log. E.g. $ git log. If no email can be
  #  found CocoaPods accept just the names.
  #

  s.author       = { "Change Liao" => "changeliao@qnap.com" }
  # s.authors      = { "Change.Liao" => "catskytw@gmail.com", "other author" => "email@address.com" }
  # s.author       = 'Change.Liao', 'other author'


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, '7.0'

  #  When using multiple platforms
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, svn and HTTP.
  #

  s.source       = { :git => "https://catskytw@bitbucket.org/catskytw/qnap_ios_framework.git"}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it include source code, for source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = 'QNAPFramework/**/*.{h,m}'
  s.exclude_files = 'QNAPFramework/**/{XMLReader,AOPProxy,QFTUTKTunnel,AOPThreadInvoker}.m'
  s.requires_arc = true

  s.subspec 'no-arc' do |sp|
    sp.source_files  = 'QNAPFramework/**/XMLReader.{h,m}', 'QNAPFramework/**/AOPProxy.{h,m}', 'QNAPFramework/**/QFTUTKTunnel.{h,m}','QNAPFramework/**/AOPThreadInvoker.{h,m}'
    sp.requires_arc = false
  end

  # s.source_files  = 'QNAPFramework', 'QNAPFramework/**/*.{h,m}'
  # s.exclude_files = 'QNAPFramework/Exclude'
  # s.public_header_files = 'Classes/**/*.h'

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "Resources/*.png"
  s.resources = [ '**/*.{xcdatamodel,xcdatamodeld,mom}', '**/*.{png,jpg,jpeg}', '**/*.xib', '**/*.bundle' ]

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.frameworks = 'CFNetwork', 'CoreData', 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'Security', 'SystemConfiguration', 'OpenGLES', 'AudioToolBox', 'MediaPlayer', 'AVFoundation', 'CoreText'


  s.library   = 'iconv', 'stdc++','bz2'
  # s.vendored_library = 'IOTCAPIs_ALL.a' ,'MediaLibraryKitUniversal.a','MobileVLCKitUniversal.a', 'upnpxUniversal.a'

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.dependency 'JSONKit', '~> 1.4'
  s.dependency 'RestKit', '~> 0.20.0rc'
  s.dependency 'MagicalRecord', '~> 2.1'
  s.dependency 'CocoaLumberjack', '1.6'
  s.dependency 'AFOAuth2Client', '~> 0.1.1'
  s.dependency 'Expecta',     '~> 0.2.2'  
  s.dependency 'SDWebImage', '~> 3.5'
  s.dependency 'CocoaAsyncSocket', '~> 7.3.2'
end
