require 'optparse'
require 'commitshots/commits'

options = {}

optparse = OptionParser.new do|opts|
   # Set a banner, displayed at the top
   # of the help screen.
   opts.banner = "Usage: commitshots [OPTIONS] url"


   options[:width] = 800
   opts.on( '--width WIDTH', 'Width of the browser window' ) do |width|
     options[:width] = width
   end

   options[:height] = 600
   opts.on( '--height HEIGHT', 'Height of the browser window' ) do |height|
     options[:height] = height
   end

   # This displays the help screen, all programs are
   # assumed to have this option.
   opts.on( '-h', '--help', 'Display this screen' ) do
     puts opts
     exit
   end
 end

optparse.parse!

phantomScript = File.join(File.dirname(__FILE__), 'lib/screenshot.js')
url = ARGV[0]
width = options[:width]
height = options[:height]

num = 0
baseFileName = 'screenshots/image-'
fileType = 'png'
waitTime = 0.5

Commitshots::Commits.new.each do |id, msg|
  sleep(waitTime)
  fileName = "#{baseFileName}#{"%08d" % num}.#{fileType}"
  `phantomjs #{phantomScript} "#{url}" "#{fileName}" #{width} #{height}`
  num = num + 1
end
