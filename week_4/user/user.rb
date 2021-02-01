class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end
  
  private

  def birth_year
    Time.new.year - @age
  end

end

class UserAccount
  def initialize
    @account = User.new('Jeremy Johnson', 'Coding enthusiast', 34, 'password1')
  end

  def authenticate(candidate_password)
    return true if candidate_password == @account.password
  end
end