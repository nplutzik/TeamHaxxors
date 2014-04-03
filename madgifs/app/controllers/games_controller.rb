class GamesController  < ApplicationController

def index
  @user = User.find(params[:user_id])
  @user.games
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
  game = Game.create(games_params)
  game.update(creator: current_user, player: @user)
  redirect_to root_path
end

def update
  @game = Game.find(params[:id])
  @game.update(games_params)
  redirect_to root_path
end

private

def games_params
  params.require(:user).permit(:sentence, :gif1, :gif2, :gif3, :gif4, :player)
end



end
