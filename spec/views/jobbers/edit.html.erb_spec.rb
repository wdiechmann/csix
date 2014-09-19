require 'rails_helper'

RSpec.describe "jobbers/edit", :type => :view do
  before(:each) do
    @jobber = assign(:jobber, Jobber.create!(
      :person => nil
    ))
  end

  it "renders the edit jobber form" do
    render

    assert_select "form[action=?][method=?]", jobber_path(@jobber), "post" do

      assert_select "input#jobber_person_id[name=?]", "jobber[person_id]"
    end
  end
end
