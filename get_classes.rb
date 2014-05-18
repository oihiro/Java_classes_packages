#!/usr/local/bin/ruby
#
# get the list of classes in a JavaDoc-generated html
#
# execution example
# curl http://docs.oracle.com/javase/8/docs/api/allclasses-frame.html | ruby get_classes.rb | sort
#
while s = gets
  if /[Hh][Rr][Ee][Ff]="([^.]+)\.html".*classFrame/ =~ s then
    clazz = $1
    clazz = clazz.gsub(%r{/}, ".")
    puts "#{clazz}"
  end

=begin
     class (not interface) in CDC allclasses-frame.html
  if /class in ([^"]+)"[^>]+>([^<]+)</ =~ s then
    package = $1
    clazz = $2
    puts "#{package}.#{clazz}"
  end
=end
end
