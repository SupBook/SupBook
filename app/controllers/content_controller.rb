class ContentController < ApplicationController
  def search_result
    @q = User.search(params[:q])
    @people = @q.result(:distinct => true)
  end

  def home
  end
end
