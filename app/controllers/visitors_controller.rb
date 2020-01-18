class VisitorsController < ApplicationController
    def new
        Rails.logger.debug 'DEBUG: entering new method'
        @owner = Owner.new
        flash.now[:notice] = 'Welcome!'
        flash.now[:alert] = 'My birthday is soon.'
        Rails.logger.debug 'DEBUG: Owner name is ' + @owner.name
        # raise 'GIBBS FAILURE'
    end
end