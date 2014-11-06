require "lib/simpleselect/simpleSelect.rb"

class TorFalse < SimpleSelect
    def initialize (preg)
        super(preg, ["a) Verdadero", "b)falso"])
    end
end
