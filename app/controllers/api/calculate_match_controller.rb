class Api::CalculateMatchController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create

    def calculate_tips 

      tip = Tip.where(match_id: params[:match_id])
      tip.each do |line|
        #todo
        TipResult.create(match_id: line.match_id
                         , player_id: line.player_id
                         , yen_tip: line.tip * 500)
      end

     tip_result = TipResult.where(match_id: params[:match_id])

     render :json => tip_result
     #render :nothing => true

   end

   def calculate_hanchans 

     hanchan = Hanchan.where(match_id: params[:match_id])
     num_players = hanchan.count / hanchan.count(hanchan_id :distinct) 
     num_hanchans = hanchan.select("hanchan_id").uniq

     # １半荘ごとに計算
     num_hanchans.each do |i|
       num_yakitori = hanchan.where(hanchan_id: i.hanchan_id, is_baked: true).count
       case num_yakitori
         when 1 
           plus_yakitori = 3000
           minus_yakitori = 3000 / (num_playes - num_yakitori)
         when 2 then plus_yakitori = 1500
         when 3 then plus_yakitori = 1000

       when 
                          num_players
                        end
       # １人に計算
       hanchan.where(hanchan_id: i.hanchan_id) do |line|
         HanchanResult.create(match_id: line.match_id
                              , player_id: line.player_id
                              , yen_points: (30000 - line.point) / 10
                              , yen_yakitori: 
                              , yen_tobi: line.is_flied * 3000 + line.is_flying * 3000
                              , yen_uma: )
       end
     end

   end

  end

end
