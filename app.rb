require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We tied!"
  elsif
    @comp_move == "paper"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end

 erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "We tied!"
  elsif
    @comp_move == "scissors"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end

 erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "scissors"
    @outcome = "We tied!"
  elsif
    @comp_move == "rock"
    @outcome = "We lost!"
  else
    @outcome = "We won!"
  end

 erb(:scissors)
end
