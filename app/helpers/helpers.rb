class Helpers
  def current_user(sessions_hash)
    binding.pry
    User.find_by_id(sessions_hash[:user_id])
  end
  def is_logged_in?(sessions_hash)
    # binding.pry
    !!sessions_hash[:user_id]
  end
end
