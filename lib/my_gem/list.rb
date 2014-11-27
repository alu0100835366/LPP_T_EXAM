Node = Struct.new(:value, :next, :previous)

class List
	include Enumerable
	attr_accessor :head
	attr_accessor :tail
	#Inicializa la lista con un primer valor si existe
	def initialize(first_value=nil)
		@head = Node.new(first_value,nil,nil) if first_value
		@tail = @head
	end
	#Añade un nodo a la cabeza de la lista
	def pushhead(value)
		if @head
			new_node = Node.new(value,nil,nil)
			@head[:next] = new_node
			new_node[:previous] = @head
			@head = new_node
		else
			@head = Node.new(value,nil,nil)
			@tail = @head
		end
	end
	#Añade un nodo a la cola de la lista
	def pushtail(value)
		if @tail
			new_node = Node.new(value,nil,nil)
			@tail[:previous] = new_node
			new_node[:next] = @tail
			@tail = new_node
		else
			@head = Node.new(value,nil,nil)
			@tail = @head
		end
	end
	#Saca el nodo que está en la cabeza
	def pophead
		if @head
			if @head[:previous]==nil
				salida = @head[:value]
				@tail=@head=nil
				return salida;
			else
				salida = @head[:value]
				@head=@head[:previous]
				return salida;
			end
		else
			return "No elements left"
		end
	end
	#Saca el nodo que está en la cola
	def poptail
		if @tail
			if @tail[:next]==nil
				salida = @tail[:value]
				@head=@tail=nil
				return salida;
			else
				salida = @tail[:value]
				@tail=@tail[:next]
				return salida;
			end
		else
			return "No elements left"
		end
	end
	#Devuelve el tamaño de la lista
	def size
		aux1=@head.previous
		aux2=1
		while(aux1!=nil)
			aux1=aux1.previous
			aux2+=1
		end
		return aux2
	end
	#Metodo necesario para hacer la lista enumerable
	def each
		aux = @tail
		while aux != nil
			yield aux.value
			aux = aux.next
		end
	end
end
