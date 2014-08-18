require "rails_helper"

RSpec.describe RegistrantsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/registrants").to route_to("registrants#index")
    end

    it "routes to #new" do
      expect(:get => "/registrants/new").to route_to("registrants#new")
    end

    it "routes to #show" do
      expect(:get => "/registrants/1").to route_to("registrants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/registrants/1/edit").to route_to("registrants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/registrants").to route_to("registrants#create")
    end

    it "routes to #update" do
      expect(:put => "/registrants/1").to route_to("registrants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/registrants/1").to route_to("registrants#destroy", :id => "1")
    end

  end
end
