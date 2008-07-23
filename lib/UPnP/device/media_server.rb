require 'rubygems'
require 'UPnP/device'
require 'UPnP/service/content_directory'
require 'UPnP/service/connection_manager'

class UPnP::Device::MediaServer < UPnP::Device

  VERSION = '1.0'

  add_service_id UPnP::Service::ContentDirectory, 'ContentDirectory'
  add_service_id UPnP::Service::ConnectionManager, 'ConnectorManager'

  ##
  # Adds directory and name options.

  def self.option_parser
    super do |option_parser, options|
      options[:directories] = []
      options[:name] = Socket.gethostname.split('.', 2).first

      option_parser.banner = <<-EOF
Usage: #{option_parser.program_name} [options]

Starts a UPnP media server.  If no directories are given, serves content in
the current directory.
      EOF

      option_parser.separator ''

      option_parser.on('-d', '--directory=DIRECTORY',
                       'Expose a directory to the media server') do |value|
        options[:directories] << value
      end

      option_parser.on('-n', '--name=NAME',
                       'Set the MediaServer\'s name') do |value|
        options[:name] = value
      end
    end
  end

  ##
  # Runs a MediaServer.

  def self.run(argv = ARGV)
    super

    device = create 'MediaServer', @options[:name] do |ms|
      ms.manufacturer     = 'Seattle Ruby Brigade'
      ms.manufacturer_url = 'http://seattlerb.org'

      ms.model_description = "Ruby Media Server version #{ms.class::VERSION}"
      ms.model_name        = 'Ruby Media Server'
      ms.model_url         = 'http://seattlerb.org/UPnP-MediaServer'
      ms.model_number      = UPnP::Device::MediaServer::VERSION

      ms.add_service 'ContentDirectory' do |cd|
        @options[:directories].each do |directory|
          cd.add_directory directory
        end
      end

      ms.add_service 'ConnectionManager'
    end

    device.run
  end

end

