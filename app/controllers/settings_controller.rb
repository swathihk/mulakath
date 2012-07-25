class SettingsController < ApplicationController
  layout :choose_layout
  def choose_layout
    # return 'dashboard' if action_name == 'profile'
    return 'dashboard' if action_name == 'index'
  end
  def index
  @members=Users.find(:all,:conditions=>:username!='admin')
    if request.post?
      @setting=Setting.new(params[:sett])
      @setting.save
    end
  end
end
