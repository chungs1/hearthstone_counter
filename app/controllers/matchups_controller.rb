class MatchupsController < ApplicationController
  def thumbsup
    @matchup = Matchup.where("strong_id" => params["strong_id"], "weak_id" => params["weak_id"]).first

    @matchup.thumbs_up = @matchup.thumbs_up+1
    @matchup.save
    render :json => @matchup
  end

  def thumbsdown
    @matchup = Matchup.where("strong_id" => params["strong_id"], "weak_id" => params["weak_id"]).first

    @matchup.thumbs_down = @matchup.thumbs_down+1
    @matchup.save
    render :json => @matchup
  end

end
