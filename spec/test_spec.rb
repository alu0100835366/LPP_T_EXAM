require "lib/test.rb"

describe Test do
  before :each do
    @q1 = Test.new("Hola?", ["Si", "No", "Quizas", "Puede"], 3, 1)
    @q2 = Test.new("¿Cual es la salida del siguiente còdigo Ruby? \n class Xyz \n   def pots \n     @nice \n   end \n end \n\n xyz = Xyz.new \n p xyz.pots", ['#<Xyz:0xa000208', 'nil', "0", "Ninguna de las anteriores"], 2, 2)
    @q3 = Test.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(), \n   hash.new => :toto \n }", ["Cierto", "Falso"], 1,1);
    @q4 = Test.new('Cual es la salida del siguiente codigo Ruby?'"\n"' class Array'"\n"'   def say_hi'"\n"'     "HEY!"'"\n"'   end'"\n"' end'"\n\n"' p [1, "bob"].say_hi', ["1", "bob", "HEY!", "Ninguna de las anteriores"],3,3);
    @q5 = Test.new('¿Cual es el tipo del objeto en el siguiente codigo en Ruby?'"\n"'class Objeto'"\n"'end', ["Una instancia de la clase", "Una constante", "Un objeto", "Ninguna de las anteriores"], 4,4);
    @q6 = Test.new("Es apropiado que una clase Tablero herede de una clase Juego", ["Cierto", "Falso"], 1,1);
  end
  
  describe "#Almacenamiento de Pregunta" do
    it "Se guarda correctamente una pregunta" do
      @q1.q.should eq("Hola?")
    end
  end
  describe "#Almanecamiento de Respuesta 1" do
    it "Se guarda correctamente la primera respuesta" do
      @q1.a1[0].should eq("Si")
    end
  end
  describe "#Almanecamiento de Respuesta 2" do
    it "Se guarda correctamente la segunda respuesta" do
      @q1.a1[1].should eq("No")
    end
  end
  describe "#Almanecamiento de Respuesta 3" do
    it "Se guarda correctamente la tercero respuesta" do
      @q1.a1[2].should eq("Quizas")
    end
  end
  describe "#Almanecamiento de Respuesta 4" do
    it "Se guarda correctamente la cuarta respuesta" do
      @q1.a1[3].should eq("Puede")
    end
  end
  describe "#Almanecamiento de Respuesta Correcta" do
    it "Se guarda correctamente la respuesta correcta" do
      @q1.t.should eq(3)
    end
  end
  describe "#Mostrar Pregunta" do
    it "Se muestra la pregunta correctamente" do
      @q1.showq()
    end
  end
  describe "#Mostrar Respuestas" do
    it "Se muestran las respuestas correctamente" do
      @q1.showa()
    end
  end
  describe "#Respuesta Correcta" do
    it "Se comprueba que la respuesta es la correcta" do
      @q1.ask()
      @q1.a.should eq @q1.a1[0]
    end
  end
  /TESTS PARA LA PRRIMERA PREGUNTA/
  describe "#Mostrar Pregunta 1" do
    it "Se muestra la pregunta correctamente" do
      @q2.showq()
    end
  end
  describe "#Mostrar Respuestas 1" do
    it "Se muestran las respuestas correctamente" do
      @q2.showa()
    end
  end
  describe "#Respuesta Correcta 1" do
    it "Se comprueba que la respuesta es la correcta" do
      @q2.ask()
      @q2.a.should eq @q2.a1[1]
    end
  end
  /TESTS PARA LA SEGUNDA PREGUNTA/
  describe "#Mostrar Pregunta 2" do
    it "Se muestra la pregunta correctamente" do
      @q3.showq()
    end
  end
  describe "#Mostrar Respuestas 2" do
    it "Se muestran las respuestas correctamente" do
      @q3.showa()
    end
  end
  describe "#Respuesta Correcta 2" do
    it "Se comprueba que la respuesta es la correcta" do
      @q3.ask()
      @q3.a.should eq @q3.a1[0]
    end
  end
  /TESTS PARA LA TERCERA PREGUNTA/
  describe "#Mostrar Pregunta 3" do
    it "Se muestra la pregunta correctamente" do
      @q4.showq()
    end
  end
  describe "#Mostrar Respuestas 3" do
    it "Se muestran las respuestas correctamente" do
      @q4.showa()
    end
  end
  describe "#Respuesta Correcta 3" do
    it "Se comprueba que la respuesta es la correcta" do
      @q4.ask()
      @q4.a.should eq @q4.a1[2]
    end
  end
  /TESTS PARA LA CUARTA PREGUNTA/
  describe "#Mostrar Pregunta 4" do
    it "Se muestra la pregunta correctamente" do
      @q5.showq()
    end
  end
  describe "#Mostrar Respuestas 4" do
    it "Se muestran las respuestas correctamente" do
      @q5.showa()
    end
  end
  describe "#Respuesta Correcta 4" do
    it "Se comprueba que la respuesta es la correcta" do
      @q5.ask()
      @q5.a.should eq @q5.a1[3]
    end
  end
  /TESTS PARA LA QUINTA PREGUNTA/
  describe "#Mostrar Pregunta 5" do
    it "Se muestra la pregunta correctamente" do
      @q6.showq()
    end
  end
  describe "#Mostrar Respuestas 5" do
    it "Se muestran las respuestas correctamente" do
      @q6.showa()
    end
  end
  describe "#Respuesta Correcta 5" do
    it "Se comprueba que la respuesta es la correcta" do
      @q6.ask()
      @q6.a.should eq @q6.a1[0]
    end
  end
end