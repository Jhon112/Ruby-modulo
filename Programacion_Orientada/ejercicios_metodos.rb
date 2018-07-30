#Hacer un metodo que agregue un telefono al directorio tomando como base el ejercicio que se hizo ayer


nombre_usuario = ''
numero_usuario = ''

@usuario_telefono = {}

def directorio(nombre_usuario, numero_usuario)
  @usuario_telefono[nombre_usuario] = numero_usuario

end

until nombre_usuario == "quit"

  puts "Ingrese su nombre: "
  nombre_usuario = gets.chomp

  if nombre_usuario != "quit"
  puts "Ingrese su numero: "
  numero_usuario = gets.chomp.to_i

  directorio(nombre_usuario, numero_usuario)
  end
end

p @usuario_telefono
