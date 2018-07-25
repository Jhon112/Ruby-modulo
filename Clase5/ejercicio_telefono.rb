# Defina una clase Teléfono con la que se pueda:


class Telefono

    def initialize
        @bussy = false
        @nombre = ""
        @telefono = 
        @llamada_actual = {}
    end
    
    # 1. hacer un llamada (no se puede hacer una llamada si el teléfono esta ocupado)
    def llamar(nombre, telefono)
        
        if @bussy == false
            @nombre = nombre 
            @telefono = telefono
            puts "Llamando a #{nombre}, telefono #{telefono}"
            @bussy = true
        else    
            puts "No puedes llamar, telefono en uso"
        end
    end


end


p1 = Telefono.new
p1.llamar("pedro", 2569896)
p1.llamar("martin", 2569844)

# 2. mostrar llamada actual (nombre y numero)
# 3. colgar
# 4. mostrar historial de llamadas, cada llamada almacena la duración de la misma.


# Nota: Complementar el ejercicio con el propuesto para el fin de semana pasado.

