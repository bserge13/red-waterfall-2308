class SearchController < ApplicationController
  def index 
    @members = SearchFacade.members_by_nation(params[:nation]) 
    @nation = params[:nation]
  end
end