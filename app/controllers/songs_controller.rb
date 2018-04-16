class SongsController < ApplicationController

    def create
        @genre = Genre.find(params[:genre_id])
        @song = @genre.songs.create(song_params)
        redirect_to genre_path(@genre)
    end

    def destory
        @genre = Genre.find(params[:genre_id])
        @song = @genre.songs.find(params[:id])
        @song.destory

        redirect_to genre_path(@genre)        
    end

    private

        def song_params
            params.require(:song).permit(:name)
        end
end
