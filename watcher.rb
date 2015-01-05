#!/usr/bin/env ruby

paths_to_watch = ENV['PATHS'] || 'app lib config spec features'
new_files = `ls -lR #{paths_to_watch} 2> /dev/null`
orig_files = ''
while true
  if orig_files != new_files
    puts "orig: #{orig_files}\nnew:  #{new_files}" if ENV['DEBUG']
    orig_files = new_files
    puts "Executing: #{ARGV.join(' ')}"
    #puts `#{ARGV.join(' ')}`
    IO.popen(ARGV.join(' ')) { |f|
      until f.eof?
        puts f.gets
      end
    }
  end
  sleep 5
  new_files = `ls -lR #{paths_to_watch} 2> /dev/null`
end
