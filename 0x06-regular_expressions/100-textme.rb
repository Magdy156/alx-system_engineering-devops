#!/usr/bin/env ruby

str = ARGV[0].scan(/(from:\w{1,11})|(to:\w{1,11})|(flags:-\d:\d:-\d:-\d:-\d)/).join
str.slice! "from:"
str.sub! "to:", ','
str.sub! "flags:", ','
puts str
