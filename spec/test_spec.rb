require "lib/test.rb"

describe Test do
  before :each do
    @q1 = Test.new("Hola?", "Si", "No", "Quizas", "Puede", 3)
  end
  
  describe "#Almacenamiento de Pregunta" do
    it "Se guarda correctamente una pregunta" do
      @q1.q.should eq("Hola?")
    end
  end
  describe "#Almanecamiento de Respuesta 1" do
    it "Se guarda correctamente la primera respuesta" do
      @q1.a1.should eq("Si")
    end
  end
  describe "#Almanecamiento de Respuesta 2" do
    it "Se guarda correctamente la segunda respuesta" do
      @q1.a2.should eq("No")
    end
  end
  describe "#Almanecamiento de Respuesta 3" do
    it "Se guarda correctamente la tercero respuesta" do
      @q1.a3.should eq("Quizas")
    end
  end
  describe "#Almanecamiento de Respuesta 4" do
    it "Se guarda correctamente la cuarta respuesta" do
      @q1.a4.should eq("Puede")
    end
  end
  describe "#Almanecamiento de Respuesta Correcta" do
    it "Se guarda correctamente la respuesta correcta" do
      @q1.t.should eq(3)
    end
  end
end