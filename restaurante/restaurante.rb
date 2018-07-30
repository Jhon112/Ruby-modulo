# Construir una aplicación para Restaurantes que contenga:
# Clase restaurante 

# Incluyendo los modulos Menu, Ordenes, Caja una instancia de Restaurantes debe poder:

# Registrar una orden y agregar productos a la orden a partir de la disponibilidad del menu.
# Se debe poder pagar un pedido.

class Restaurante
    attr_reader :mostrar_menu
    require_relative  'caja.rb'
    require_relative  'menu.rb'
    require_relative  'ordenes.rb'

    def initialize 

        @mostrar_menu = Menu::CargarMenu.new
        
    end

end


p1 = Restaurante.new
p1.mostrar_menu.mostrar


# Notas:
# Creen cada clase en un archivo separado y luego hacen: require_relative  'nombre_archivo_clase'
# Si ves la necesidad de crear más clases ó modulos lo pueden hacer.