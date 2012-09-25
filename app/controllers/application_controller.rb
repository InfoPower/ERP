class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :mainmenu
  def mainmenu
    @pagename = Page.find(1).name
    @nextpages = Page.find_by_parent_id(1)
  end
end
