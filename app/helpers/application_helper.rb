module ApplicationHelper

  def time_now
   Time.new
  end

  def quantity_users
    quantity = @users.length
  end 

  def quantity_posts
    quantity = @posts.length 
  end
  
end
