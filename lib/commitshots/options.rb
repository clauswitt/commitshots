require 'optparse'

module Commitshots
  class Options
    def self.get_commandline_options
      options = {}

      optparse = OptionParser.new do|opts|
         # Set a banner, displayed at the top
         # of the help screen.
         opts.banner = "Usage: commitshots [OPTIONS] url"


         options[:width] = 800
         opts.on( '--width WIDTH', "Width of the browser window, defaults to #{options[:width]}" ) do |width|
           options[:width] = width
         end

         options[:height] = 600
         opts.on( '--height HEIGHT', "Height of the browser window, defaults to #{options[:height]}" ) do |height|
           options[:height] = height
         end

         options[:backend] = 'git'
         opts.on( '--backend [git|hg]', "Backend to use, defaults to #{options[:backend]}") do |backend|
           options[:backend] = backend
         end

         # This displays the help screen, all programs are
         # assumed to have this option.
         opts.on( '-h', '--help', 'Display this screen' ) do
           puts opts
           exit
         end
       end

      optparse.parse!
      options
    end
  end
end