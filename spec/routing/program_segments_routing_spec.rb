require "rails_helper"

RSpec.describe ProgramSegmentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/program_segments").to route_to("program_segments#index")
    end

    it "routes to #new" do
      expect(:get => "/program_segments/new").to route_to("program_segments#new")
    end

    it "routes to #show" do
      expect(:get => "/program_segments/1").to route_to("program_segments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/program_segments/1/edit").to route_to("program_segments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/program_segments").to route_to("program_segments#create")
    end

    it "routes to #update" do
      expect(:put => "/program_segments/1").to route_to("program_segments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/program_segments/1").to route_to("program_segments#destroy", :id => "1")
    end

  end
end
