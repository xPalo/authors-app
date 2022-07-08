class UsersMailer < ApplicationMailer

  def like(user, author, book)
    @user = user
    @author = author
    @book = book
    mail(to: @user.email, subject:"Review Like")
  end

end