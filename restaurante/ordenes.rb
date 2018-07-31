# Modulo ordenes 
require_relative 'menu.rb'
module Ordenes     
      
    
    class Orden 
        attr_reader :menu
        # Crear una orden y que se le pueda agregar productos        
        def initialize
            @menu = Menu::CargarMenu.new
            
        end
        
        def agregar_productos ()
            @menu.products 
            @orden = []
            puts "Cuantos productos quiere?"
            @cantidad_productos = gets.chomp.to_i
            puts "Ingrese la mesa a la que pertenece la orden"
            @mesa = gets.chomp            
            
            @productos_totales = []

            @cantidad_productos.times do 
                puts "Ingrese el codigo del producto que desea"
                @producto_deseado = gets.chomp
                @menu.products.each do |product|
                    if @producto_deseado == product[:codigo]
                        @producto_deseado = product
                    end                                    
                end              
                @productos_totales << @producto_deseado              
            end
            @orden << {mesa: @mesa, producto: @productos_totales}
                puts @orden
        end
    end
    # Mostrar el total de la orden.

    # Mostrar todas las ordenes en cola.
end

# class PruebaMetodos
#     include Ordenes
#     attr_reader :orden 

#     def initialize
#         @orden = Orden.new      
#     end
# end

p1 = Ordenes::Orden.new
p1.agregar_productos
