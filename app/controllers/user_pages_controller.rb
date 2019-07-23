class UserPagesController < ApplicationController
 

    def index
        userpages = UserPage.all
        render json: userpages
      end

      def show
        
      end

      private

      def userpage_params
      params.require(:userpage).permit(:user_id, :page_id)
      end

      def current_userpage
        @userpage = UserPage.find(params[:id])
      end
end
