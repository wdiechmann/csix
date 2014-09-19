require 'rails_helper'

RSpec.describe "jobbers/show", :type => :view do
  before(:each) do
    @jobber = assign(:jobber, Jobber.create!(
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
