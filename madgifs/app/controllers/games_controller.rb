class GamesController  < ApplicationController

def index
  @user = User.find(params[:user_id])
  @games = Game.where(player_id: @user.id)
end

def show
  @game = Game.find(params[:id])
end

def new
  @user = User.find(params[:user_id])
  @game = Game.new
end

def create
  @user = User.find(params[:user_id])
  game = Game.new
  game.creator_id = current_user.id
  game.player_id = @user.id
  game.gif1 = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:game][:gif1]}&api_key=dc6zaTOxFJmzC")["data"].sample["images"]["fixed_height"]["url"]
  game.gif2 = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:game][:gif2]}&api_key=dc6zaTOxFJmzC")["data"].sample["images"]["fixed_height"]["url"]
  game.gif3 = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:game][:gif3]}&api_key=dc6zaTOxFJmzC")["data"].sample["images"]["fixed_height"]["url"]
  game.gif4 = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:game][:gif4]}&api_key=dc6zaTOxFJmzC")["data"].sample["images"]["fixed_height"]["url"]
  game.save
  redirect_to root_path
end

def update
  @game = Game.find(params[:id])
  @game.update(games_params)
  redirect_to root_path
end


def score
  @score = Game.find(params[:id])
end

private

def games_params
  params.require(:user).permit(:gif1, :gif2, :gif3, :gif4, :player)
end

end
