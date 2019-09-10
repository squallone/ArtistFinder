platform :ios, '11.0'
inhibit_all_warnings!

# Podfile
use_frameworks!

target 'ArtistFinder' do

  pod "Pulsator"
  pod 'SkyFloatingLabelTextField', '~> 3.0'
  pod 'RxSwift', '~> 5'
  pod 'RxCocoa', '~> 5'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "#{target.name}"
  end
end
