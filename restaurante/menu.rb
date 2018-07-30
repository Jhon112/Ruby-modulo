# Modulo menu
module Menu    
    # Cargar el menu desde un archivo txt con el formato: codigo, nombre producto, precio, disponible(true/false)
    class CargarMenu
            
        def initialize
           @products = []
            arr = IO.readlines("menu.txt")
            new_arr = arr.map {|e| e.chop.split(", ") }
            
            new_arr.each do |codigo, producto, precio, disponible|
                @products << {codigo: codigo, producto: producto, precio: precio, disponible: disponible}
            end           
                        
        end
                        
        # Mostrar el menu ( visualmente legible.)
        def mostrar
            
            @products.each do |product|
                puts "Codigo: #{product[:codigo]}"
                puts "Producto: #{product[:producto]}"
                puts "Precio: #{product[:precio]}"
                puts "Disponible: #{product[:disponible]}"
                puts "-" * 20
            end
        end        
        
        # Agregar un producto al menu  
        def agregar
            puts" Introduce el codigo del producto que quieres agregar" 
            codigo = gets.chomp
            puts" Introduce el nombre del producto que quieres agregar"
            nombre = gets.chomp
            puts" Introduce el precio del producto que quieres agregar"
            precio = gets.chomp
            puts" Indica si el producto esta disponible"
            disponible = gets.chomp
            File.open('menu.txt', 'a') { |file| file.write("#{codigo}, #{nombre}, #{precio}, #{disponible}")}
        end
        
        # Consultar un producto particular por código.
        def consultar
            puts "Que codigo quieres consultar?"
            codigo = gets.chomp

            @products.each do |product|
                if codigo == product[:codigo]
                    puts "Codigo: #{product[:codigo]}"  
                    puts "Producto: #{product[:producto]}"
                    puts "Precio: #{product[:precio]}"
                    puts "Disponible: #{product[:disponible]}"
                # else
                #     puts "Producto no existe"
                #     break             
                end
            end
        end
    end
end

# class PruebaMetodos
#     include Menu
#     attr_reader :menu
#     def initialize
#         @menu = CargarMenu.new
        
#     end
# end

# p1 = PruebaMetodos.new
# p1.menu.consultar
