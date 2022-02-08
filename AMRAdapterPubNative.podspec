Pod::Spec.new do |s|
  s.name             = 'AMRAdapterPubnative'
  s.version          = '2.4.4.5'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'PubNative adapter for AMR SDK.'
  s.description      = 'AMR PubNative adapter allows publishers to mediate PubNative banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-PUBNATIVE.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterPubNative/Libs/AMRAdapterPubNative.xcframework'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK', '~> 1.5.6'
  s.dependency 'HyBid', '~> 2.4.4'
end
