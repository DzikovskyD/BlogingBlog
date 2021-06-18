class SubscribeMailer < ApplicationMailer
  default from: "ddzk@bk.ru"
  layout 'mailer'

  def subscribe_email
      @user = params[:user]
      mail(to: @user.email, subject: "Новый пост", cc: "BlogingBlog")
  end

  def welcome_email
      @user = params[:user]
      @url = 'http://localhost:3000/posts'
      mail(to: @user.email, subject: 'Вы зарегестрированы в BlogingBlog!')
  end

  def digest
    @user = params[:user]
    @interval = params[:interval]
    @posts = PostsController.get_by_interval(@interval)
    @url = 'http://localhost:3000/posts'
    mail(to: @user.email, subject: 'Дайджест!')
  end

end
