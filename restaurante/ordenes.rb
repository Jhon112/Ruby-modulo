# Modulo ordenes 
module Ordenes     
    require_relative 'menu.rb'
    
    class Orden 
        attr_reader :menu
        # Crear una orden y que se le pueda agregar productos        
        def initialize
            @menu = Menu::CargarMenu.new
            
        end
        
        def agregar_productos
            @menu 
            @orden = []
            puts "Ingrese el nombre del producto que desea"
            @producto_deseado = gets.chomp
            
            puts @products

            @products.each do |product|
                if @producto_deseado == @products[:name]
                    @producto_deseado = @products
                    @orden << producto_deseado                        
                end                
            end              
                puts @orden
        end
    end
    # Mostrar el total de la orden.

    # Mostrar todas las ordenes en cola.
end

class PruebaMetodos
    include Ordenes
    attr_reader :orden 

    def initialize
        @orden = Ordenes::Orden.new      
    end
end

p1 = PruebaMetodos.new
p1.orden.agregar_productos
