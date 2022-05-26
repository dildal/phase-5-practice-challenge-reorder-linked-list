require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  # given a linked list reorder it so all the nodes in odd positions coe first and all the nodes in even positions come after
  def reorder_linked_list
    # create an even positions linked list
    # go through linked list starting at head
    # take value of the next node and create a new node so with that value and next to null
    # set current node's next = to next node's next node (so 1's next will equal 2's next or 1's next will equal 3)
    # when current linkedList next is null set it equal to the even head
    return if head.nil? 
    even = head.next_node
    odd = head
    even_head = even
    while even && even.next_node
        odd.next_node = even.next_node
        odd = odd.next_node

        even.next_node = odd.next_node
        even = even.next_node
        
    end
    odd.next_node = even_head
    odd
  end

head = Node.new(1, Node.new(2, Node.new(3, Node.new(4, Node.new(5)))))
linked_list = LinkedList.new(head)
# before reordering, linked_list is: 1 -> 2 -> 3 -> 4 -> 5

linked_list.reorder_linked_list
end


  # ==============================
  # solution given 
  # ==============================
   # if the list is empty, no need to continue
#    return if head.nil?

#    # set odd to the first odd node and even to the first even node
#    odd = head
#    even = head.next_node
 
#    # keep a reference to the first even node
#    even_head = even
 
#    while even && even.next_node
#      # change odd's next_node property to point to the next odd node
#      odd.next_node = even.next_node
 
#      # reset the odd variable to that node
#      odd = odd.next_node
 
#      # change even's next_node property to point to the node after
#      # the new odd node, i.e., the next even node
#      even.next_node = odd.next_node
 
#      # reset the even variable to that node
#      even = even.next_node
#    end
 
#    # change the next_node property of the last odd node to point to the first even node
#    odd.next_node = even_head
  
# end
