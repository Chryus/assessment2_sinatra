require 'bundler'
Bundler.require

module Rabbits
  class App < Sinatra::Application

    set :database, "sqlite3:///database.db"

    Dir.glob('./lib/*.rb') do |model|
      require model
    end

    get '/' do 
      @cats = SpaceCat.all
      haml :index
    end

    get 'new' do
      @cat = SpaceCat.new
      haml :new
    end

    get 'show' do
      @cat = SpaceCat.all(params[:id])
      haml :show
    end

    post 'create' do
      @cat = SpaceCat.new(params[:id])
      haml :create
    end

    get 'edit' do
      @cat = SpaceCat.find(params[:id])
      haml :edit
    end

    post 'update' do
      @cat = SpaceCat.find(params[:id])
    end

    get 'delete' do
      @cat = SpaceCat.delete(params[:id])
      haml 
    end

  end
end
