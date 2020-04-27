class User < ActiveRecord::Base
  
    attr_accessor :username, :password, :balance 
    
    @@all = []
    
    def initialize (username, password, balance)
      @username = username
      @password = password
      @balance = balance
      @@all << self 
    end
  end
  
  

