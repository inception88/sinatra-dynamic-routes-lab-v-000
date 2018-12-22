require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
  params[:name].reverse
  end

  get "/square/:number" do
  number = params[:number].to_i
  answer = number**2
  answer.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    answer = ""
    number.times {answer = answer+phrase}
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    answer = number1+number1
  end
  
end
