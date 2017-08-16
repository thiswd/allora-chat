class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Bem vindo ao Allora')
    # This will render a view in `app/views/user_mailer`!
  end

  # def new_edition(user)
  #   @user = user
  #   mail(to: @user.email, subject: 'Your new edition has been released')
  #   # This will render a view in `app/views/user_mailer`!
  # end
end
