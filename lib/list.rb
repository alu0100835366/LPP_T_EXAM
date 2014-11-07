class List
	attr_reader :head
	attr_reader :tail

	Node = Struct.new(:value, :next, :previous)

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
				puts @head[:value]
				@head=nil
			else
				puts @head[:value]
				@head=@head[:previous]
			end
		else
			puts "No elements left"
		end
	end

	def poptail
		if @tail
			if @tail[:next]==nil
				puts @tail[:value]
				@tail=nil
			else
				puts @tail[:value]
				@tail=@tail[:next]
			end
		else
			puts "No elements left"
		end
	end
end
