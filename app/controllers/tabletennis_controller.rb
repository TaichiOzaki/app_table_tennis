class TabletennisController < ApplicationController
    before_action :authenticate_user!

    def home
        redirect_to index_post_path
    end
    
    def time_index
        redirect_to time_index_path
    end

    

end