class ApplicationController < ActionController::Base
  layout "pages"
  protect_from_forgery
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    #make a user instance, based on the passed in params
    @user = User.new params[:user]
    #attempt to save the user instance above
 
    #
    #when the save succeeds, show the newly created user, display a success notice
    if @user.save
      redirect_to @user, notice: "User was saved successfully!"
    else
      #render the new action again
    end  
  end
  def show
    @user = User.find params[ :id]
    
  end  
end
