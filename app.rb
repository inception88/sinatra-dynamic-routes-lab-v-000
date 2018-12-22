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
  number.times {phrase}
  end
end
