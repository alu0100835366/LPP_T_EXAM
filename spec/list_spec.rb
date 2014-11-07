require "lib/list.rb"
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
	it "Funciona el metodo push y el nodo anterior apunta al nuevo" do
		@l.push(4)
		@l.head.previous.next.should eq(@l.head)
	end
	it "Se pueden insertar varios elementos" do
		@l.push(5)
		@l.push(8)
	end
	it "Se puede extraer el primer elemento" do
		@l.pop
	end
	it "Se pueden insertar y extraer varios elementos" do
		@l.push(9)
		@l.push(10)
		@l.pop
		@l.pop
		@l.pop
	end
	it "Extraer de una lista vacia da error" do
		@l.pop
		@l.pop
	end
end
