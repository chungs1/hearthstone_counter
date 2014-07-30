class MatchupsController < ApplicationController
  def thumbsup
    @matchup = Matchup.where("strong_id" => params["strong_id"], "weak_id" => params["weak_id"]).first

    @matchup.thumbs_up = @matchup.thumbs_up+1
    @matchup.save
    render {:nothing => true, :upcount => @matchup.thumbs_up, :strong => @matchup.strong_id, :weak => @matchup.weak_id }
  end

  def thumbsdown
    @matchup = Matchup.where("strong_id" => params["strong_id"], "weak_id" => params["weak_id"]).first

    @matchup.thumbs_down = @matchup.thumbs_down+1
    @matchup.save
    render :nothing => true
  end

end
