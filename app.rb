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
      @phrases += "\n" 
    end
    "#{@phrases}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1-@number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1*@number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1/@number_2}"
    end
  end
  
end