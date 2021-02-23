class LinkedList
   
  def initialize
    @head = nil
  end  

  def append(data)
    new_node = Node.new(data)
    if @head 
      current_node = @head
      until current_node.next_node === nil do
      current_node = current_node.next_node 
      end
      current_node.next_node = new_node
    else
      @head = new_node
    end     
  end  

  def prepend(data)
    new_node = Node.new(data)
    if @head
      new_node.next_node = @head
      @head = new_node
    else 
      @head = new_node
    end    
  end  

  def size
    count = 0
    current_node = @head
    if !@head
      count
    else
      count += 1
      until current_node.next_node === nil
        count += 1
        current_node = current_node.next_node
      end 
      count   
    end   
  end  

  def head
    return @head.data
  end  

  def tail
    current_node = @head
    until current_node.next_node === nil do
      current_node = current_node.next_node   
    end
    current_node.data 
  end  

  def at (index)
    count = 0
    current_node = @head
    if !@head
      "list is empty"
    else 
      while count < index do
        count += 1
        current_node = current_node.next_node
      end
    end
    current_node.data  
  end  

  def pop 
    current_node = @head
    previous_node = nil
    until current_node.next_node === nil do
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = nil  
  end  

  def contains? (item)
    contains = false
    current_node = @head
    until current_node.next_node === nil || contains === true do
      if current_node.data === item
        contains = true
      else
        current_node = current_node.next_node
      end  
    end  
    contains
  end  

  def find (value)
    index = 'nil'
    
    return index
  end  

  def to_s

  end

end

class Node
  attr_accessor :data, :next_node
  def initialize (data)
  @data = data
  @next_node = nil
  end
end  
  

list_1 = LinkedList.new
list_1.append(1)
list_1.append(2)
list_1.append(3)
list_1.append(4)
list_1.prepend(5)
list_1.prepend(6)


puts list_1.size
list_1.pop
puts list_1.size
puts list_1.contains?(1)







# based on the some of the resources in the lesson, this seemed like a fun way of giving an array a linked-list functionality

=begin
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

=end