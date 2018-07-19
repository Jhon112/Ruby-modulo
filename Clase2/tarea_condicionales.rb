num1 = rand(1..10)

puts num1

3.times do |intento|
    print "Ingresa tu numero para participar (Entre el 1 y el 10): "
    num2 = gets.chomp.to_i
  if num1 == num2
        puts "Ganaste! Felicidades participante."
    break
    else
    puts "Sigue intentando! Estas cerca."
  end
end




# print "Ingresa tu peso: "
# peso = gets.chomp.to_f
#
# print "Ingresa tu altura en mts: "
# altura =gets.chomp.to_f
#
# bmi = peso / (altura * altura)
#
# puts "Tu BMI es: #{bmi}"
#
# if bmi < 18.5
#   puts "Baja de peso"
# elsif bmi >= 18.5 && bmi < 25
#   puts "Normal"
# elsif bmi > 25
#   puts "Sobrepeso"
# end
