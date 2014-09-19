require "rails_helper"

RSpec.describe JobbersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jobbers").to route_to("jobbers#index")
    end

    it "routes to #new" do
      expect(:get => "/jobbers/new").to route_to("jobbers#new")
    end

    it "routes to #show" do
      expect(:get => "/jobbers/1").to route_to("jobbers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jobbers/1/edit").to route_to("jobbers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jobbers").to route_to("jobbers#create")
    end

    it "routes to #update" do
      expect(:put => "/jobbers/1").to route_to("jobbers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jobbers/1").to route_to("jobbers#destroy", :id => "1")
    end

  end
end
