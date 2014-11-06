require "lib/simpleselect/listNode.rb"

class List
    def initialize(nodo)
        raise unless nodo.is_a? (ListNode)
        @head = nodo
    end
    def push (nodo)
        raise unless nodo.is_a? (ListNode)
        aux = @head
        while aux.next!=nil do
            aux=aux.next
        end
        aux.next=nodo
    end
    
    def multiple_push (nodos)
        nodos.each { |i|
            raise unless i.is_a? (ListNode)
            push(i)
        }
    end
    def pop 
        aux = @head.value
        @head = @head.next
        aux
    end
    def vacia?
        a = false
        if (@head == nil)
            a = true
        end 
        a
    end 
end
