class InviteUser < ActionMailer::Base
  default from: "invite@supbook.com"


  def invite_friend(email)
      #@user = user
      @url =  "http://supbook.com/login"
    mail(:to => email, :subject => "Come to SupBook")

  end


end
