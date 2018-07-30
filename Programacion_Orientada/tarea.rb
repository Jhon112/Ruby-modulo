# #  Escriba un programa que tenga los siguiente:
#   1. Un método que permita Importar un archivo del texto el cual contiene en cada linea nombre y teléfono 
#  (separado por punto y coma), la información debe ser importada a un hash llamado “directorio”
#   2. Un método que permita imprimir todo los nombres y usuarios del directorio.
#   3. Que tenga un método que permita agregar un usuario con su respectivo telefono al hash “directorio” y 
#  también al archivo de texto.
#   4. Que tenga un metodo que reciba el nombre del usuario y retorne su teléfono.
#   5. Al ejecutarse el programa se carga automáticamente el archivo de texto, debe preguntarle que quiere hacer:  
#  Agregar un teléfono, Buscar un teléfono,  imprimir el directorio completo ó salir.
#   Notas: 
#   - Para darle las opciones al usuario pueden usar un bloque case, que es lo mismo que el switch en otros 
#  lenguajes, aquí un ejemplo:

# - Para agregar una linea al final del archivo sin sobre escribir el contenido anterior usan este método:

# File.open("bd/students.txt", 'a') { |file| file.puts("juan camilo") }


# Noten que en el ejemplo de clase en lugar de ‘a’ (append) había una ‘w’ (write). Esa letra indica la acción que podremos hacer sobre el archivo una vez abierto, otra opción puede ser ‘r’ (read).

@directorio = {}

@nombre = ""
@telefono = ""


def importar(@nombre, @telefono)
    txt = File.read("tarea.txt")
    txt_new = txt.split(",").chomp  
    
    p txt_new
    
    @directorio[@nombre] = @telefono

end

def imprimir()
    puts File.read("tarea.txt") 
end
    
def agregar()        

    until @nombre == "Ya no mas"
    puts "Ingrese el nombre a añadir: "
        @nombre = gets.chomp
    
    if @nombre != "Ya no mas"
        
        puts "Ingrese el numero de la persona: "
        @telefono = gets.chomp
        
        
        importar(@nombre, @telefono)
        
        File.open("tarea.txt", 'a') { |file| file.puts(@nombre + "," + @telefono)}    
        
    end
    end
end

def retornar_telefono()

    puts "Escriba el usuario que quiere buscar: "
    usuario = gets.chomp

    if usuario == @directorio[@nombre]
        puts @directorio[@telefono]

    else
        puts "Usuario no existe, intente otra vez."
    end
end


puts "Bienvenido!En este directorio puedes buscar un telefono, agregar un telefono, imprimir el directorio o salir "
puts "Que quieres hacer?"
    
    importar()

instruccion = gets.chomp


    case instruccion
        when "agregar un telefono"
        agregar()

        when "buscar un telefono"
        retornar_telefono()

        when "imprimir el directorio" 
        imprimir()

        when "salir"
        "bye!"
    end

p @directorio