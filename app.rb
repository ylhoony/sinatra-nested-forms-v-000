require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      binding.pry
      @pirate = Pirate.new
      @pirate.name = params[:name]
      @pirate.weight = params[:weight]
      @pirate.height = params[:height]

      

      erb :'pirates/show'
    end

  end
end
