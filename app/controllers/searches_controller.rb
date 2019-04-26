class SearchesController < ApplicationController

    def new

        @levels = Level.all.collect { |m| [m.name, m.id] }
        @search = Search.new
        
    end
    def create

        @search = Search.create(search_params)
        redirect_to @search
    end
    def show
        @assignment = Assignment.all
           @search = Search.find(params[:id])
    end

    def search_params
        params.require(:search).permit(:keywords, :title, :min_date,  :level_id, :max_date,)
      end
end
