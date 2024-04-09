require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>

  <ul>

  <li><a href=\"/rock\">Play rock</a></li>
  <li><a href=\"/paper\">Play paper</a></li>
  <li><a href=\"/scissors\">Play scissors</a></li>

</ul>

<a href = https://en.wikipedia.org/wiki/Rock_paper_scissors target = blank >From Wikipedia: </a> 

<div> Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand. </div>

</div> These shapes are: </div>

<li> \"rock\" (a closed fist) </li>
<li> \"paper\" (a flat hand) </li>
<li> \"scissors\" (a fist with the index and middle fingers extended, forming a V) </li>

<div> A player who decides to play rock will beat another player who has chosen scissors (\"rock crushes scissors\" or sometimes \"blunts scissors\"), but will lose to one who has played paper (\"paper covers rock\"); a play of paper will lose to a play of scissors (\"scissors cut[s] paper\"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie. </div>

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
