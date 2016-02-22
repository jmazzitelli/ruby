#!ruby

require "optparse"
require_relative "../lib/append/append_to_object"

options = {:obj => nil}

parser = OptionParser.new do|opts|
  opts.banner = "Usage: run.rb [options]"
  opts.on('-o', '--obj str', 'Object') do |name|
    options[:obj] = name;
  end

  opts.on('-h', '--help', 'Displays Help') do
    puts opts
    exit
  end
end

parser.parse!

if options[:obj] == nil
  print 'Enter Object: '
  options[:obj] = gets.chomp
end

print "Enter what you want to append to #{options[:obj]}: "
appendage = gets.chomp

appender = Append::AppendToObject.new(options[:obj])
puts appender.do_it(appendage)