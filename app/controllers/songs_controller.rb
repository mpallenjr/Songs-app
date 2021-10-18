class SongsController < ApplicationController
  def index
    all_songs = Song.all
    render json: all_songs.as_json
  end

  def create
    new_song = Song.new(
      title: params[:input_title],
      album: params[:input_album],
      artist: params[:input_artist],
      year: params[:input_year]
    )
    new_song.save
    render json: new_song.as_json
  end

  def show
    the_id = params[:id]
    show_song = Song.find_by(id: the_id)
    render json: show_song.as_json
  end
end
