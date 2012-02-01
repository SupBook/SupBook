class UsersController < ApplicationController
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
