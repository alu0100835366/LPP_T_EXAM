require "lib/list.rb"
describe "#Almacenamiento de nodo" do
	it "Se guarda correctamente un nodo" do
		@test = List.new(3)
		@test.push(4)
		@test.push(5)
		@test.pop
		@test.pop
		@test.pop
		@test.pop
	end
end
