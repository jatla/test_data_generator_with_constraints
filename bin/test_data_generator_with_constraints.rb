#!/usr/bin/env ruby
require File.expand_path(File.dirname(__FILE__) + '/../lib/test_data_generator_with_constraints')
require 'optparse'

options = {:m => nil, :o => nil}

parser = OptionParser.new do |opts|

    opts.banner = "Usage: test_data_generator_with_constraints.rb [options] "

    opts.on('-m filePath', '--modelFilePath filePath', 'Path to file containing model and constaints. This is a required parameter.') do |filePath|
        options[:m] = filePath
    end

    opts.on('-o filePath', '--outputFilePath filePath', 'Output file where generated test data set is written to. If not provided test data set would be generated to temp.txt') do |filePath|
        options[:o] = filePath
    end

    opts.on( '-h', '--help', 'Display this screen' ) do
        puts opts
        exit
      end
end

parser.parse!

if options[:m].nil?
    puts parser
    raise OptionParser::MissingArgument
end

load "#{options[:m]}"
outputFile = (options[:o].nil?) ? "temp.txt" : "#{options[:o]}"

TestDataGeneratorWithConstraints.instance.generate $dataModel, outputFile
