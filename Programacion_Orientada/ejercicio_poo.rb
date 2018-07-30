# Defina un clase Bus:
#  Que reciba el numero de asientos que tendrá el bus e inicia la velocidad en cero al crearse una instancia.

class Bus
    
    require_relative "modulos.rb"
    attr_reader :velocidad,:pasajeros, :gps, :internet, :television, :clima

    @@pasajeros_count = 0

    def initialize(asientos)
        @asientos = asientos
        @velocidad = 0
        @pasajeros = 0
        @pasajeros_entran = 0


        canales = ["TNT", "Fox", "MTV", "Caracol", "RCN"].shuffle
        @gps = Conexiones::Gps.new
        @internet = Conexiones::Internet.new
        @television = Conexiones::Television.new(canales[0])
        @clima = Conexiones::Clima.new
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
puts p2.gps.ubicacion




# Declare dos clases adicionales que hereden de la clase Bus, llamadas MicroBus y SuperBus

class MicroBus < Bus

    attr_accessor :hora
    # La clase MicroBus debe poder hacer todo lo q hace el Bus y ademas:
    # - Al instanciarse recibe un hash del tipo { nombre_ruta1: "6-9", nombre_ruta2: "9-12" ...} 

    def initialize(asientos, rutas)
        super(asientos)
        @ruta = rutas       
    end

    # - un metodo que reciba la hora y te diga la ruta en la que se encuentra.
    
    def ruta_actual(hora)
        hora = hora
        if hora >= 6 && hora < 9
            puts "Te encuentras en la ruta #{@ruta[:nombre_ruta1]}"
        elsif hora >= 9 && hora < 12 
            puts "Te encuentras en la ruta #{@ruta[:nombre_ruta2]}"
        else 
            puts "Te encuentras en la ruta #{@ruta[:nombre_ruta3]}"   
        end        
    end
end

rutas = {nombre_ruta1: "6-9", nombre_ruta2: "9-12", nombre_ruta3: "12-6"}

p1 = MicroBus.new(20, rutas)
p1.acelerar(60)
puts "Vas a una velocidad de #{p1.velocidad}"
p1.frenar
puts "Frenaste y tu velocidad ahora es #{p1.velocidad}"
p1.agregar(18)
p1.bajar(10)
p1.ruta_actual(8)


p2 = MicroBus.new(20, rutas)
p2.ruta_actual(3)
puts "El bus tiene una velocidad de internet de #{p2.internet.velocidad_internet}MB"

# La clase SuperBus debe poder hacer todo lo q hace el Bus y ademas:
# - Al instanciarse recibe el precio del ticket de viaje.

#SuperBus
class SuperBus < Bus

    @@dinero_acumulado = 0  
      
    def initialize(asientos, precio_tickete)
        super(asientos)
        @precio_tickete = precio_tickete  
        @acumulado = 0     
    end
    
    def agregar(pasajeros_entran)
        
        if pasajeros_entran <= (@asientos - @pasajeros)
            puts "Se han subido #{pasajeros_entran} pasajeros"
            @pasajeros += pasajeros_entran
            @@pasajeros_count += pasajeros_entran

            @asientos_disponibles = @asientos - @pasajeros

                #Se invoca metodo privado
            acumulado_total(pasajeros_entran)
        else
            puts "Ya no se pueden subir mas pasajeros, asientos llenos. Solo hay disponibles #{@asientos_disponibles}"                
        end
    end
    
    # - Un metodo que retorne el dinero total acumulado por la instancia del SuperBus
    private
    def acumulado_total(entran)     
        @acumulado += (entran * @precio_tickete)
        @@dinero_acumulado += @acumulado   
             
    end

    # - Un atributo y metodo de clase que retorne el total de dinero acumulado por todos las instancias de 
    def self.dinero_acumulado
        puts @@dinero_acumulado
    end
end

tickete = 100

sp = SuperBus.new(20, tickete)
sp.agregar(10)
sp.agregar(9)

sp1 = SuperBus.new(20, tickete)
sp1.agregar(16)
SuperBus.dinero_acumulado