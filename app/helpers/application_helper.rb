module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "TKWA Database"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  # highlight link in topbar for current page
  def cp(path)
  	" class='active'" if current_page?(path)
  end


end
