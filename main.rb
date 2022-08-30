class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    last_node = @head
    if last_node.nil?
      @head = new_node
    else
      last_node = last_node.next_node until last_node.next_node.nil?
      last_node.next_node = new_node
    end
    self
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
    self
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new()
linked_list.append(2)
linked_list.append(3)