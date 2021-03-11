require_relative 'LinkedList.rb'

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.prepend(0)
puts list.head
puts list.tail
puts list.size
puts list.to_s