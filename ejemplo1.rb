module Modu
    def to_s
	return "uno" if @value == 1
	return "dos" if @value == 2
	return "tres" if @value == 3
	return "mucho"
    end
end

class A
    attr_accessor :value
    def to_s
        @value.to_s
    end
end

a = A.new
a.value =3
print "#{a.to_s}\n"
a.extend(Modu)
print "#{a.to_s}\n"

class Sistema_Programa
    def ejemplo
         puts "Hola Mundo"
    end
end
 
variable_instancia = Sistema_Programa.new
variable_instancia.ejemplo

class Sistema_Programa
    def ejemplo(arg)
	puts arg
    end
end

variable_instancia = Sistema_Programa.new
variable_instancia.ejemplo("Mi nota sera 20")

def raise_and_rescue  
  begin  
    puts 'Estoy antes del raise'
    raise 'Un error ha ocurrido' # simulamos un error
    puts 'Estoy después del raise' 
  rescue  
    puts 'Estoy rescatado del error.'  
  end  
  puts 'Estoy después del bloque'
end  
 
raise_and_rescue

def iteraciones(*arg)
    @arg.each do |argumento|
      puts "#{argumento}"
    end
end

iteraciones(1,2,3,4,5)

def entrada_salida_pantalla
    print "Ingrese su nombre: "
    nombre = gets
    puts "Su nombre es " + nombre
    print "hola "
    print "que tal"
end

entrada_salida_pantalla
