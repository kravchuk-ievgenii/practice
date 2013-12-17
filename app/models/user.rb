class User < ActiveRecord::Base
  has_many :posts

  class << self

    def big (user) 
      user.capitalize!
    end

    def sir (user)
       user.prepend 'Sir, '
      
    end 
    
  end 

end
