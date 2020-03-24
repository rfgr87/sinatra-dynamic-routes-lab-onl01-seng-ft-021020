require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse 
  end
  
  get '/square/:number' do 
    @number = params[:number]
    @n_int = @number.to_i**2 
    @n_int.to_s
  end 
  
  get '/say/:number/:phrase' do 
    @phrases = ""
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do
      @phrases += @phrase
      @phrases += \n 
    end
    "#{@phrases}"
  end
  
  
  
  
end