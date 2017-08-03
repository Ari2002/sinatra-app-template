require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/results' do
     @sender_name = params[:sender_name]
    @receivers_name = params[:receivers_name]
    @message = params[:message]
    card_maker(@sender_name,@receivers_name,@message)
    
    erb :results
    
  end
end 