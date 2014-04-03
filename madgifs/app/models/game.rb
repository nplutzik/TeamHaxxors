class Game < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  belongs_to :player, class_name: "User"

  def score

    gif_score1= HTTParty.get("http://api.giphy.com/v1/gifs/search?q=burn&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    gif_score2= HTTParty.get("http://api.giphy.com/v1/gifs/search?q=facepalm&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    gif_score3= HTTParty.get("http://api.giphy.com/v1/gifs/search?q=whatever&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    gif_score4 = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=thumbs-up&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    gif_score5=  HTTParty.get("http://api.giphy.com/v1/gifs/search?q=high-five&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    gif_score6 =  HTTParty.get("http://api.giphy.com/v1/gifs/search?q=mic-drop&api_key=dc6zaTOxFJmzC")["data"].sample["url"] + ".gif"

    music_score1 = HTTParty.get("http://developer.echonest.com/api/v4/song/search?api_key=CNQ7EJLGCHNW8QOIT&format=json&max_energy=.5&max_tempo=90")["response"]["songs"].sample["audio_summary"]["analysis_url"]

    music_score2 = HTTParty.get("http://developer.echonest.com/api/v4/song/search?api_key=CNQ7EJLGCHNW8QOIT&format=json&min_energy=.5&max_energy=.8&min_tempo=90&max_tempo=120")["response"]["songs"].sample["audio_summary"]["analysis_url"]

    music_score3 = HTTParty.get("http://developer.echonest.com/api/v4/song/search?api_key=CNQ7EJLGCHNW8QOIT&format=json&min_energy=.9&min_tempo=120&bucket=id:7digital-US&bucket=audio_summary&bucket=tracks")["response"]["songs"].sample["audio_summary"]["analysis_url"]

  end
end
