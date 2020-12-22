require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @rn = params[:name].reverse
    "#{@rn}"
  end 

  get '/square/:number' do 
    @square = params[:number].to_i ** 2 
    "#{@square}"
  end 

  get '/say/:number/:phrase' do 
    say_it = ""
    params[:number].to_i.times do 
      say_it += params[:phrase]
    end 
    say_it
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @say_it = [params[:word1], params[:word2] ,params[:word3] , params[:word4] ,  params[:word5] ].join(" ")
    "#{@say_it}."
  end 

  get '/:operation/:number1/:number2' do 
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    @answer = []
    if params[:operation] == "add"
      @answer << n1 + n2 
      "#{@answer.join}"
    elsif params[:operation] == "subtract"
      @answer << n1 - n2 
      "#{@answer.join}"
    elsif params[:operation] == "divide" 
      @answer << n1 / n2 
        "#{@answer.join}"
    else params[:operation] == "multiply"
      @answer << n1 * n2 
        "#{@answer.join}"
    end 
  end 







end