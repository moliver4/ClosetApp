require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class User < ApplicationRecord
    has_secure_password
    has_many :closets


    def get_weather
        @city = self.city
        url = URI("https://community-open-weather-map.p.rapidapi.com/weather?units=%2522imperial%2522&q=#{@city}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
        request["x-rapidapi-key"] = 'a07e40bb26mshfa34368e5bd1fa8p1c066ajsn76974752bb3e'
        response = http.request(request)
        js= JSON.parse(response.read_body)
        puts js
        js
    end
    def current_temp
        ftemp(get_weather["main"]["temp"])
    end

    def low_temp
        ftemp(get_weather["main"]["temp_min"])
    end
    
    def high_temp
        ftemp(get_weather["main"]["temp_max"])
    end

    def weather_description
        get_weather["weather"][0]["description"]
    end

    private
    def ftemp(kelvin)
        celsius = kelvin - 273.15
        fahrenheit = celsius * (9/5) +32
    end
    
end
