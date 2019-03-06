class ApplicationController < ActionController::API

    def encode_token(payload_hash)
        # should store secret in env variable
        JWT.encode(payload_hash, 'Signature')
      end
     
      def token
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
      end
     
      def decoded_token
        if token
          # header: { 'Authorization': 'Bearer <token>' }
          begin
            JWT.decode(token, 'Signature', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            nil
          end
        end
      end
     
      def current_user
        if decoded_token
          user_id = decoded_token[0]['user_id']
          @user = User.find_by(id: user_id)
        end
      end
     
      def logged_in?
        !!current_user
      end

end
