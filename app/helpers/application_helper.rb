module ApplicationHelper

  def current_class?(test_path)
    return 'active fw-light lh-sm' if request.path == test_path
    ''
  end

end