class SimpleSelect 
    attr_reader :preg, :resp
   def initialize (pregunta, resp)
        @preg, @resp = pregunta, resp
    end
    def imprimir
        puts @preg
        for i in @resp
            puts i
        end
    end
    
    def to_s
        aux = @preg + "\n"
        
        for i in @resp
            aux = aux + i + "\n"
        end
        aux
    end
end