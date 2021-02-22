class LinkedList
  attr_accessor :list

  $list = []

  def append(value)
    new_node = Node.new(value)
    $list.push(new_node)  
  end  

  def prepend(value)
    new_node = Node.new(value)
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
    i = 0
    toggle = nil
    while i < $list.length do
      if $list[i].value === item
        toggle = true
      end
      i += 1
    end
    toggle === true ? toggle : false   
  end  

  def find (value)
    index = 'nil'
    $list.each_with_index.map { |node, i| if node.value === value
    index = i
  end }
    return index
  end  

  def to_s
    $list.map { |node| puts node }
  end   

end

class Node
  attr_accessor :value, :next_node

  def initialize (value)
  @value = value
  end

  next_node = nil
end  