class LoginController < ApplicationController
  def log_in
    @status_id=true
    if request.post?

      if params[:login][:email].blank? && params[:login][:password].blank?
        flash.now[:error] = "Please Sign Up Before Login"
      else
        @user = Users.new(params[:login])
        user = Users.find_by_email @user.email

        logger.info("----------#{user.inspect}------------")
        if user and Users.authenticate?(@user.email, @user.password)
          session[:user_id] = user.id
          user.update_attributes(:status=>true)
          #logger.info"mahiya#{session[:user_id].inspect}"
          flash[:notice] = "Welcome, #{user.username}!"
          redirect_to  :controller=>'posts',:action => 'index'
        else
          flash[:notice] = 'Invalid email or password combination'
        end
      end

    end
  end
  def sign_up
    @role_id=1
    @status_id=false
    @login=Users.new(params[:signup])
    if request.post?
      @gen=params[:signup][:gender]
      if @gen=="Male"
        @login.gender=true
      else
        @login.gender=false
      end
      @login.save
      redirect_to  :action => 'log_in'
    end
  end

  def logout
    @stat_value= Users.find(params[:id])
    @stat_value.update_attributes(:status=>false)
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to  :controller=>'login',:action => 'log_in'
  end

end
