require 'rails_helper'

RSpec.describe "addresses/edit", :type => :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street => "MyString",
      :zipcode => "MyString",
      :city => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_street[name=?]", "address[street]"

      assert_select "input#address_zipcode[name=?]", "address[zipcode]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_country[name=?]", "address[country]"
    end
  end
end
