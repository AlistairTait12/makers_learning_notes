class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def get_info
    
  end
end

class UserAccount
  def initialize
    @account = User.new
  end

  def authenticate(candidate_password)
    
  end
end