require 'rubygems'
require 'UPnP/device'
require 'UPnP/service/content_directory'
require 'UPnP/service/connection_manager'

class UPnP::Device::MediaServer < UPnP::Device

  VERSION = '1.0'

  add_service_id UPnP::Service::ContentDirectory, 'ContentDirectory'
  add_service_id UPnP::Service::ConnectionManager, 'ConnectorManager'

end

