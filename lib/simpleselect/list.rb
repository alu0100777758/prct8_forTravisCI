require "simpleselect/listNode.rb"

class List
    include Enumerable
    #DEFINIR each
    def initialize(nodo)
        raise unless nodo.is_a? (ListNode)
        @head = nodo
        @tail = nodo
    end
    def push (nodo)
        raise unless nodo.is_a? (ListNode)
        nodo.prev=@tail
        @tail.next=nodo
        @tail=nodo
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
        @head.prev = nil
        aux
    end
    def vacia?
        a = false
        if (@head == nil)
            a = true
        end 
        a
    end 
    def headToTail()
        ###OJO FELIX jajjajajajja
       ## val=[@head.value] Antes estaba asi
        val=[@head.value]
        nodo=@head
        while (nodo!=@tail)do
            nodo=nodo.next
            val.push(nodo.value)      ###Cuando recorres pusheas nodos, no valores, entonces no puede inicializar con un valor si luego pusheas nodos
        end
        val
    end
    def tailToHead()
        val=[@tail.value]
        nodo=@tail
        while (nodo!=@head)do
            nodo=nodo.prev
            val.push(nodo.value)
        end
        val
    end
end
