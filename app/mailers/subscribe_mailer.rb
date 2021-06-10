class SubscribeMailer < ApplicationMailer
  default from: "ddzk@bk.ru"
  layout "mailer"

  def subscribe_email
      # users = UsersController.index
      # users.each  do |user|
      @user = params[:user]
      mail(to: @user.email, subject: "Новый пост", cc: "BlogingBlog")
      # end
  end

  def welcome_email
      @user = params[:user]
      @url = 'http://localhost:3000/posts'
      mail(to: @user.email, subject: 'Вы зарегестрированы в BlogingBlog!')
    end
end
