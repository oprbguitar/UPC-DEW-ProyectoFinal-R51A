Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['471477062928878'], ENV['d3d75637dd290f8df0cb6f8a19724d42']
end