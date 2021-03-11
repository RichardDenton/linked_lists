require_relative 'Node'

class LinkedList
  def initialize
    @head = nil
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
  end

  def prepend(value)
    if @head
      node = Node.new(value)
      node.next_node = @head
      @head = node
    else
      @head = Node.new(value)
    end
  end

  def head
    @head.value
  end

  def tail
    tail = nil
    if @head
      tail = @head
      while tail.next_node
        tail = tail.next_node
      end
    end
    tail.value
  end

  def size
    count = 0
    if @head
      count += 1
      node = @head
      while node.next_node
        node = node.next_node
        count += 1
      end
    end
  count
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