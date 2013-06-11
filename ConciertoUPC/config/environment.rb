# Load the rails application
require File.expand_path('../application', __FILE__)
require 'ssl_certifier'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

ENV['FACEBOOK_APP_ID'] = '471477062928878'
ENV['FACEBOOK_APP_SECRET'] = 'd3d75637dd290f8df0cb6f8a19724d42'

# Initialize the rails application
ConciertoUPC::Application.initialize!
