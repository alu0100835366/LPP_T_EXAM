Node = Struct.new(:value, :next, :previous)

class List
	include Enumerable
	attr_accessor :head
	attr_accessor :tail

	def initialize(first_value=nil)
		@head = Node.new(first_value,nil,nil) if first_value
		@tail = @head
	end

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

	def size
		aux1=@head.previous
		aux2=1
		while(aux1!=nil)
			aux1=aux1.previous
			aux2+=1
		end
		return aux2
	end

	def each
		aux = @tail
		while aux != nil
			yield aux.value
			aux = aux.next
		end
	end
end