require 'rails_helper'

RSpec.describe "jobbers/index", :type => :view do
  before(:each) do
    assign(:jobbers, [
      Jobber.create!(
        :person => nil
      ),
      Jobber.create!(
        :person => nil
      )
    ])
  end

  it "renders a list of jobbers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
