# Defina un clase Bus:


#  Que reciba el numero de asientos que tendrá el bus e inicia la velocidad en cero al crearse una instancia.

class Bus
    attr_reader :velocidad,:pasajeros
    @@pasajeros_count = 0

    def initialize(asientos)
        @asientos = asientos
        @velocidad = 0
        @pasajeros = 0
    end

    # Un metodo que permita acelerar, el método recibe el numero de km que acelera
    def acelerar(kilometros)
        @velocidad += kilometros      
    end

    # Un metodo que permita frenar.
    def frenar
        @velocidad = 0
    end

    # Un método que permita agregar pasajeros, si esta lleno que no permita recibir más.
    def agregar(pasajeros_entran)
        
        if pasajeros_entran <= (@asientos - @pasajeros)
            puts "Se han subido #{pasajeros_entran} pasajeros"
            @pasajeros += pasajeros_entran
            @@pasajeros_count += pasajeros_entran

            
            @asientos_disponibles = @asientos - @pasajeros
        else
            puts "Ya no se pueden subir mas pasajeros, asientos llenos. Solo hay disponibles #{@asientos_disponibles}"                
        end


    end

    # -Un atributo de clase que acumule el numero total de pasajeros que se han subido en todos mis buses 
    #(todas las instancias)

    def self.pasajeros_count
        @@pasajeros_count  
    end

    # Un metodo que permita descargar pasajeros.
    def bajar(pasajeros_bajan)

    until @velocidad == 0
        puts "No puedes bajar ningun pasajero con el bus en movimiento"
    end

    @pasajeros -= pasajeros_bajan
    puts @asientos_disponibles
    @asientos_disponibles += pasajeros_bajan

    puts "Se han bajado #{pasajeros_bajan} y ahora quedan #{@asientos_disponibles} puestos disponibles"
     
    end
end

p1 = Bus.new(20)
p1.acelerar(60)
puts "Vas a una velocidad de #{p1.velocidad}"
p1.frenar
puts "Frenaste y tu velocidad ahora es #{p1.velocidad}"
p1.agregar(18)
p1.bajar(10)

p2 = Bus.new(20)
p2.agregar(14)

puts Bus.pasajeros_count