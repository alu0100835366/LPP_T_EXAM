# encoding: UTF-8
require 'my-gem'
require 'spec_helper'
describe Exam do
	before :each do
	@q1 = Test.new("Hola?", ["Si", "No", "Quizas", "Puede"], 3, 1)
   @q2 = Test.new('¿Cual es la salida del siguiente codigo Ruby?' "\n" 'class Xyz' "\n"'   def pots'" \n"'     @nice'" \n"'   end'" \n"' end '"\n\n"' xyz = Xyz.new'" \n"' p xyz.pots', ['#<Xyz:0xa000208', 'nil', "0", "Ninguna de las anteriores"], 2, 2)
   @q3 = BTest.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(), \n   hash.new => :toto \n }", ["Cierto", "Falso"], 1,1);
   @q4 = Test.new('Cual es la salida del siguiente codigo Ruby?'"\n"' class Array'"\n"'   def say_hi'"\n"'     "HEY!"'"\n"'   end'"\n"' end'"\n\n"' p [1, "bob"].say_hi', ["1", "bob", "HEY!", "Ninguna de las anteriores"],3,3);
   @q5 = Test.new('¿Cual es el tipo del objeto en el siguiente codigo en Ruby?'"\n"'class Objeto'"\n"'end', ["Una instancia de la clase", "Una constante", "Un objeto", "Ninguna de las anteriores"], 4,4);
   @q6 = BTest.new("Es apropiado que una clase Tablero herede de una clase Juego", ["Cierto", "Falso"], 1,1);
	@ex = Exam.new([@q1, @q2, @q3, @q4, @q5, @q6])
	end
	it "Se guarda correctamente un valor" do
		@ex.listp.pophead.should eq(@q6)
	end
	it "Se guarda correctamente un valor part 2" do
		@ex.listp.poptail.should eq(@q1)
	end
	it "Se comprueba correctamente una pregunta" do
		@ex.checkquestion(3)
		@ex.correct.should eq(1)
	end
end

describe Interfaz do
	before :each do
	@q1 = Test.new("Hola?", ["Si", "No", "Quizas", "Puede"], 3, 1)
   @q2 = Test.new('¿Cual es la salida del siguiente codigo Ruby?' "\n" 'class Xyz' "\n"'   def pots'" \n"'     @nice'" \n"'   end'" \n"' end '"\n\n"' xyz = Xyz.new'" \n"' p xyz.pots', ['#<Xyz:0xa000208', 'nil', "0", "Ninguna de las anteriores"], 2, 2)
   @q3 = BTest.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(), \n   hash.new => :toto \n }", ["Cierto", "Falso"], 1,1);
   @q4 = Test.new('Cual es la salida del siguiente codigo Ruby?'"\n"' class Array'"\n"'   def say_hi'"\n"'     "HEY!"'"\n"'   end'"\n"' end'"\n\n"' p [1, "bob"].say_hi', ["1", "bob", "HEY!", "Ninguna de las anteriores"],3,3);
   @q5 = Test.new('¿Cual es el tipo del objeto en el siguiente codigo en Ruby?'"\n"'class Objeto'"\n"'end', ["Una instancia de la clase", "Una constante", "Un objeto", "Ninguna de las anteriores"], 4,4);
   @q6 = BTest.new("Es apropiado que una clase Tablero herede de una clase Juego", ["Cierto", "Falso"], 1,1);
	@ex = Exam.new([@q1, @q2, @q3, @q4, @q5, @q6])
	@in = Interfaz.new(@ex)
	end
	it "Se inicializa bien" do
		@in.exam.should eq(@ex)
	end
	it "Se realiza bien" do
		@in.test([1,1,1,1,1,1])
		@in.exam.correct.should eq(2)
		@in.exam.fail.should eq(4)
		@in.exam.nota.should eq(3)
	end
	it "Se da la vuelta" do
		@ex.reverse
		@ex.listp.poptail.should eq(@q6)
		@ex.listp.poptail.should eq(@q5)
		@ex.listp.poptail.should eq(@q4)
		@ex.listp.poptail.should eq(@q3)
		@ex.listp.poptail.should eq(@q2)
		@ex.listp.poptail.should eq(@q1)
	end
end
