class PostsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
       @posts = Post.all

  end

  def show
   @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
      users = User.all

      users.each do |user|

      SubscribeMailer.with(user: user).subscribe_email.deliver_later

      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
   @post = Post.find(params[:id])
  end

 def update
   @post = Post.find(params[:id])
   if @post.edit_count < 6 and @post.update(post_params)
       @post.edit_count = @post.edit_count + 1
       @post.save
     redirect_to @post
    else
     render :edit, status: :unprocessable_entity
    end
 end

 def destroy
     @post = Post.find(params[:id])
     @post.destroy
     redirect_to :controller => 'posts', :action => 'index'
 end

 def self.get_by_interval(interval)
   if interval
    @posts = Post.where("created_at>?",   DateTime.now.ago(1.week).to_date).all
  else
    @posts = Post.where("created_at>?",   DateTime.now.ago(1.day).to_date).all
  end
end

  private
  def post_params
      params.require(:post).permit(:title,:body)
  end
end
