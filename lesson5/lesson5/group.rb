class Group
  def initialize(*users)
    @users = users.to_a
  end

  def to_s
    users_str = @users.map(&:full_name).join("\n")
    "User group:\n#{users_str}"
  end
end
