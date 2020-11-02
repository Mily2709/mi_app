class Ahorcado
    attr_reader :palabra
    def initialize(palabraSecreta)
        @palabra="_"
        @palabraSecreta=palabraSecreta
        @guiones = "_"
        @intentos=3
    end
    def arriesgar(letra)
        if @palabraSecreta.include?(letra) 
            @guiones[@palabraSecreta.index(letra)]=letra
        else
            @intentos=@intentos-1
        end
        return @guiones
    end

    def evaluar
        if !@guiones.include?('_')
            return "Ganaste"
        elsif @intentos>0
            return "Sigue jugando. Te quedan #{@intentos} intentos"
        else            
            return "Perdiste"
        end  
    end


    def mostrarGuiones()
        cantidadLetras = @palabraSecreta.length
    
        for i in (1..cantidadLetras-1)  do
            
            @guiones = @guiones.concat(" _");

        end
        return @guiones       
    end


end