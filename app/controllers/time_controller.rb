class TimeController < ApplicationController
    before_action :authenticate_user!

    def index
        @tabletennistimes = Tabletennistime.all
    end
      



end