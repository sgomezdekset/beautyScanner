desc "Fetch merchants infos"
task :fetch_infos => :environment do

require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
url = "http://www.yp.com.hk/Medical-Beauty-Health-Care-Services-b/Beauty-Health/Beauty-Salons/p1/en/"   
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text  
end
