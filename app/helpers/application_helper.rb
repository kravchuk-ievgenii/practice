module ApplicationHelper

  def time_now
   Time.now.strftime("%H:%M")
  end

  def quantity_users
    quantity = @users.length
  end 

  def quantity_posts_posts
    quantity = @user.posts.count
  end
   def quantity_posts (user)
    quantity = user.posts.count
  end 
end
