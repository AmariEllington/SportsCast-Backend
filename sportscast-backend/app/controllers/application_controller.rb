class ApplicationController < ActionController::API
    def issue_token(payload)
        JWT.encode(payload, "supersecretcode")
      end
    
      def decode_token(token)
        JWT.decode(token, "supersecretcode")[0]
      end

      def get_token
        request.headers["Authorization"]
      end
      
      def current_user
        token = get_token
        decoded_token = decode_token(token)
        user = User.find(decoded_token["user_id"])
        user_hash = {
          username: user[:username],
          id: user[:id]
        }
      end
      
      def logged_in
        !!current_user
      end
end
