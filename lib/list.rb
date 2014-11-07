class List
	attr_reader :head

	Node = Struct.new(:value, :next, :previous)

	def initialize(first_value=nil)
		@head = Node.new(first_value,nil,nil) if first_value
	end

	def push(value)
		if @head
			new_node = Node.new(value,nil,nil)
			@head[:next] = new_node
			new_node[:previous] = @head
			@head = new_node
		else
			@head = Node.new(value,nil,nil)
		end
	end

	def pop
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
end
