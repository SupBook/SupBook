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
    
  end

  def destroy
    if @user = User.find_by_id(params[:id])
      @user.delete
    end
    flash[:notice] = "Utilisateur supprime"
    redirect_to :root
  end
end
