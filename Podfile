use_frameworks!

abstract_target 'LibSignalProtocolSwift' do

  # Pods for LibSignalProtocolSwift

  # Protocol Buffers in Swift
  pod 'SwiftProtobuf', '~> 1.5.0'

  # Elliptic Curve functions
  pod 'Curve25519', '~> 1.1'

  # Cryptographic functions powered by CommonCrypto
  pod 'CommonCryptoModule', '~> 1.0.2'


  # iOS
  target 'SignalProtocol iOS' do
    platform :ios, '9.0'
    
    target 'SignalProtocol Tests' do
      inherit! :search_paths
      # Pods for testing

    end
  end


  # macOS
  target 'SignalProtocol macOS' do
    platform :osx, '10.9'
    # Pods for LibSignalProtocolSwift macOS
  end


  # tvOS
  target 'SignalProtocol tvOS' do
    platform :tvos, '9.0'
    # Pods for LibSignalProtocolSwift tvOS
  end


  # watchOS
  target 'SignalProtocol watchOS' do
    platform :watchos, '4.0'
    # Pods for LibSignalProtocolSwift watchOS
  end
end
