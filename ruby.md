Ruby (Lenguaje Interpretado)
============================

---

Ruby es..
=========

* Un lenguaje de programaci&oacute;n interpretado.
* **Creado por Yukihiro *“Matz”* Matsumoto en 1995.**
* Influido por Perl, Smalltalk, Eiffel, Ada, y Lisp.
* En Ruby **todo** es un objeto.
* Tipado din&aacute;mico y fuertemente tipado. 
* Es altamente portable, compatible con una gran gama de SO.

![alt text](logo.gif "Logo")

# Ejemplo del famoso *"Hola Mundo"*, en Ruby

    !ruby
    puts "Hola Mundo, desde Ruby"

---

Caracter&iacute;sticas de Ruby
==============================

* **Todos** los tipos de datos son objetos.
* Toda funci&oacute;n es un m&eacute;todo.
* Las variables siempre son referencias a objetos.
* Ruby no soporta herencia m&uacute;ltiple, pero se puede hacer
  uso de "mixins" para tener m&eacute;todos de distintas clases.
* Cuatro niveles de &aacute;mbito de variable: global, clase, instancia y
  local.
* Manejo de excepciones.
* Expresiones regulares nativas.
* Recolecci&oacute;n de basura autom&acute;tica.
* Soporta alteraci&oacute;n de objetos en tiempo de ejecuci&oacute;n.

---

Ejemplo de clase
================

    !ruby
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

> Si se desea colocar un constructor en una clase
> se debe definir el m&eacute;todo "**initialize**".
---

Entrada y Salida de Datos por pantalla
======================================

    !ruby
    puts "I/O Ruby"
    def get_nombre
        puts "Este metodo se llama " #Se imprime en otra linea
        print "get_nombre" #Se imprime en la misma linea
        puts "Inserte su nombre"
        nombre = gets
        puts "Su nombre es " + nombre
    end
    
    get_nombre

---

Asignaciones
============

    !ruby
    # Asignacion simple
    a = 1
    # Asignacion en paralelo o multiple
    a, b = 1, 2
    # Atajos
    a += 1
    b -= 1
    b *= 2
    b /= 2

---

Arrays (Listas)
===============

Los arrays en Ruby se definen a trav&eacute;s de corchetes.
As&iacute; que para definir un vector se debe definir una variable
seguida de valores dentro de corchetes. Ruby al ser de tipado
din&aacute;mico acepta cualquier tipo de dato en un array o lista.

Ejemplo:

    !ruby
    variable = [1, 2, 3]
    #Para mostrar en pantalla un valor por linea se usa puts
    puts variable
    variable = [1, 2, "Hola mundo"]
    puts variable

---

Bucles
======

**For**

    !ruby
    variable = [1,2,3]
    for el in variable
        print el + " "
    end
    #Salida 1 2 3

**While**

    !ruby
    variable = 0
    while(variable < 100)
        variable += 10
    end
    puts variable #100

**Loop**

    !ruby
    variable = 0
    loop do
        break variable if (variable > 100)
        variable += 10
    end
    #Salida 110

---

Excepciones
===========

> Una **excepción** es un tipo especial de objeto de la clase *Exception*.
> Lanzar una excepción significa **parar** la ejecución de un programa para
> salir del mismo o para tratar con el problema que se ha producido.

    !ruby
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

---

# Muchas gracias
