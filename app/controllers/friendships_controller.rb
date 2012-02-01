class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @friendship.is_valided = false

    respond_to do |format|
      if @friendship.save
        format.html { redirect_to(current_user, :notice => t("friendships.controller.addOk")) }
        format.xml  { render :xml => current_user, :status => :created, :location => @friendship }
      else
        format.html { redirect_to(current_user, :error => t("friendships.controller.addNotOk")) }
        format.xml  { render :xml => current_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def accept
    @friendship = current_user.inverse_friendships.where(:user_id => params[:user_id]).first
    @friendship.is_valided = true
    respond_to do |format|
      if @friendship.save
        format.html { redirect_to(current_user, :notice => t("friendships.controller.addOk")) }
        format.xml  { render :xml => current_user, :status => :created, :location => @friendship }
      else
        format.html { redirect_to(current_user, :error => t("friendships.controller.addNotOk")) }
        format.xml  { render :xml => current_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @friendship = current_user.friendships.find_by_id(params[:id])
    if @friendship.nil?
      @friendship = current_user.inverse_friendships.find_by_id(params[:id])
    end
    @friendship.destroy

    respond_to do |format|
      format.html { redirect_to(current_user, :notice => t("friendships.controller.removeOk")) }
      format.xml  { head :ok }
    end
  end
end
