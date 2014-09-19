require 'rails_helper'

RSpec.describe "addresses/new", :type => :view do
  before(:each) do
    assign(:address, Address.new(
      :street => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :country => "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_street[name=?]", "address[street]"

      assert_select "input#address_zipcode[name=?]", "address[zipcode]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_country[name=?]", "address[country]"
    end
  end
end
