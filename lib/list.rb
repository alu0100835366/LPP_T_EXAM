class list

	Node = Struct.new(:value, :next)

	def initialize(first_value=nil)
		@tail = Node.new(first_value,nil) if first_value
		@head = @tail
	end

	def push(value)
		if @tail
			new_node = Node.new(value, nil)
			@head[:next] = new_node
			@head = new_node
		else
			@tail = Node.new(value,nil)
			@head = @tail
		end
	end

	def pop
		if @tail
			if @head=@tail
				puts @head[:value]
				@head=@tail=nil
			else
				puts @tail[:value]
				@tail=@tail[:next]
			end
		else
			puts "No elements left"
		end
	end
end
