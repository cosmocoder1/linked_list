# based on the some of the resources in the lesson, this seemed like a fun way of giving an array a linked-list functionality

class LinkedList
  attr_accessor :list

  $list = []

  def append(data)
    new_node = Node.new(data)
    $list.push(new_node) 
    $list[$list.length - 2].next_node = new_node.data 
  end  

  def prepend(data)
    head = $list[0]
    new_node = Node.new(data)
    $list.unshift(new_node)
  end  

  def size
    $list.count
  end  

  def head
    $list[0]
  end  

  def tail
    $list[$list.length - 1]
  end  

  def at (index)
    $list[index]
  end  

  def pop 
    $list.pop
  end  

  def contains? (item)
    contains = false
    $list.each_with_index.map { |node, i| if node.value === item
    contains = true
    end }
    return contains
  end  

  def find (value)
    index = 'nil'
    $list.each_with_index.map { |node, i| if node.value === value
    index = i
    end }
    return index
  end  

  def to_s
    $list.map.with_index { |node, i| 
    if i != $list.length - 1
      print "#{node.data} -> "
    else
    print "#{node.data} -> nil" 
    end } 

  end

end

class Node
  attr_accessor :data, :next_node
  def initialize (data)
  @data = data
  end
end  

list_1 = LinkedList.new
list_1.append(1)
list_1.append(2)
list_1.append(3)

puts list_1.to_s

