require "lib/simpleselect.rb"

describe ListNode do
    before :all do
        @var5 = SimpleSelect.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego.",  ["a) Cierto", "b) Falso"])
        @var4 = SimpleSelect.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n",  ["a) Una instancia de la clase Class", "b) Una constante","c) Un objeto","d) Ninguna de las anteriores"])
        @var3 = SimpleSelect.new("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n",  ["a) 1", "b) bob","c) Hey","d) Ninguna de las anteriores"])
        @var2 = SimpleSelect.new("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n",  ["a) Cierto", "b) Falso"])
        @var1 = SimpleSelect.new("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n",  ["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"])
        
        @nodovar5=ListNode.new(@var5)
        @nodovar4=ListNode.new(@var4)
        @nodovar3=ListNode.new(@var3)
        @nodovar2=ListNode.new(@var2)
        @nodoVar1= ListNode.new(@var1)
        
        @lista=List.new(@nodoVar1)
    end
    describe "Existe nodo" do
        it "Existe un nodo" do
        end
    end
    describe "Se puede acceder al valor del nodo" do
         it "para Ver preguntas" do
            @nodoVar1.value.preg.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n")
        end
         it "para ver respuestas" do
            @nodoVar1.value.resp.should eq (["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"])
        end

         it"comprobar to_s" do
             @nodoVar1.value.to_s.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n\na) #<Xyz:0xa000208>\nb) nil\nc) 0\nd) Ninguna de las anteriores\n")
          end
    end
    describe "Tiene que existir la lista, debe tener un metodo para saber si es vacia" do
        it "Existe lista" do
        end
        it "Metodo para saber si es vacia" do
            @lista.vacia? 
        end
    end
    describe "Metodos de insercion y eliminacion de elementos de lista" do
        it "Se puede insertar un nodo" do
            @lista.push(@nodovar2)
        end
        it "Se puede insertar varios elementos" do 
           @lista.multiple_push([@nodovar3, @nodovar4])
       end
       it "Para extraer el primer elemento" do
           @lista.pop.to_s.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n\na) #<Xyz:0xa000208>\nb) nil\nc) 0\nd) Ninguna de las anteriores\n")
       end
       it" El orden es el correcto"do
           @lista.pop.to_s.should eq("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n\na) Cierto\nb) Falso\n")
        end
   end
end

