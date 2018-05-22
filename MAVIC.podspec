#
# Be sure to run `pod lib lint MAVIC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MAVIC'
  s.version          = '1.0.1'
  s.summary          = 'An experimental Objective-C design pattern.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'MAVIC is an Objective-C design pattern that is the foundation of many iOS applications. MAVIC works by separating the heavy lifting away from the view controller, allowing the class to be as decoupled as possible. This will not only benefit your code from a testing perspective, but will also ensure your architecture is more collaboratively inviting and developer accessible by not potentially adding extraneous lines of code for which the MVC pattern is notorious.'

  s.homepage         = 'https://github.com/IHEARTCOOKIES/MAVIC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Filip Busic' => 'filipbusic12@gmail.com' }
  s.source           = { :git => 'https://github.com/IHEARTCOOKIES/MAVIC.git', :tag => s.version.to_s }
  s.requires_arc     = true
  
  s.ios.deployment_target = '8.0'

  s.source_files = 'MAVIC/Classes/**/*'
end
