class InvitationController < ApplicationController

  def new

  end

  def create

    raise email
    InviteUser.invite_friend(email).deliver

  end

end
