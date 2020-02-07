require 'uri'
require 'net/http'
require 'openssl'
require 'json'

API_KEY = ENV['rapid_api_key']

class User < ApplicationRecord
    has_secure_password
    has_many :closets

    validates :name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :city, presence: true


 
    def current_temp
        ftemp(get_weather["main"]["temp"]).round(1)
    end

    def low_temp
        ftemp(get_weather["main"]["temp_min"]).round(1)
    end
    
    def high_temp
        ftemp(get_weather["main"]["temp_max"]).round(1)
    end

    def weather_description
        array = description.split(" ")
        new = array.map {|word| word.capitalize}.join(" ")
        new
    end
    def humidity
        get_weather["main"]["humidity"]
    end

    


    private
    def ftemp(kelvin)
        celsius = kelvin - 273.15
        fahrenheit = celsius * (9/5) +32
    end

    def get_weather
        @city = self.city
        url = URI("https://community-open-weather-map.p.rapidapi.com/weather?units=%2522imperial%2522&q=#{@city}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'
        request["x-rapidapi-key"] = API_KEY
        response = http.request(request)
        js= JSON.parse(response.read_body)
        puts js
        js
    end
    
    def description
        get_weather["weather"][0]["description"]
    end
    
end
