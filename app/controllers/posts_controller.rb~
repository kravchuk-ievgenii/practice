class PostsController < ApplicationController
before_filter :load_parent
  
  def index
    @posts = @user.posts.all
  end

  def show
    @post = @user.posts.find(params[:id])
  end

  def new
    @post = @user.posts.new
  end

  def edit
    @post = @user.posts.find(params[:id])
  end
  
  def create
    @post = @user.posts.new(params[:post].permit(:content, :user_id))

    respond_to do |format|
      if @post.save
        format.html { redirect_to [@user, @post], notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @post = @user.posts.find(params[:id])

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [@user, @post], notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = @user.posts.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to user_posts_path(@user) }
      format.json { head :no_content }
    end
  end

  private

    def load_parent
      @user = User.find(params[:user_id])
    end
 
    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end
