require 'rails_helper'

RSpec.describe "jobbers/new", :type => :view do
  before(:each) do
    assign(:jobber, Jobber.new(
      :person => nil
    ))
  end

  it "renders new jobber form" do
    render

    assert_select "form[action=?][method=?]", jobbers_path, "post" do

      assert_select "input#jobber_person_id[name=?]", "jobber[person_id]"
    end
  end
end
