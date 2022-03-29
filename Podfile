# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

def shared_pods
    # Pods for shared
    pod 'LGAlertView', '~>2.4.0'
end

def multi_client
    pod 'Toast-Swift'
end

def second_client
    pod 'EzPopup'
end

target 'MultiClient' do
    # Pods for MultiClient

    shared_pods
    multi_client

end

target 'SecondClient' do
    # Pods for SecondClient

    shared_pods
    second_client

end
