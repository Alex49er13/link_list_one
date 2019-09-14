class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end

  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end
  
  node1 = LinkedListNode.new(37)
  node2 = LinkedListNode.new(99, node1)
  node3 = LinkedListNode.new(12, node2)
  
  print_values(node3)

  class Stack
        attr_reader :data
    
        def initialize
            @data = nil
        end

        def push(value)
            @data = LinkedListNode.new(value, @data)

        end
        #pop an item off the stack
        #remove the last item that was pushed onto the 
        #stack and return the value to the user

        def pop  
          return print "nil" if @data.nil?
            print "#{@data.value}"
            @data = @data.next_node
          
          print "#{pop.value}"
        end
   

    def reverse_list(list)
        
    
        while list
            push(list.value)# ADD CODE HERE
            list = list.next_node
        end
    
        return data# ADD CODE HERE
    end
end
    
    stack = Stack.new

puts "-------"

revlist = stack.reverse_list(node3)

print_values(revlist)
