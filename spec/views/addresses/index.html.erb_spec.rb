require 'rails_helper'

RSpec.describe "addresses/index", :type => :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street => "Street",
        :zipcode => "Zipcode",
        :city => "City",
        :country => "Country"
      ),
      Address.create!(
        :street => "Street",
        :zipcode => "Zipcode",
        :city => "City",
        :country => "Country"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
