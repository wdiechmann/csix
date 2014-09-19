require 'rails_helper'

RSpec.describe "addresses/show", :type => :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street => "Street",
      :zipcode => "Zipcode",
      :city => "City",
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
  end
end
