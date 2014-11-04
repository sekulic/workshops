module ApplicationHelper
  def check_isadmin?
    unless current_user.try(:admin?)
      redirect_to new_user_session_path
    end
  end
  def description_substring(description)
    if description.length > 15
    "#{description[0..15]} ..."
    else
    "#{description}"
    end
  end  
end
