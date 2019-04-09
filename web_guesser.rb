require 'sinatra'
require 'sinatra/reloader'

NUM = rand(0..100)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => NUM, :message => message, :guess => guess}
end

def check_guess(guess)
  if guess > NUM+5
    return "Way too high!"
  elsif guess < NUM-5
    return "Way too low!"
  elsif guess > NUM
    return "Too high!"
  elsif guess < NUM
    return "Too low!"
  else
    return "You got it right!"
  end
end
