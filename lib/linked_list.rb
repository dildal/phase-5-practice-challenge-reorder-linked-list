require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def reorder_linked_list
    return unless self.head
    return unless self.head.next_node
    return unless self.head.next_node.next_node
    current = self.head
    even_linked_list = LinkedList.new(current.next_node)
    even_current = even_linked_list.head
    current.next_node = current.next_node.next_node
    current = current.next_node
    while( current.next_node )
        node_to_remove = current.next_node
        next_even = Node.new(node_to_remove.data)
        if( node_to_remove.next_node )
          current.next_node = node_to_remove.next_node
          even_current.next_node = next_even;
          even_current = next_even
          current = current.next_node
        else
          current.next_node = node_to_remove.next_node
          even_current.next_node = next_even;
          even_current = next_even
          current.next_node = nil
        end
    end
    current.next_node = even_linked_list.head
    current
  end
  
end
