class SearchController < ApplicationController
  def index 
    @members = SearchFacade.members_by_nation(params[:nation]) 
    require 'pry'; binding.pry
  end
end