require 'sinatra'
require './config'
require './lib/Ahorcado'

ahorcado= nil
get '/secreto' do
    ahorcado=Ahorcado.new(params[:p])
    @palabra= ahorcado.mostrarGuiones()
    erb :index
end

get '/' do
    ahorcado=Ahorcado.new("NOVA")
    @palabra= ahorcado.mostrarGuiones()
    erb :index
end

post '/' do
    @palabra=ahorcado.arriesgar(params[:letra])
    @mensaje=ahorcado.evaluar()
    erb :index
end