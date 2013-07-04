module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end
  
  	def resource_name
      :user
  	end
 
  	def resource
      @resource ||= User.new
  	end
 
  	def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
  	end
  	
  	def resource_class
      devise_mapping.to
    end
  
  def copyright_year
	current_year = Time.new.year 
  end
  
  def url_for(options = nil)
    if Hash === options
      options[:protocol] ||= 'http'
    end
    super(options)
  end

end
