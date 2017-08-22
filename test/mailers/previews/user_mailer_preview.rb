class UserMailerPreview < ActionMailer::Preview

  default :from => "noreply@allora.chat"

  def welcome
    user = User.first
    UserMailer.welcome(user)
  end

   def new_edition(user)
   @user = user

   mail(to: user.email, subject: 'Your new edition has been released')
   # This will render a view in `app/views/user_mailer`!
 end
end
