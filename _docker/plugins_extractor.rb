#!/usr/local/bin/ruby

require 'optparse'
require 'yaml'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: plugins_extractor.rb [options]"

  opts.on('-s', '--source-yaml SOURCE YAML', 'Source yaml') { |v| options[:source_yaml] = v }
  opts.on('-p', '--prefix PERFIX', 'Environment variable prefix') { |v| options[:prefix] = v }

end.parse!

yaml = YAML.load_file(options[:source_yaml])

print "export #{options[:prefix]}plugins=\"#{yaml["plugins"].join(' ')}\""
