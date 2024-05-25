class AnalyticController < ApplicationController
  def index
    @queries = Query.all.group_by(&:user_ip)
    # top queries should return search and the number of time it was searched
    # Query has a search column and a user_ip column
    @top_queries = Query.all.group(:search).count
  end
end
