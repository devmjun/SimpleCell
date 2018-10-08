Pod::Spec.new do |spec|
  s.name                  = "SimpleCell"
  s.version               = "0.1.0"
  s.summary               = "The SimepleCell is an extension for reuseable CollectionView Cell and TableView Cell"

  s.homepage              = "https://github.com/devmjun/SimepleCell"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "Minjun Ju" => "dev.mjun@gmail.com" }

  
  s.source                = { :git => "https://github.com/devmjun/SimepleCell.git", 
                              :tag => s.version.to_s }
  s.source_files          = "Sources/**/*"
  s.exclude_files         = "Sources/**/*.plist"
  
  s.ios.deployment_target = "9.0"
  s.swift_version         = "4.2"
end
