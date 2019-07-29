class PodcastGroupController < ApplicationController
    before_action :current_podcast_group, only: [:show, :edit, :destroy]

    def index
        podcastGroups = PodcastGroup.all
        render json: podcastGroups.to_json(:include => [:Podcast])
    end
    
      def show
    
      end
    
      def new
        @podcastGroup = PodcastGroup.new
      end
    
      def create
        podcastGroup = PodcastGroup.create(podcastGroup_params)
    
        
      end

      def destroy
        @podcastGroup.destroy
    
        
      end

      private
  
      def podcast_group_params
       params.require(:podcast_group).permit(:name)
      end
  
      def current_podcast_group
      @podcastGroup = PodcastGroup.find(params[:id])
        
      end

end