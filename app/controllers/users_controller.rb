class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.where(user_id: current_user.id)
    @book = Book.new
  end
end
