#Hacer que lea un archivo y lo copie en uno nuevo: 

# file = File.read("archivo_prueba.txt")
# File.write("archivo_prueba_new.txt", file)

arr = IO.readlines("archivo_prueba_new.txt")
p arr

new_array = arr.map {|chr| chr.to_i}
numeros = []

new_array.each do |element|
  if element > 10
    numeros << element
  end
end

p numeros
p new_array