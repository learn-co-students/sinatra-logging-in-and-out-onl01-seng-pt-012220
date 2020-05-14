require 'pry'
class Helpers
@@all = []
    def self.current_user(session)
        @user = User.find_by(id: session[:user_id])
       @@all << self
       binding.pry
    end

    def self.is_logged_in?(session) 
        !!session[:user_id]
    end

end