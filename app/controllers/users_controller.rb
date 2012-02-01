class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  def show
  
    @user = User.find(params[:id])
    @post = Post.new
    @comment = Comment.new
  end

  def destroy
    if @user = User.find_by_id(params[:id])
      @user.delete
    end
    flash[:notice] = "Utilisateur supprime"
    redirect_to :root
  end
  
  def createpost
    @post = Post.new(params[:post])
    @post.created_at = DateTime.now
    @post.owner = current_user
    @post.reciever = User.find(params[:id])
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
