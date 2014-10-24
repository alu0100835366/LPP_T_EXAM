require "lib/test.rb"

describe Test do
  
  describe "#Almacenamiento de Pregunta" do
    it "Se guarda correctamente una pregunta" do
      @p1.q.should eq("hola?")
    end
  end
end