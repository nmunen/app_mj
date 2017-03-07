class Api::CalculateMatchController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create

    def calculate_tips 

      tip_rate = 500

      tip = Tip.where(match_id: params[:match_id])
      tip.each do |line|
        #todo
        TipResult.create(match_id: line.match_id
                         , player_id: line.player_id
                         , yen_tip: line.tip * tip_rate) 
      end

     tip_result = TipResult.where(match_id: params[:match_id])

     render :json => tip_result
     #render :nothing => true

   end

   def calculate_hanchans 

     hanchan = Hanchan.where(match_id: params[:match_id])
     num_players = hanchan.count / hanchan.count(hanchan_id :distinct) 
     num_hanchans = hanchan.select("hanchan_id").uniq

     # １半荘ごとに計算(半荘IDをキーにループ)
     num_hanchans.each do |i|

       # todo パラメータ化
       kaeshi_point = 30000
       yakitori_point = 3000
       tobi_point = 3000
       point_rate = 0.1

       # 一人づつ計算
       hanchan.where(hanchan_id: i.hanchan_id) do |line|

         ## player_id
         player_id = line.player_id

         ## point
         yen_point = (kaeshi_point - line.point) * point_rate

         ## yakitori
         # 3000の場合
         # 4ma : 一人勝ち 3000   - 1000*3 二人勝ち 1500*2 - 1500* 三人勝ち 1000*3 - 3000
         # 3ma : 一人勝ち 3000   - 1500*2 二人勝ち 1500*2 - 3000
         num_yakitori = hanchan.where(hanchan_id: i.hanchan_id, is_baked: true).count
         plus_yakitori = yakitori_point / num_yakitori
         minus_yakitori = yakitori_point / (num_players - num_yakitori)
         yen_yakitori = line.is_baked ? plus_yakitori_point * point_rate : minus_yakitori_point * point_rate

         ## tobi
         yen_tobi = (line.is_flied * tobi_point - line.is_flying * tobi_point) * point_rate

         ## umaoka
         # 30000返しの1-3の場合
         # 4ma : 一位 20000+30000 二位 10000 三位 -10000 四位 -30000
         # 3ma : 一位 15000+30000 二位 0     三位 -30000
         if num_players == 3
           yen_umaoka = 
           case rank 
           when 1 then (kaeshi_point - base_point) * num_players + 30000
           when 2 then 0
           when 3 then -30000
           else raise error
           end
         elsif num_players == 4
           yen_umaoka = 
           case rank 
           when 1 then (kaeshi_point - base_point) * num_players + 30000
           when 2 then 10000
           when 3 then -10000
           when 4 then -30000
           else raise error
           end
         else
           #todo
           raise error
         end

         ## total
         yen_total =  yen_points + yen_yakitori + yen_tobi + yen_umaoka

         HanchanResult.create(hanchan_id: hanchan_id
                              , player_id: player_id
                              , yen_points: yen_points
                              , yen_yakitori: yen_yakitori
                              , yen_tobi: yen_tobi
                              , yen_umaoka: yen_umaoka
                              , yen_total: yen_total)
       end
     end

   end

  end

end
