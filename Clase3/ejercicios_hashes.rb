# Haga un programa que le permita agregar numeros telefonicos con sus respectivos usuarios a un hash. Si el usuario ingresa "quit" el programa termina


nombre_usuario = ''
numero_usuario = ''

usuario_telefono = {}

until nombre_usuario == "quit"

  puts "Ingrese su nombre: "
  nombre_usuario = gets.chomp

  if nombre_usuario != "quit"
  puts "Ingrese su numero: "
  numero_usuario = gets.chomp.to_i

  usuario_telefono[nombre_usuario] = numero_usuario
  end
end

p usuario_telefono
