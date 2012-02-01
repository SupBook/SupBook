class InvitationController < ApplicationController

  def new

  end

  def create

    InviteUser.invite_friend(params[:email]).deliver

  end

end
