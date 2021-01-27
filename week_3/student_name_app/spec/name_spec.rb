require 'names_list'

describe NameList do
  it "notfies the user when a name is stored" do
    names_list = NameList.new
    expect(names_list.store_name("Jeremy")).to eq "Jeremy stored in list"
  end
end

describe NameList do
  it "can store any name and tell the user which name was stored" do
    names_list = NameList.new
    expect(names_list.store_name("Bartholemew")).to eq "Bartholemew stored in list"
  end
end

describe "the list_names method" do
  it "gives the user the list of names in the list" do
    names_list = NameList.new
    names_list.store_name("Florence")
    expect(names_list.list_names).to eq ["Florence"]
  end
end


describe "the store_name method" do
  it "can list several names after the store_name method is used to store them" do
    names_list = NameList.new
    names_list.store_name("Brad")
    names_list.store_name("Zac")
    names_list.store_name("Chris")
    expect(names_list.list_names).to eq ["Brad", "Zac", "Chris"]
  end
end