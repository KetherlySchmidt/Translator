require_relative "translator"

class Log
    def data(request, response)
        time = Time.new
        texto = request["T"]
        idiomaTexto = request["SL"]
        idiomaTraducao = request["TL"]
        traducao = response["result"]
    
        file = File.open(time.strftime("%d-%m-%Y - %H.%M") + ".txt", 'w') do |archive|
            archive.puts ("Idioma do texto: #{idiomaTexto}")
            archive.puts ("Texto: #{texto}")
            archive.puts ("Idioma da Tradução: #{idiomaTraducao}")            
            archive.puts ("Tradução: #{traducao}")
        end
    end  
end