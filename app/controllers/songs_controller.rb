class SongsController < ApplicationController

    def new
        @songs = Song.new   
    end

    def index
        @songs = Song.all
                    # byebug
        @genre_id = params[:genre_id]
        if @genre_id == nil
            @song_genre_id = Song.select("genre_id")

            @genre_name = Song.find_by(genre_id: @song_genre_id).genre.name
        else
            @genre_name = Song.find_by(genre_id: @genre_id).genre.name
            @songs = Song.where(genre_id: @genre_id)
        end
    end

    def create
        @song = Song.new(song_params)

        if @song.save
            redirect_to @song
        else
            render 'new'
        end
    end

    def show
        @song = Song.find(params[:id])
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy

        redirect_to song_path(@song)        
    end

    private

        def song_params
            params.require(:song).permit(:name, :genre_id)
        end
end
