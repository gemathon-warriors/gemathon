class HomeController < ApplicationController

  protect_from_forgery :except => [:twitter]

  def index
    @team_member_names = {
      'ashish'   => "Programming is like sex. One mistake and you have to support it for the rest of your life.”",
      'gourav'   => "When debugging, novices insert corrective code; experts remove defective code",
      'nikhil'   => "Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.",
      'ankur'    => "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.",
      'hrishita' => "Measuring programming progress by lines of code is like measuring aircraft building progress by weight."
    }
  end

  def spicon_gem

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
