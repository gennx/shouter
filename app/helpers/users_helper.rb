module UsersHelper
  def user_view user
    html = ""
    html << "<div class='user'>"
    html << "<p>#{user.email}</p>"
    html << "<p>#{user.username}</p>"
    html << " <p>#{time_ago_in_words user.created_at} ago</p>"
    html << "</div>"
    html.html_safe
  end
end
