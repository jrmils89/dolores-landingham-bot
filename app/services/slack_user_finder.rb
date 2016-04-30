class SlackUserFinder < SlackApiWrapper
  def existing_user?
    !slack_user.nil?
  end

  def user_id
    if !slack_user.nil?
      slack_user["id"]
    end
  end

  def users_list
    all_slack_users
  end
end
