# Defina una clase Teléfono con la que se pueda:
require 'time'
require 'date'

class Telefono

    def initialize()
        @busy = false
        @nombre = ""
        @telefono = ""
        @llamada_actual = {}
    end
    
    # 1. hacer un llamada (no se puede hacer una llamada si el teléfono esta ocupado)
    def llamar(nombre, telefono)
        
        if @busy == false
            @nombre = nombre 
            @telefono = telefono
            @llamada_inicio = Time.now
            @busy = true
        else    
            puts "No puedes llamar, telefono en uso"
        end
    end

    # 2. mostrar llamada actual (nombre y numero)
    def current_call()
        if @busy == true
            puts "Actualmente estas llamando a #{@nombre}, su telefono es #{@telefono}"                    
            @llamada_actual[@nombre] = @telefono
        
        else
            puts "En estos momentos no estas llamando a nadie"
        end
    end

    # 3. colgar
    def colgar()
        @busy = false       
        @llamada_fin = (Time.now - @llamada_inicio)
        @duracion = @llamada_fin
        puts "la llamada tuvo una duracion de #{@duracion}"



    end
    
    # 4. mostrar historial de llamadas, cada llamada almacena la duración de la misma.
    def historial
        File.open("historial.txt, 'a') { |file| file.write("nombre + ") }

    end
end


p1 = Telefono.new
p1.llamar("pedro", 2569896)
p1.current_call()
p1.colgar()
p1.current_call()




# Nota: Complementar el ejercicio con el propuesto para el fin de semana pasado.

