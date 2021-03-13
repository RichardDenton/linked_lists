require_relative 'Node'

class LinkedList
  attr_reader :size
  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    if @head
      node = get_last_node
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
    return get_last_node.value if @head
    return nil
  end

  def at(index)
    return self.get_node_at(index).value if self.get_node_at(index)
    "index out of range"
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

  def insert_at(value, index)
    return "index out of range" if index > @size or index < 0
    # append if inserting after last item
    if index == size and size > 0
      self.append(value)
      return value
    end
    # prepend if inserting at index 0
    if index == 0
      self.prepend(value)
      return value
    end
    # insert at specified index for all other cases
    current_node = get_node_at(index)
    previous_node = get_node_at(index -1)
    new_node = Node.new(value)
    new_node.next_node = current_node
    previous_node.next_node = new_node
    @size += 1
    value
  end

  # Helper function for getting the last node object
  def get_last_node
    if @head
      last_node = @head
      while last_node.next_node
        last_node = last_node.next_node
      end
    return last_node
    end
    nil
  end

  #Helper function for getting node object at specified index
  def get_node_at(index)
    if index < @size and index >= 0
      node = @head
      index.times do
        node = node.next_node
      end
      node
    else
      nil
    end
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