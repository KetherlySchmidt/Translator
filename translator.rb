require 'net/http'
require 'uri'
require 'json'
require_relative "archive"

class Translator
    def initialize
        @uri = URI.parse("https://api.gotit.ai/Translation/v1.1/Translate")
        @request = Net::HTTP::Post.new(@uri, 'Content-Type' => 'application/json')
        @request.basic_auth("1990-FmTnwDcE", "G7GSUHqEeN1nktH4bZ86/jZdzI1noEdx")
    end

    def traduzir(texto, idiomaTexto, idiomaTraducao)
        @request.body = {T: texto, SL: idiomaTexto, TL: idiomaTraducao}.to_json
        response = Net::HTTP.start(@uri.hostname, @uri.port, use_ssl: @uri.scheme == "https") do |http|
            http.request(@request)
        end
        request_json = JSON.parse(@request.body)
        response_json = JSON.parse(response.body)
        log=Log.new
        log.data(request_json, response_json)
        
        return response_json["result"]
    end
end