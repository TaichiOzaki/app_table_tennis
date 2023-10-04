class TabletennisController < ApplicationController
    before_action :authenticate_user!


    def home
        redirect_to index_post_path
    end
    
    def time_index
        redirect_to time_index_path
    end

    def index
        @tabletennistimes = Tabletennistime.all
    end

    def create
        @tabletennistime = Tabletennistime.new(tabletennistime_params)
        if @tabletennistime.save
          redirect_to time_index_path, notice: "記録が保存されました"
        else
          render :new
        end
    end
    
    private
    def tabletennistime_params
        params.require(:tabletennistime).permit(:date, :hour, :minutes)
    end


end