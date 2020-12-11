require_relative "translator"
require_relative "archive"

puts""
puts "*"*50
puts "*" + " "*19 + "Translator" + " "*19 + "*"
puts "*"*50
puts""

puts""
puts">"*16 +  "Idiomas suportados:" + "<" *16
puts""

puts" " +"-"*49
puts"|"+ " "*9 +"Código" + " "*9 + "|" + " "*9 + "Idioma" + " "*9 + "|"
puts" " +"-"*49
puts"|"+ " "*10 +"PtBr" + " "*10 + "|" + " "*8 + "Português" + " "*7 + "|"
puts"|"+ " "*10 +"EnUs" + " "*10 + "|" + " "*9 + "Inglês" + " "*9 + "|"
puts"|"+ " "*10 +"ZhCh" + " "*10 + "|" + " "*9 + "Chinês" + " "*9 + "|"
puts"|"+ " "*10 +"DeAl" + " "*10 + "|" + " "*9 + "Alemão" + " "*9 + "|"
puts" " +"-"*49
puts""

print "Informe o código idioma do texto: "
idiomaTexto = gets.chomp.to_s
puts""

print "Digite o texto para realizar a tradução: "
texto = gets.chomp.to_s
puts""

print "Informe usando os codigos qual é o idioma que deseja realizar a tradução: "
idiomaTraducao = gets.chomp.to_s
puts""

translator = Translator.new
traducao = translator.traduzir(texto, idiomaTexto, idiomaTraducao )

puts "A traducão de #{texto} é * #{traducao} *"