class NameList
  def initialize
    @names = []
  end
  
  def store_name(name)
    @names.push(name)
    "#{name} stored in list"
  end

  def list_names
    @names
  end
end