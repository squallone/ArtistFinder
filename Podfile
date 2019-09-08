platform :ios, '11.0'
inhibit_all_warnings!

target 'ArtistFinder' do

  pod "Pulsator"

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "#{target.name}"
  end
end
