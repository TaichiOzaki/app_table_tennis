class Practice_contentController < ApplicationController
    def selected
        @selected_practice_contents = PracticeContent.includes(:tabletennistime).where(add: 1)
    end

end