class LinkedList
  attr_accessor :list

  $list = []

  def append(value)
    new_node = Node.new(value)
    $list.push(new_node.value)  
  end  

end

class Node
  attr_accessor :value, :next_node

  def initialize (value)
  @value = value
  end

  next_node = nil
end  

list_1 = LinkedList.new
list_1.append('Nathan')
puts $list
