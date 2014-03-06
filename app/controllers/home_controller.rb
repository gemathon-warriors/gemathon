class HomeController < ApplicationController

  protect_from_forgery :except => [:twitter]

  layout 'application', :except => :gem_info

  def index
    @team_member_names = Dir.glob("#{Rails.root}/app/assets/assets/images/team_member/*").shuffle
    @gems = Library.all.shuffle
  end

  def gem_info
    @info = JSON.parse(RestClient.get("https://rubygems.org/api/v1/gems/#{params[:gem_name].downcase}.json"))
    render partial: 'gem_popover_description'
  end

  #work on this later
  def twitter
    render nothing: true
  end
end
