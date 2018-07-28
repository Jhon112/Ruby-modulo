# Complemento al ejercicio con el tema Modulos:

# Cree un modulo "Conexiones" que tenga lo siguiente:

module Conexiones
    # - Una clase gps que tiene un metodo ubicación y retorna la lat y longintud de su ubicación 
    #(latitud y longitud pueden ser numeros radom entre el rango de la ubicación real de google)
    class Gps
        
        def ubicacion
            # Latitud: 6.256617 | Longitud: -75.594836

            @longitud = rand(-75.594800..-75.594537)
            @latitud = rand(6.256600..6.256618)        
            {latitud: @latitud, longitud: @longitud}
        end
    end
    # - Una clase internet: con un metodo velocidad que retorne un aleatorio entre 5 y 20MB (con dos decimales)
    class Internet
        
        def velocidad
            speed = rand(5.00..20.00).round(2)          
        end
        
    end
    
    # - Una clase television que en el constructor reciba los canales disponibles que hay  y un metodo que 
    #retorne el nombre de la pelicula que estan transmitiendo (pueden crear un array de nombres de peliculas y 
    #retornar un aleatorio)

    class Television

        def initialize(canales)
            @canales = canales
        end
        
        def pelicula
            pelicula = ["Harry potter", "Shrek", "The hunger Games", "Fast & furious", "Scary Movie", "Jurassic Park"].shuffle
            
            programacion = {}
            programacion[@canales] = pelicula[0]
            
            puts programacion
        end
    end
end

class Bus
    include Conexiones 
    attr_reader :gps, :velocidad, :television

    def initialize
        canales = ["TNT", "Fox", "MTV", "Caracol", "RCN"].shuffle
        @gps = Gps.new
        @velocidad = Internet.new
        @television = Television.new(canales[0])
    end

end

b1 = Bus.new
puts b1.velocidad.velocidad
puts b1.gps.ubicacion
puts b1.television.pelicula



# - una clase Clima: con un metodo que reciba la hora del dia y retorne el pronostico para ese momento (crean un array con opciones de pronostico)


# Incluya el modulo Conexiones en la clase Bus y utilice los metodos en instancia de Bus, MicroBus y SuperBus.

# Prueben incluyendo Conexiones directamente en MicroBus y SuperBus.