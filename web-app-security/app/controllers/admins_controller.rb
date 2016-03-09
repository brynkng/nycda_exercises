class AdminsController < ApplicationController

  def index
    if admin?
      @posts = Post.all
      @users = User.all
    else
      redirect_to '/users/'
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def login_form
    
  end

  def login
    admin = Admin.find_by(email: params[:email])

    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to "/admins"
    else
      redirect_to "/users"
    end
  end
end
