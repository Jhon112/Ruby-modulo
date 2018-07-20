# file = File.read("archivo_prueba.txt")
# File.write("archivo_prueba_new.txt", file)

arr = IO.readlines("archivo_prueba_new.txt")
p arr

filtrar = []

arr.each do |element|
  if element > 10
    filtrar << arr
end
end
