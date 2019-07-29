class PagesController < ApplicationController
    before_action :current_page, only: [:show, :edit, :destroy]

    def index
      pages = Page.all
      render json: pages
    end
  
    def show
  
    end
  
    def new
      @page = Page.new
    end
  
    def create
      page = Page.create(page_params)
  
      
    end
  
    # def edit
  
    # end
  
    # def update
    #   @page.update(page_params)
  
    # end
  
    def destroy
      @page.destroy
  
      
    end


  
    private
  
      def page_params
       params.require(:page).permit(:name, :twitter, :youtube)
      end
  
      def current_page
      @page = Page.find(params[:id])
        
      end



end