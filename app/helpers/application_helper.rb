module ApplicationHelper

  def navigation(page_navigation)
    content_for(:navigation) { page_navigation }
  end

  def body_class(page_body_class)
    content_for(:body_class) { page_body_class }
  end

end
