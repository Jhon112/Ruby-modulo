# Escriba un programa que reciba el numero de elementos que debe contener un array, y retorne el array, los elementos deben ser numeros aleatorios del 1 al 100

puts "Ingresa el numero de elementos que quieres añadir: "
elementos = gets.chomp.to_i
numeros = []

elementos.times do
  numeros << rand(1..100)
end
puts numeros

# Haga que el anterior programa calcule y retorne la suma de los numeros y su promedio

suma = 0

pares = 0
impares =0

numeros.each do |element|
  suma += element
  if element %2 == 0
      pares += 1
    else
      impares += 1
  end
end

puts "La suma del array es #{suma}"

promedio = suma / elementos

puts "El promedio es #{promedio}"

puts "El numero de pares es #{pares} y el numero de impares es #{impares}"


# Haga que retorne la cantidad de pares e impares que tiene el array

#
# pares = 0
# impares =0
#
# numeros.each do |element|
#   suma += element
#   if element %2 == 0
#       pares += 1
#     else
#       impares += 1
#   end
# end
