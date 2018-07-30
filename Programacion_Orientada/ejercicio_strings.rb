#Escriba un programa que le pregunte all usuario por una cadena de texto y despues la imprima en mayuscula e invertida (al revés)

puts "Ingrese su cadena de texto: "
text_user = gets.chomp

puts text_user.upcase.reverse


#Indicar si la palabra es palindrome

palabra = text_user.reverse

if text_user == palabra
  puts "La palabra es palindrome"
else
  puts "La palabra no es palindrome"
end
