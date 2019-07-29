class PodcastsController < ApplicationController
    before_action :current_podcast, only: [:show, :edit, :destroy]

    def index
        podcasts = Podcast.all
        render json: podcasts
      end
    
      def show
        render json: @podcast
        
      end
    
      def new
        @podcast = Podcast.new
      end
    
      def create
        podcast = Podcast.create(podcast_params)
    
        
      end

      def destroy
        @podcast.destroy
    
        
      end

      private
  
      def podcast_params
       params.require(:podcast).permit(:name, :url)
      end
  
      def current_podcast
      @podcast = Podcast.find(params[:id])
        
      end

end