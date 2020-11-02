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
            indices=@palabraSecreta.enum_for(:scan, /(?=#{letra})/).map { Regexp.last_match.offset(0).first }
            for indice in indices do
                @guiones[indice*2]=letra
            end
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