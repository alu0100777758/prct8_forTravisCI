class Pregunta
    attr_reader :preg, :dif
    def initialize (preg, dif)
        @preg = preg
        @dif = dif
    end
    def to_s
        aux = @preg + "\n"
        aux
    end
end
