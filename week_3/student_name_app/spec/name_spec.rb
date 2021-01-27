require 'names_list'

describe "the store_name method" do
  it "notfies the user when a name is stored" do
    expect(store_name("Jeremy")).to eq "Jeremy stored in list"
  end

  it "can store any name and tell the user which name was stored" do
    expect(store_name("Bartholemew")).to eq "Bartholemew stored in list"
  end
end

describe "the list_names method" do
  it "gives the user the list of names in the list" do
    store_name("Florence")
    expect(list_names).to eq ["Florence"]
  end

  it "can list several names after the store_name method is used to store them" do
    store_name("Brad")
    store_name("Zac")
    store_name("Chris")
    expect(list_names).to eq ["Brad", "Zac", "Chris"]
  end
end