class User < ActiveRecord::Base
    attr_reader :username, :password, :balance
    def initialize(params)
        @username = params[:username]
        @password = params[:password]
        @balance = params[:balance]
    end
end

