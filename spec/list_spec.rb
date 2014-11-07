# encoding: UTF-8
require "./lib/my_gem/test.rb"
require "./lib/my_gem/list.rb"
describe "test" do
	before :each do
		@q1 = Test.new("Hola?", ["Si", "No", "Quizas", "Puede"], 3, 1)
    @q2 = Test.new('¿Cual es la salida del siguiente codigo Ruby?' "\n" 'class Xyz' "\n"'   def pots'" \n"'     @nice'" \n"'   end'" \n"' end '"\n\n"' xyz = Xyz.new'" \n"' p xyz.pots', ['#<Xyz:0xa000208', 'nil', "0", "Ninguna de las anteriores"], 2, 2)
    @q3 = BTest.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(), \n   hash.new => :toto \n }", ["Cierto", "Falso"], 1,1);
    @q4 = Test.new('Cual es la salida del siguiente codigo Ruby?'"\n"' class Array'"\n"'   def say_hi'"\n"'     "HEY!"'"\n"'   end'"\n"' end'"\n\n"' p [1, "bob"].say_hi', ["1", "bob", "HEY!", "Ninguna de las anteriores"],3,3);
    @q5 = Test.new('¿Cual es el tipo del objeto en el siguiente codigo en Ruby?'"\n"'class Objeto'"\n"'end', ["Una instancia de la clase", "Una constante", "Un objeto", "Ninguna de las anteriores"], 4,4);
    @q6 = BTest.new("Es apropiado que una clase Tablero herede de una clase Juego", ["Cierto", "Falso"], 1,1);
		@l = List.new(@q1)
	end
	it "Se guarda correctamente un valor" do
		@l.head.value.should eq(@q1)
	end
	it "El nodo tiene un apuntador" do
		@l.head.next.should eq(nil)
	end
	it "Funciona el metodo pushhead y el nodo anterior apunta al nuevo" do
		@l.pushhead(@q2)
		@l.head.previous.next.should eq(@l.head)
	end
	it "Funciona el metodo pushtail y el nodo siguiente apunta al nuevo" do
		@l.pushtail(@q2)
		@l.tail.next.previous.should eq(@l.tail)
	end
	it "Se pueden insertar varios elementos" do
		@l.pushhead(@q2)
		@l.pushtail(@q3)
	end
	it "Se puede extraer el primer elemento de la cabeza" do
		@l.pophead
	end
	it "Se puede extraer el primer elemento de la cola" do
		@l.poptail
	end
	it "Se pueden insertar y extraer varios elementos" do
		@l.pushtail(@q4)
		@l.pushhead(@q5)
		@l.head.value.should eq(@q5)
		@l.tail.value.should eq(@q4)
		@l.pophead
		@l.poptail
	end
	it "Extraer de una lista vacia da error" do
		@l.pophead
		@l.poptail
	end
end
