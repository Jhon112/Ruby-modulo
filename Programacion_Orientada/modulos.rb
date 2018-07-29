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

    # - una clase Clima: con un metodo que reciba la hora del dia y retorne el pronostico para ese momento 
    #(crean un array con opciones de pronostico)

    class Clima

        def pronostico(hora)
            @hora = hora
            clima = ["Lluvia", "Soleado", "Nublado", "Tormenta electrica"]
            
            if hora >= 6 && hora < 9
                 puts "El pronostico para #{hora} es #{clima[0]}" 
            elsif hora >= 9 && hora < 12 
                puts "El pronostico para #{hora} es #{clima[1]}"
            elsif hora >= 12 && hora < 16    
                puts "El pronostico para #{hora} es #{clima[2]}"
            else 
                puts "El pronostico para #{hora} es #{clima[3]}"   
             end   
        end        
    end
end


##Prueba de metodos!! --->

class Bus
    include Conexiones 
    attr_reader :gps, :velocidad, :television, :clima

    def initialize
        canales = ["TNT", "Fox", "MTV", "Caracol", "RCN"].shuffle
        @gps = Gps.new
        @velocidad = Internet.new
        @television = Television.new(canales[0])
        @clima = Clima.new
    end    
end

time = 19

b1 = Bus.new
puts "La velocidad del internet es de #{b1.velocidad.velocidad}MB"
puts b1.gps.ubicacion
puts b1.television.pelicula
b1.clima.pronostico(time)
