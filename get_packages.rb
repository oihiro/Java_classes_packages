#!/usr/local/bin/ruby
#
# get the list of packages in a JavaDoc-generated html
#
# execution example
# curl http://docs.oracle.com/javase/8/docs/api/overview-frame.html | ruby get_packaged.rb
#
while s = gets
  if /packageFrame">([^<]+)</ =~ s then
    package = $1
    if package != "All Classes" then
      puts "#{package}"
    end
  end
end
