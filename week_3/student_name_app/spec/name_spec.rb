require 'names_list'

describe "the store_name method" do
  it "notfies the user when a name is stored" do
    expect(store_name("Jeremy")).to eq "Jeremy stored in list"
  end
end