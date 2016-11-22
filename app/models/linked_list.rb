class Node
	attr_accessor :data, :next
	def initialize(data)
		@data = data
		@next = nil
	end
end

class LinkedList
	attr_reader :head
	def initialize(data)
		@head = Node.new(data)
	end


	def insert(data, current=@head)
		if current.next
			insert(data, current.next)
		else 
			current.next = Node.new(data)
		end
	end
end


ll = LinkedList.new("first node")
ll.insert("second node")
puts ll

