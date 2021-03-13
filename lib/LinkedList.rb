require_relative 'Node'

class LinkedList
  attr_reader :size
  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    if @head
      node = @head
      while node.next_node
        node = node.next_node
      end
      node.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
    @size += 1
  end

  def prepend(value)
    if @head
      node = Node.new(value)
      node.next_node = @head
      @head = node
    else
      @head = Node.new(value)
    end
    @size += 1
  end

  def head
    return @head.value if @size > 0
    nil
  end

  def tail
    if @head
      tail = @head
      while tail.next_node
        tail = tail.next_node
      end
    return tail.value
    end
    nil
  end

  def at(index)
    if index < @size
      node = @head
      index.times do
        node = node.next_node
      end
      node.value
    else
      "index out of range"
    end
  end

  def pop
    return nil if @size < 1
    # Remove head if only one node
    if @size == 1
      value = @head.value
      @head = nil
      @size -= 1
      return value
    end
    node = @head
    (@size - 2).times do
      node = node.next_node
    end
    value = node.next_node.value
    node.next_node = nil
    @size -= 1
    value
  end

  def contains?(value)
    return false if @size < 1
    node = @head
    return true if node.value == value
    while node.next_node
      node = node.next_node
      return true if node.value == value
    end
    false
  end

  def find(value)
    return nil if size < 1
    node = @head
    index = 0
    return index if node.value == value
    while node.next_node
      node = node.next_node
      index += 1
      return index if node.value == value
    end
    nil
  end

  def to_s
    string = ""
    if @head
      node = @head
      string = "( #{node.value} ) -> "
      while node.next_node
        node = node.next_node
        string += "( #{node.value} ) -> "
      end
    end
    string += "nil"
  end

end