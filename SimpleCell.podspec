Pod::Spec.new do |spec|
  spec.name         = "SimpleCell"
  spec.version      = "0.4.0"
  spec.summary      = "The Simple Cell is A Swift Extension for Reusable Collection View Cell and Table View Cell"
  spec.homepage     = "https://github.com/devmjun/simplecell"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "devmjun" => "dev.mjun@gmail.com" }
  spec.source       = { :git => "https://github.com/devmjun/SimpleCell.git", 
                        :tag => spec.version.to_s }
  spec.source_files  = "Sources/*"
  spec.exclude_files = "Sources/*.plist"
  spec.ios.deployment_target = "8.0"
  spec.swift_version = "4.2"
end
