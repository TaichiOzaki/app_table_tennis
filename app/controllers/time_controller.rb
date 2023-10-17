class TimeController < ApplicationController
    before_action :authenticate_user!

    def index
        @tabletennistimes = Tabletennistime.all
    end
    
    def destroy
        @tabletennistime = Tabletennistime.find(params[:id])
        if @tabletennistime
          @tabletennistime.destroy
          redirect_to time_index_path, notice: '時間が削除されました。'
        else
          redirect_to time_index_path, alert: '時間が見つかりません。'
        end
    end
    
    
    

end