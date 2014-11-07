require "./lib/list.rb"
describe "test" do
	before :each do
		@l = List.new(3)
	end
	it "Se guarda correctamente un valor" do
		@l.head.value.should eq(3)
	end
	it "El nodo tiene un apuntador" do
		@l.head.next.should eq(nil)
	end
	it "Funciona el metodo pushhead y el nodo anterior apunta al nuevo" do
		@l.pushhead(4)
		@l.head.previous.next.should eq(@l.head)
	end
	it "Funciona el metodo pushtail y el nodo siguiente apunta al nuevo" do
		@l.pushtail(4)
		@l.tail.next.previous.should eq(@l.tail)
	end
	it "Se pueden insertar varios elementos" do
		@l.pushhead(5)
		@l.pushtail(8)
	end
	it "Se puede extraer el primer elemento de la cabeza" do
		@l.pophead
	end
	it "Se puede extraer el primer elemento de la cola" do
		@l.poptail
	end
	it "Se pueden insertar y extraer varios elementos" do
		@l.pushtail(9)
		@l.pushhead(11)
		@l.pophead
		@l.poptail
		@l.pophead
	end
	it "Extraer de una lista vacia da error" do
		@l.pophead
		@l.poptail
	end
end
