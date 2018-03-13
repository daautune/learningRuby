module ApplicationHelper
  def setting_title title
    # if "#{title}".empty?
    #   my_title = "beautiful | My pages"
      # binding.pry
      title = "INSAL" if title.empty?
    # else 
      my_title = "#{title} | My pages"
  end
  def change_name
    name = "Ten toi la: Tien Animal ahihi :)"
    if current_page?(:controller => "static_pages", :action => "help")
      result = ""
      name.split("").reverse.each do |i|
        result = result + "#{i}"
      end
      return result
    elsif current_page?(:controller => "static_pages", :action => "about") 
      return name
    end
  end
end
# end
