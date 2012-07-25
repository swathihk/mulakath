class UserController < ApplicationController
  layout :choose_layout
  def choose_layout
    return 'dashboard' if action_name == 'profile'
    return 'dashboard' if action_name == 'member_profile'
    return 'dashboard' if action_name == 'photo'
  end
  def profile
    @current_user_id=Users.find_by_id(session[:user_id])
  end
  def member_profile
    @mem_profile=Users.find_by_id(params[:id])
  end

  def photo
    #logger.info("----------#{session[:user_id]}============")
    if request.post?
      @album=Album.new(params[:album])


#@album_check=Album.find_by_users_id_and_profile_picture(session[:user_id],true)
     # if (@album_check.profile_picture==true)
        #@album_check.update_attributes(:profile_picture=>false)
        #@album.users_id=session[:user_id]
        #@album.profile_picture=false
        #@album.save
       # redirect_to :controller=>"user",:action=>"profile"
      #else

        @album.users_id=session[:user_id]
        #@album.profile_picture=false
        @album.save

        logger.info("yessssssssssssssssssssss")
        redirect_to :controller=>"user",:action=>"profile"
      #end
    end
  end
  def profile_sss

  end
end

