# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/UPnP/device/media_server'

Hoe.new 'UPnP-MediaServer', UPnP::Device::MediaServer::VERSION do |p|
  p.rubyforge_name = 'seattlerb'
  p.developer 'Eric Hodel', 'drbrain@segment7.net'

  p.extra_deps << ['UPnP', '>= 1.1.0']
  p.extra_deps << ['UPnP-ContentDirectory', '>= 1.0.0']
  p.extra_deps << ['UPnP-ConnectionManager', '>= 1.0.0']
end

# vim: syntax=Ruby
