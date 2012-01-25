module ProjectsHelper

	def is_active?(page_name)
      "sel" if params[:action] == page_name
    end


end
