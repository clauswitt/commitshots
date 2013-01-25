require 'commitshots/options'
require 'commitshots/backends/git'
require 'commitshots/backends/hg'
require 'commitshots/commits'

options = Commitshots::Options.get_commandline_options
phantomScript = File.join(File.dirname(__FILE__), 'phantomjs/screenshot.js')
url = ARGV[0]
width = options[:width]
height = options[:height]
backend = Class.by_name("Commitshots::Backends::#{options[:backend].capitalize}").new


num = 0
baseFileName = 'screenshots/image-'
fileType = 'png'
waitTime = 0.5

Commitshots::Commits.new(backend).each do |id, msg|
  sleep(waitTime)
  fileName = "#{baseFileName}#{"%08d" % num}.#{fileType}"
  `phantomjs #{phantomScript} "#{url}" "#{fileName}" #{width} #{height}`
  num = num + 1
end
