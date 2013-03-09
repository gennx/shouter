module UsersHelper
  def user_view user
    #html = ""
    #html << "<div class='user'>"
    #html << "<p>#{user.email}</p>"
    #html << "<p>#{user.username}</p>"
    #html << " <p>#{time_ago_in_words user.created_at} ago</p>"
    #html << "#{image_tag user.profile_image_url :thumb}" if user.profile_image?
    #html << "#{link_to 'Follow', follow_follow_path(user)}"
    #html << "#{link_to 'Unfollow', unfollow_follow_path?(user)}"
    #html << "</div>"
    #html.html_safe
    render partial: "users/user", locals: {user: user}
  end
end
