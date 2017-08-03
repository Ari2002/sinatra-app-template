require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post "/results" do
    
    @sender_name = param[:sender_name]
    @receivers_name = param[:receivers_name]
    @message = param[:message]
    card_maker(@sender_name,@receivers_name,@message)
    
    erb :results
    
  end
end 