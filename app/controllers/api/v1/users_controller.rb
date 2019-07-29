class Api::V1::UsersController < ApplicationController
 

    def index
        users = User.all
        
        render json: users.to_json(:include => [:page], :except => [:updated_at, :created_at, :password_digest, :page_id])
      
      end

      def show
        user = User.find_by(params[:id])
      end


    def create;
        user = User.new(username: params[:username], password: params[:password], page_id: params[:page_id])
        if user.save
          payload = {user_id: user.id}
          token = issue_token(payload)
          render json: { jwt: token }

        else
          render json: { error: "Signup not successful !"}
        end
      end
end
