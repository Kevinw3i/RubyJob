require 'nokogiri'
require 'open-uri'

class Crawler
    @@targer_uri = "https://www.taifex.com.tw/cht/3/totalTableDate"

    def main
        login()
    end

    def login
        request = Nokogiri::HTML(open( @@targer_uri ))

        title = request.xpath("//tr[@class='12bk']/th/div")
        
        puts request.xpath("//tr[@class='12bk']/th/div")
    end
end

Crawler.new.main()