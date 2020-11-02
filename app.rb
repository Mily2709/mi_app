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
    ahorcado=Ahorcado.new("A")
    @palabra= ahorcado.mostrarGuiones()
    erb :index
end

post '/' do
    @mensaje=ahorcado.arriesgar(params[:letra])
    erb :index
end