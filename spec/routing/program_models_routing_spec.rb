require "rails_helper"

RSpec.describe ProgramModelsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/program_models").to route_to("program_models#index")
    end

    it "routes to #new" do
      expect(:get => "/program_models/new").to route_to("program_models#new")
    end

    it "routes to #show" do
      expect(:get => "/program_models/1").to route_to("program_models#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/program_models/1/edit").to route_to("program_models#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/program_models").to route_to("program_models#create")
    end

    it "routes to #update" do
      expect(:put => "/program_models/1").to route_to("program_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/program_models/1").to route_to("program_models#destroy", :id => "1")
    end

  end
end
