require './lib/Ahorcado'

describe Ahorcado do
    it "mostrar palabra (letra)" do
       ahorcado = Ahorcado.new("A")
       expect(ahorcado.mostrarGuiones).to eq "_"
    end

    it "arriesgar (letra)" do
        ahorcado = Ahorcado.new("A")
        expect(ahorcado.arriesgar("A")).to eq "A"
   end

   it "errar (letra)" do
      ahorcado = Ahorcado.new("A")
      expect(ahorcado.arriesgar("B")).to eq "_"
   end

   it "mostrar palabra (palabra)" do
      ahorcado = Ahorcado.new("CASA")
      expect(ahorcado.mostrarGuiones).to eq "_ _ _ _"
   end

   it "evaluar si ganaste" do
      ahorcado = Ahorcado.new("A")
      ahorcado.arriesgar("A")
      expect(ahorcado.evaluar).to eq "Ganaste"
   end
end