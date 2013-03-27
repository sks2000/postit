module ApplicationHelper
  def format_url(url)
  	return url if url.blank?
    if url.starts_with?('http://')
      return url
    else
      return 'http://' + url 
    end
  end

  def get_link(post)
    
  end
end
