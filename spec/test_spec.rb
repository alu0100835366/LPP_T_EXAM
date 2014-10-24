require "lib/test.rb"

describe Test do
  before :each do
    @q1 = Test.new("Hola?")
  end
  
  describe "#Almacenamiento de Pregunta" do
    it "Se guarda correctamente una pregunta" do
      @q1.q.should eq("Hola?")
    end
  end
end