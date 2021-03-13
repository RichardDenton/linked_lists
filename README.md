# Linked Lists in Ruby
An implementation of the linked list data structure created using Ruby. Linked lists aren't required in Ruby as an array handles all of the operations that a linked list would be used for, so, this was created to gain a better understanding of the data structure.

Running the tests.rb file shows the results of using each of the implemented methods on an example linked list and an empty linked list.

## Implemented methods
* append(value) adds a new node containing value to the end of the list
* prepend(value) adds a new node containing value to the start of the list
* size returns the total number of nodes in the list
* head returns the first node in the list
* tail returns the last node in the list
* at(index) returns the node at the given index
* pop removes the last element from the list
* contains?(value) returns true if the passed in value is in the list and otherwise returns false.
* find(value) returns the index of the node containing value, or nil if not found.
* to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
* insert_at(value, index) that inserts a new node with the provided value at the given index.
* remove_at(index) that removes the node at the given index.

*Method names and descriptions copied from the Odin Project Curriculum page for this project*

Created as part of the Odin Project's [Curriculum](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists)