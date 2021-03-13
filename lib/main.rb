require_relative 'LinkedList.rb'

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.append(8)
list.prepend(0)
contains = 8
insertIndex = 1
insertValue = 50


puts list.to_s
puts "head: #{list.head}"
puts "tail: #{list.tail}"
puts "Size: #{list.size}"
puts "At: #{list.at(2)}"
puts "contains?(#{contains}): #{list.contains?(contains)}"
puts "find(#{contains}): #{list.find(contains)}"
puts "Insert #{insertValue} at index #{insertIndex}: #{list.insert_at(insertValue, insertIndex)}"
puts list.to_s
puts "Pop: #{list.pop}"
puts "Size: #{list.size} (after pop)"
puts list.to_s

list2 = LinkedList.new
puts "\nTests for an empty list:"
puts list2.to_s
puts "head: #{list2.head}"
puts "tail: #{list2.tail}"
puts "Size: #{list2.size}"
puts "At: #{list2.at(2)}"
puts "contains?(#{contains}): #{list2.contains?(contains)}"
puts "find(#{contains}): #{list2.find(contains)}"
puts "Insert #{insertValue} at index #{insertIndex}: #{list2.insert_at(insertValue, insertIndex)}"
puts "Pop: #{list2.pop}"
puts "Size: #{list2.size} (after pop)"
puts list2.to_s