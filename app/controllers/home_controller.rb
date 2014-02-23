class HomeController < ApplicationController

  protect_from_forgery :except => [:twitter]

  def index
    @team_member_names = Dir.glob("#{Rails.root}/app/assets/assets/images/team_member/*").shuffle
    @gems = Library.all.shuffle
  end

  def spicon_gem
    @classes = ["spicon-3s-6-normal", "spicon-3s-6-alternate","spicon-3s-6-reverse","spicon-4s-2-alternate_reverse"]
  end

  def tareek

  end


  #work on this later
  def twitter
    # config = {
    #   :consumer_key    => "",
    #   :consumer_secret => "",
    # }

    # client = Twitter::REST::Client.new(config)

    # tweets = collect_with_max_id do |max_id|
    #   options = {:count => 200, :include_rts => true}
    #   options[:max_id] = max_id unless max_id.nil?
    #   client.user_timeline("_zapper320", options)
    # end

    render nothing: true
  end

  # def collect_with_max_id(collection=[], max_id=nil, &block)
  #   response = yield max_id
  #   collection += response
  #   response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
  # end

end
