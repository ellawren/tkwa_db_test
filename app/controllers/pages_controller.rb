class PagesController < ApplicationController
  def home
  	@title = "Home"
  end

  def projects
  	@title = "Projects"
  end

  def contacts
  	@title = "Contacts"
  end

  def patterns
  	@title = "Patterns"
  end

  def timesheets
  	@title = "Timesheets"
  end

end
