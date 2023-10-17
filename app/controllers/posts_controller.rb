class PostsController < ApplicationController
 before_action :authenticate_user!
 
 def index
  @title = params[:title]
  if @title.present?
    @posts = Post.where('title LIKE ?', "%#{title}%")
  else
    @posts = Post.all
  end
  @selected_posts = Post.where(add: 1)
  render :index  # renders app/views/posts/index.html.erb
 end
 
 
 def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to index_post_path, notice: '削除しました'
 end
 

 def new
  @post = Post.new 
  render :new
 end
 
 def create
  @post = Post.new(post_params)
  
  if params[:post][:image]
   @post.image.attach(params[:post][:image])
  end
   
  if @post.save
   redirect_to index_post_path,notice:'登録しました'
  else
   render :new, status: :unprocessable_entity
  end
 end
 
 
 def edit
  @post = Post.find(params[:id])
  render :edit
 end
 
 def update
   @post = Post.find(params[:id])
   if params[:post][:image]
     @post.image.attach(params[:post][:image])
   end
   if @post.update(post_params)
    redirect_to index_post_path, notice: '更新しました'
   else
     render :edit, status: :unprocessable_entity
   end
   
 end

 def add
  @posts = Post.where(id: params[:selected_posts])
  @posts.each do |post|
    post.update(add: 1)
 end

 def toggle
  @post = Post.find(params[:id])
  @post.update(add: 0)
  redirect_to index_post_path 
 end


 def home
  redirect_to tabletennis_index_path
 end
 




end

  
  


     

 private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
  
end




