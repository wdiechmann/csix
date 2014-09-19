require 'rails_helper'

RSpec.describe "Jobbers", :type => :request do
  describe "GET /jobbers" do
    it "works! (now write some real specs)" do
      get jobbers_path
      expect(response).to have_http_status(200)
    end
  end
end
