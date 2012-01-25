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

  def sel(path)
    " class='sel'" if current_page?(path)
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association, html_class)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, [new_object], :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, '#{association}', '#{escape_javascript(fields)}')", html_options={ :class => html_class })
  end


end
