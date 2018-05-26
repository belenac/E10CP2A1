# Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.

module Formula
  def perimetro(lado_a, lado_b)
    "El perimetro de la figura es #{(lado_a + lado_b) * 2}"
  end

  def area(base, altura)
    "El area de la figura es #{base + altura}"
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "La altura es #{@base} y la altura es #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "La medida de sus lados es #{@lado}"
  end
end

cuadrado = Cuadrado.new(10)
puts cuadrado.perimetro(10, 10)
puts cuadrado.area(10, 10)
puts cuadrado

rectangulo = Rectangulo.new(10, 20)
puts rectangulo.perimetro(10, 20)
puts rectangulo.area(10, 20)
puts rectangulo
