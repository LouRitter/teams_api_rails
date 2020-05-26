class HomeController < ApplicationController
  def index
      @meetings = Meeting.all
    if user_signed_in?
  		@teams = Team.where('name = ?', current_user.team_name)
    end
  end
end
