class Ahorcado
    attr_reader :palabra
    def initialize(palabraSecreta)
        @palabra="_"
        @palabraSecreta=palabraSecreta
    end
    def arriesgar(letra)
        if @palabraSecreta.eql? letra
            return "Ganaste"            
        else
            return "Perdiste"
        end
    end

    def mostrarGuiones()
        cantidadLetras = @palabraSecreta.length
        guiones = "_"
        for i in (1..cantidadLetras-1)  do
            
            guiones = guiones.concat(" _");

        end
        return guiones       
    end

end