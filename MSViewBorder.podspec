
Pod::Spec.new do |s|
s.name         = "MSViewBorder"
s.version      = "1.0.2"
s.summary      = "添加任意方向边框"
s.description  = <<-DESC
给view添加任意方向边框
DESC
s.homepage     = "https://github.com/msbaby520/MSViewBorder"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "ms" => "msbaby_jason@163.com" }
s.platform     = :ios, "7.0"
s.source       = { :git => "https://github.com/msbaby520/MSViewBorder.git", :tag => s.version }
s.source_files  = "Classes", "MSViewBorder/MSViewBorder/Classes/**/*.{h,m}"
s.requires_arc = true
s.frameworks = "Foundation","UIKit"
s.dependency 'Masonry'
end