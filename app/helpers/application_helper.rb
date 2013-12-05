module ApplicationHelper

  def time_now
   Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def quantity_users
    quantity = @users.length
  end 

  def quantity_posts
    quantity = @posts.length 
  end
  
end
