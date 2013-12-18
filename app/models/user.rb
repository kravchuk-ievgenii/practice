class User < ActiveRecord::Base
  has_many :posts
   validates :name, presence: true
   validates_length_of :name, :minimum =>2

  class << self

    def big (user) 
      user.capitalize!
    end

    def sir (user)
       user.prepend 'Sir, '
      
    end 
    
  end 

end
