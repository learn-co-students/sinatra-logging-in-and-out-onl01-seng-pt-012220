require 'sinatra/base'
class Helpers 
    def self.current_user(session)
        @current_user = User.find_by(id: session[:user_id])
    end

    def self.is_logged_in?(session)
        @user = User.all
        @current_user = @user.find_by(id: session[:user_id])
        if @current_user[:id] == session[:user_id]
            true
        else
            false
        end
    end
end
