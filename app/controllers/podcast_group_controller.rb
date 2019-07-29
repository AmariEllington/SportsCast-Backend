class PodcastGroupController < ApplicationController
    before_action :current_podcast_group, only: [:edit, :destroy]

    def index
        podcastGroups = PodcastGroup.all
        render json: podcastGroups.to_json(:include => [:Podcast])
    end
    
      def show
        category = PodcastGroup.find_by(name:params[:id])
        podcasts = Podcast.where(podcast_group_id: category)
        render json: podcasts
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