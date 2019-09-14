class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
    
  def print_values
    if @value
      print "#{@value} --> "
      @next_node.print_values if @next_node
    else
      print "nil\n"
      return
    end
  end
  def reverse_list(list, previous=nil)
   current_head = list.next_node
   list.next_node =  previous 
    while current_head
      reverse_list(current_head, list)
     
     end
  end
end
  node1 = LinkedListNode.new(37)
  node2 = LinkedListNode.new(99, node1)
  node3 = LinkedListNode.new(12, node2)
  
 node3.print_values

